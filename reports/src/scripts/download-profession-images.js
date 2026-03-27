
import fs from 'fs';
import https from 'https';
import path from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// Ensure the directory exists
const outputDir = path.join(__dirname, '../../public/images/professions');
if (!fs.existsSync(outputDir)) {
  fs.mkdirSync(outputDir, { recursive: true });
}

const PROFESSION_IMAGES = {
  plumber: [
    'https://images.unsplash.com/photo-1607472586893-edb57bdc0e39?w=400&h=300&fit=crop',
    'https://images.unsplash.com/photo-1581244277943-fe4a9c777189?w=400&h=300&fit=crop'
  ],
  electrician: [
    'https://images.unsplash.com/photo-1621905251189-08b45d6a269e?w=400&h=300&fit=crop',
    'https://images.unsplash.com/photo-1555963966-b7ae5404b6ed?w=400&h=300&fit=crop'
  ],
  mechanic: [
    'https://images.unsplash.com/photo-1619642751034-765dfdf7c58e?w=400&h=300&fit=crop',
    'https://images.unsplash.com/photo-1487754180451-c456f719a1fc?w=400&h=300&fit=crop'
  ],
  woodworker: [
    'https://images.unsplash.com/photo-1601058268499-e52658b8bb88?w=400&h=300&fit=crop',
    'https://images.unsplash.com/photo-1611486212557-88be5ff6f941?w=400&h=300&fit=crop'
  ],
  painter: [
    'https://images.unsplash.com/photo-1589939705384-5185137a7f0f?w=400&h=300&fit=crop',
    'https://images.unsplash.com/photo-1562259949-e8e7689d7828?w=400&h=300&fit=crop'
  ],
  mason: [
    'https://images.unsplash.com/photo-1535732759880-bbd5c7265e3f?w=400&h=300&fit=crop',
    'https://images.unsplash.com/photo-1503387762-592deb58ef4e?w=400&h=300&fit=crop'
  ],
  roofer: [
    'https://images.unsplash.com/photo-1632759145351-1d592919f522?w=400&h=300&fit=crop',
    'https://images.unsplash.com/photo-1504307651254-35680f356dfd?w=400&h=300&fit=crop'
  ],
  tiler: [
    'https://images.unsplash.com/photo-1620626011761-996317b8d101?w=400&h=300&fit=crop',
    'https://images.unsplash.com/photo-1584622650111-993a426fbf0a?w=400&h=300&fit=crop'
  ],
  gardener: [
    'https://images.unsplash.com/photo-1416879595882-3373a0480b5b?w=400&h=300&fit=crop',
    'https://images.unsplash.com/photo-1585320806297-9794b3e4eeae?w=400&h=300&fit=crop'
  ],
  tailor: [
    'https://images.unsplash.com/photo-1512413914633-b5043f4041ea?w=400&h=300&fit=crop',
    'https://images.unsplash.com/photo-1591047139829-d91aecb6caea?w=400&h=300&fit=crop'
  ],
  cook: [
    'https://images.unsplash.com/photo-1577219491135-ce391730fb2c?w=400&h=300&fit=crop',
    'https://images.unsplash.com/photo-1512485800893-b08ec1ea59b1?w=400&h=300&fit=crop'
  ],
  hairdresser: [
    'https://images.unsplash.com/photo-1605497788044-5a32c7078486?w=400&h=300&fit=crop',
    'https://images.unsplash.com/photo-1633681926022-84c23e8cb2d6?w=400&h=300&fit=crop'
  ],
  beautician: [
    'https://images.unsplash.com/photo-1616394584738-fc6e612e71b9?w=400&h=300&fit=crop',
    'https://images.unsplash.com/photo-1560750588-73207b1ef5b8?w=400&h=300&fit=crop'
  ],
  computerTechnician: [
    'https://images.unsplash.com/photo-1550751827-4bd374c3f58b?w=400&h=300&fit=crop',
    'https://images.unsplash.com/photo-1588508065123-287b28e013da?w=400&h=300&fit=crop'
  ],
  heatingTechnician: [
    'https://images.unsplash.com/photo-1581094288338-2314dddb7ece?w=400&h=300&fit=crop',
    'https://images.unsplash.com/photo-1504328345606-18bbc8c9d7d1?w=400&h=300&fit=crop'
  ],
  applianceRepairman: [
    'https://images.unsplash.com/photo-1581092160562-40aa08e78837?w=400&h=300&fit=crop',
    'https://images.unsplash.com/photo-1621905251189-08b45d6a269e?w=400&h=300&fit=crop'
  ],
  welder: [
    'https://images.unsplash.com/photo-1504328345606-18bbc8c9d7d1?w=400&h=300&fit=crop',
    'https://images.unsplash.com/photo-1504917595217-d4dc5ebe6122?w=400&h=300&fit=crop'
  ],
  ironworker: [
    'https://images.unsplash.com/photo-1504917595217-d4dc5ebe6122?w=400&h=300&fit=crop',
    'https://images.unsplash.com/photo-1535813547-99c456a41d4a?w=400&h=300&fit=crop'
  ],
  glazier: [
    'https://images.unsplash.com/photo-1504328345606-18bbc8c9d7d1?w=400&h=300&fit=crop',
    'https://images.unsplash.com/photo-1504917595217-d4dc5ebe6122?w=400&h=300&fit=crop'
  ],
  bodyworker: [
    'https://images.unsplash.com/photo-1619642751034-765dfdf7c58e?w=400&h=300&fit=crop',
    'https://images.unsplash.com/photo-1590845947698-8924d7409b56?w=400&h=300&fit=crop'
  ],
  cabinetmaker: [
    'https://images.unsplash.com/photo-1611486212557-88be5ff6f941?w=400&h=300&fit=crop',
    'https://images.unsplash.com/photo-1533090481720-856c6e3c1fdc?w=400&h=300&fit=crop'
  ],
  upholsterer: [
    'https://images.unsplash.com/photo-1556228453-efd6c1ff04f6?w=400&h=300&fit=crop',
    'https://images.unsplash.com/photo-1616486338812-3dadae4b4ace?w=400&h=300&fit=crop'
  ],
  airConditioningTechnician: [
    'https://images.unsplash.com/photo-1581094794329-c8112a89af12?w=400&h=300&fit=crop',
    'https://images.unsplash.com/photo-1581092918056-0c4c3acd3789?w=400&h=300&fit=crop'
  ],
  photographer: [
    'https://images.unsplash.com/photo-1516035069371-29a1b244cc32?w=400&h=300&fit=crop',
    'https://images.unsplash.com/photo-1517048676732-d65bc937f952?w=400&h=300&fit=crop'
  ],
  videographer: [
    'https://images.unsplash.com/photo-1579546929518-9e396f3cc809?w=400&h=300&fit=crop',
    'https://images.unsplash.com/photo-1579546929662-711aa81148cf?w=400&h=300&fit=crop'
  ],
  translator: [
    'https://images.unsplash.com/photo-1456513080510-7bf3a84b82f8?w=400&h=300&fit=crop',
    'https://images.unsplash.com/photo-1544716278-ca5e3f4abd8c?w=400&h=300&fit=crop'
  ],
  secretary: [
    'https://images.unsplash.com/photo-1524758631624-e2822e304c36?w=400&h=300&fit=crop',
    'https://images.unsplash.com/photo-1556761175-5973dc0f32e7?w=400&h=300&fit=crop'
  ],
  accountant: [
    'https://images.unsplash.com/photo-1554224155-6726b3ff858f?w=400&h=300&fit=crop',
    'https://images.unsplash.com/photo-1460925895917-afdab827c52f?w=400&h=300&fit=crop'
  ],
  privateTeacher: [
    'https://images.unsplash.com/photo-1524178232363-1fb2b075b655?w=400&h=300&fit=crop',
    'https://images.unsplash.com/photo-1509062522246-3755977927d7?w=400&h=300&fit=crop'
  ],
  otherProfessions: [
    'https://images.unsplash.com/photo-1581291518633-83b4ebd1d83e?w=400&h=300&fit=crop',
    'https://images.unsplash.com/photo-1504328345606-18bbc8c9d7d1?w=400&h=300&fit=crop'
  ]
};

