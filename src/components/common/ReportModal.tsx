import React, { useMemo, useState } from "react";
import { supabase } from "@/integrations/supabase/client";
import Modal from "@/components/common/Modal";
import { Button } from "@/components/ui/button";
import { Label } from "@/components/ui/label";
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "@/components/ui/select";
import { Textarea } from "@/components/ui/textarea";
import { useToast } from "@/hooks/use-toast";
import { useAuth } from "@/contexts/useAuth";
import { generateSecureSessionId } from "@/utils/authUtils";
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";
import { logger } from "@/utils/silentLogger";

type ReportTargetType = "announcement" | "shop" | "job_offer";

interface ReportModalTarget {
  type: ReportTargetType;
  id: string;
  globalNumber?: number | null;
  ownerUserId?: string | null;
  title?: string | null;
  wilaya?: string | null;
}

interface ReportModalProps {
  open: boolean;
  onClose: () => void;
  target: ReportModalTarget;
}

const REPORT_SESSION_STORAGE_KEY = "aladdin_report_session_id";

function getOrCreateClientSessionId(): string {
  const existing = localStorage.getItem(REPORT_SESSION_STORAGE_KEY);
  if (existing && existing.length >= 10 && existing.length <= 100 && !/[<>"';&]/.test(existing)) {
    return existing;
  }

  const next = generateSecureSessionId();
  localStorage.setItem(REPORT_SESSION_STORAGE_KEY, next);
  return next;
}

const ReportModal: React.FC<ReportModalProps> = ({ open, onClose, target }) => {
  const { toast } = useToast();
  const { user } = useAuth();
  const { t } = useSafeI18nWithRouter();
  const [reason, setReason] = useState<string>("");
  const [details, setDetails] = useState<string>("");
  const [submitting, setSubmitting] = useState(false);

  const reasonOptions = useMemo(
    () => [
      { value: "illegal", label: t("report.reasons.illegal") },
      { value: "inappropriate", label: t("report.reasons.inappropriate") },
      { value: "spam", label: t("report.reasons.spam") },
      { value: "fraud", label: t("report.reasons.fraud") },
      { value: "copyright", label: t("report.reasons.copyright") },
      { value: "other", label: t("report.reasons.other") },
    ],
    [t]
  );

  const reset = () => {
    setReason("");
    setDetails("");
  };

  const handleClose = () => {
    reset();
    onClose();
  };

  const submit = async () => {
    if (!reason) {
      toast({
        title: t("profile.error"),
        description: t("report.reasonRequired"),
        variant: "destructive",
      });
      return;
    }

    if (!target?.id || !target?.type) {
      toast({
        title: t("profile.error"),
        description: t("messages.errorSending"),
        variant: "destructive",
      });
      return;
    }

    try {
      setSubmitting(true);

      const clientSessionId = getOrCreateClientSessionId();
      const trimmedReason = reason.substring(0, 100);
      const trimmedDetails = details.trim().substring(0, 2000);

      const { error } = await supabase.from("reports").insert({
        reporter_user_id: user?.id ?? null,
        client_session_id: clientSessionId,
        target_type: target.type,
        target_id: target.id,
        target_global_number: typeof target.globalNumber === "number" ? target.globalNumber : null,
        target_owner_user_id: target.ownerUserId ?? null,
        target_title: target.title ?? null,
        target_wilaya: target.wilaya ?? null,
        reason: trimmedReason,
        details: trimmedDetails || null,
      });

      if (error) {
        logger.warn("Report creation failed:", error);
        toast({
          title: t("profile.error"),
          description: t("messages.errorSending"),
          variant: "destructive",
        });
        return;
      }

      toast({
        title: t("createAd.report.title"),
        description: t("report.success"),
      });
      handleClose();
    } finally {
      setSubmitting(false);
    }
  };

  return (
    <Modal isOpen={open} onClose={handleClose} title={t("report.title")} size="md">
      <div className="space-y-4">
        <div className="space-y-2">
          <Label>{t("report.reason")}</Label>
          <Select value={reason} onValueChange={setReason}>
            <SelectTrigger>
              <SelectValue placeholder={t("report.selectReason")} />
            </SelectTrigger>
            <SelectContent>
              {reasonOptions.map((opt) => (
                <SelectItem key={opt.value} value={opt.value}>
                  {opt.label}
                </SelectItem>
              ))}
            </SelectContent>
          </Select>
        </div>

        <div className="space-y-2">
          <Label>{t("report.description")}</Label>
          <Textarea
            value={details}
            onChange={(e) => setDetails(e.target.value)}
            placeholder={t("report.descriptionPlaceholder")}
            rows={6}
          />
        </div>

        <div className="flex justify-end gap-2">
          <Button variant="outline" onClick={handleClose} disabled={submitting}>
            {t("createAd.cancel")}
          </Button>
          <Button onClick={submit} disabled={submitting}>
            {t("report.submit")}
          </Button>
        </div>
      </div>
    </Modal>
  );
};

export default ReportModal;
