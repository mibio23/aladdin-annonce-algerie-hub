# Script de téléchargement des images de catégorie pour Aladdin
# Ce script permet de télécharger des images depuis Unsplash en contournant les restrictions de User-Agent

$Images = @(
    @{
        Url = "https://images.unsplash.com/photo-1490481651871-ab68de25d43d?q=80&w=800"
        File = "public/assets/images/categories/mode-et-accessoires-1.jpg"
        Description = "Mode Femme (avec lunettes)"
    },
    @{
        Url = "https://images.unsplash.com/photo-1573408301185-9146fe634ad0?q=80&w=800"
        File = "public/assets/images/categories/mode-et-accessoires-2.jpg"
        Description = "Bijoux / Accessoires"
    },
    @{
        Url = "https://images.unsplash.com/photo-1524592094714-0f0654e20314?q=80&w=800"
        File = "public/assets/images/categories/mode-et-accessoires-3.jpg"
        Description = "Montre de luxe"
    },
    @{
        Url = "https://images.unsplash.com/photo-1541643600914-78b084683601?q=80&w=800"
        File = "public/assets/images/categories/mode-et-accessoires-4.jpg"
        Description = "Parfum"
    },
    @{
        Url = "https://images.unsplash.com/photo-1617137984095-74e4e5e3613f?q=80&w=800"
        File = "public/assets/images/categories/vetement-homme-femme-sous-vetement-1.jpg"
        Description = "Vêtement Homme (Costume/Chemise)"
    },
    @{
        Url = "https://images.unsplash.com/photo-1567401893414-76b7b1e5a7a5?q=80&w=800"
        File = "public/assets/images/categories/vetement-homme-femme-sous-vetement-2.jpg"
        Description = "Vêtement Femme (Robe/Mode)"
    },
    @{
        Url = "https://images.unsplash.com/photo-1582533561751-ef6f6ab93a2e?q=80&w=800"
        File = "public/assets/images/categories/vetement-homme-femme-sous-vetement-3.jpg"
        Description = "Sous-vêtements / Homewear"
    },
    @{
        Url = "https://images.unsplash.com/photo-1445205170230-053b83016050?q=80&w=800"
        File = "public/assets/images/categories/vetement-homme-femme-sous-vetement-4.jpg"
        Description = "Mode / Accessoires Habillement"
    }
)

Write-Host "Début du téléchargement des images de catégorie..." -ForegroundColor Cyan

foreach ($Image in $Images) {
    Write-Host "Téléchargement de : $($Image.Description)..." -NoNewline
    try {
        Invoke-WebRequest -Uri $Image.Url -OutFile $Image.File -UserAgent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36" -ErrorAction Stop
        Write-Host " [OK]" -ForegroundColor Green
    } catch {
        Write-Host " [ERREUR]" -ForegroundColor Red
        Write-Error "Impossible de télécharger $($Image.Url) : $_"
    }
}

Write-Host "Téléchargement terminé !" -ForegroundColor Cyan