async function downloadImage(url, filepath) {
  return new Promise((resolve, reject) => {
    const request = https.get(url, (res) => {
      // Handle redirects
      if (res.statusCode === 301 || res.statusCode === 302) {
        if (res.headers.location) {
          console.log(`Redirecting to ${res.headers.location}`);
          return downloadImage(res.headers.location, filepath).then(resolve).catch(reject);
        }
      }

      if (res.statusCode === 200) {
        const file = fs.createWriteStream(filepath);
        res.pipe(file);
        
        file.on('finish', () => {
          file.close(() => resolve(filepath));
        });

        file.on('error', (err) => {
          fs.unlink(filepath, () => {}); // Delete the file if error
          reject(err);
        });
      } else {
        res.resume();
        reject(new Error(`Request Failed With a Status Code: ${res.statusCode}`));
      }
    });

    request.on('error', (err) => {
      // Check if file exists and delete it if it's 0 bytes or incomplete
      if (fs.existsSync(filepath)) {
         fs.unlink(filepath, () => {});
      }
      reject(err);
    });
  });
}

async function downloadAllImages() {
  console.log('Starting image download...');
  
  for (const [profession, urls] of Object.entries(PROFESSION_IMAGES)) {
    for (let i = 0; i < urls.length; i++) {
      const url = urls[i];
      const filename = `${profession}_${i + 1}.jpg`;
      const filepath = path.join(outputDir, filename);
      
      try {
        // Check if file exists and has content > 0 bytes
        let shouldDownload = true;
        if (fs.existsSync(filepath)) {
          const stats = fs.statSync(filepath);
          if (stats.size > 0) {
            shouldDownload = false;
            console.log(`- ${filename} already exists and is valid (${stats.size} bytes)`);
          } else {
             console.log(`- ${filename} exists but is empty. Re-downloading...`);
          }
        }

        if (shouldDownload) {
          console.log(`Downloading ${filename}...`);
          await downloadImage(url, filepath);
          
          // Verify size after download
          if (fs.existsSync(filepath)) {
             const stats = fs.statSync(filepath);
             console.log(`✓ ${filename} downloaded (${stats.size} bytes)`);
          } else {
             console.log(`x ${filename} failed to save`);
          }
        }
      } catch (error) {
        console.error(`Error downloading ${filename}:`, error.message);
      }
    }
  }
  
  console.log('All downloads completed!');
}

downloadAllImages();
