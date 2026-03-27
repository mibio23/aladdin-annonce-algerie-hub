import React, { useState } from 'react';
import { MapContainer, TileLayer, Marker, useMapEvents, LayersControl } from 'react-leaflet';
import 'leaflet/dist/leaflet.css';
import L from 'leaflet';
import icon from 'leaflet/dist/images/marker-icon.png';
import iconShadow from 'leaflet/dist/images/marker-shadow.png';

// Fix Leaflet icon issue
const DefaultIcon = L.icon({
    iconUrl: icon,
    shadowUrl: iconShadow,
    iconSize: [25, 41],
    iconAnchor: [12, 41]
});
L.Marker.prototype.options.icon = DefaultIcon;

interface LocationPickerProps {
  initialLat?: number;
  initialLng?: number;
  onLocationSelect?: (lat: number, lng: number) => void;
  readOnly?: boolean;
}

const LocationMarker = ({ onLocationSelect, position, readOnly }: { 
  onLocationSelect?: (lat: number, lng: number) => void, 
  position: { lat: number, lng: number } | null,
  readOnly?: boolean 
}) => {
  useMapEvents({
    click(e) {
      if (!readOnly && onLocationSelect) {
        onLocationSelect(e.latlng.lat, e.latlng.lng);
      }
    },
  });

  return position ? <Marker position={position} /> : null;
};

const LocationPicker: React.FC<LocationPickerProps> = ({ initialLat, initialLng, onLocationSelect, readOnly = false }) => {
  const [position, setPosition] = useState<{ lat: number; lng: number } | null>(
    initialLat && initialLng ? { lat: initialLat, lng: initialLng } : null
  );

  // Default center: Algiers
  const defaultCenter = { lat: 36.75, lng: 3.06 };

  const handleLocationSelect = (lat: number, lng: number) => {
    if (readOnly) return;
    setPosition({ lat, lng });
    if (onLocationSelect) {
      onLocationSelect(lat, lng);
    }
  };

  return (
    <div className="h-[300px] w-full rounded-md overflow-hidden border border-slate-200 dark:border-slate-700 relative z-0">
      <MapContainer
        center={position || defaultCenter}
        zoom={13}
        style={{ height: '100%', width: '100%' }}
        scrollWheelZoom={!readOnly}
        dragging={!readOnly}
      >
        <LayersControl position="topright">
          <LayersControl.BaseLayer checked name="OpenStreetMap">
            <TileLayer
              attribution='&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
              url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
            />
          </LayersControl.BaseLayer>
          <LayersControl.BaseLayer name="Satellite (Esri)">
            <TileLayer
              attribution='Tiles &copy; Esri &mdash; Source: Esri, i-cubed, USDA, USGS, AEX, GeoEye, Getmapping, Aerogrid, IGN, IGP, UPR-EGP, and the GIS User Community'
              url="https://server.arcgisonline.com/ArcGIS/rest/services/World_Imagery/MapServer/tile/{z}/{y}/{x}"
            />
          </LayersControl.BaseLayer>
        </LayersControl>
        <LocationMarker onLocationSelect={handleLocationSelect} position={position} readOnly={readOnly} />
      </MapContainer>
    </div>
  );
};

export default LocationPicker;
