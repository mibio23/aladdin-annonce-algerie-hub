import React from 'react';

/**
 * Icon3D — Lightweight CSS-only replacement for Three.js 3D icons.
 * Renders animated gradient shapes using pure CSS transforms,
 * saving ~1.2 MB of JavaScript (three + @react-three/fiber + drei).
 */

interface Icon3DProps {
  type: 'cube' | 'sphere' | 'cone' | 'torus';
  color?: string;
  hoverColor?: string;
  height?: number;
  width?: number;
  className?: string;
}

const shapeStyles: Record<Icon3DProps['type'], React.CSSProperties> = {
  cube: { borderRadius: '20%' },
  sphere: { borderRadius: '50%' },
  cone: { borderRadius: '50% 50% 10% 50%' },
  torus: { borderRadius: '50%', border: '3px solid currentColor' },
};

const Icon3D: React.FC<Icon3DProps> = ({
  type,
  color = '#9b87f5',
  height = 60,
  width = 60,
  className = '',
}) => {
  const isTorus = type === 'torus';
  const baseStyle = shapeStyles[type];

  return (
    <div
      className={`relative inline-flex items-center justify-center ${className}`}
      style={{ height, width }}
    >
      <div
        style={{
          width: '75%',
          height: '75%',
          background: isTorus
            ? 'transparent'
            : `linear-gradient(135deg, ${color}, ${color}88)`,
          borderColor: isTorus ? color : undefined,
          boxShadow: `0 2px 12px ${color}44`,
          animation: 'icon3d-spin 4s ease-in-out infinite',
          ...baseStyle,
        }}
      />
      <style>{`
        @keyframes icon3d-spin {
          0%, 100% { transform: perspective(200px) rotateY(0deg) rotateX(0deg) scale(1); }
          25% { transform: perspective(200px) rotateY(15deg) rotateX(5deg) scale(1.05); }
          50% { transform: perspective(200px) rotateY(0deg) rotateX(-5deg) scale(1); }
          75% { transform: perspective(200px) rotateY(-15deg) rotateX(5deg) scale(1.05); }
        }
      `}</style>
    </div>
  );
};

export default Icon3D;
