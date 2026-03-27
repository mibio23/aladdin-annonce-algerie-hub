const fs = require('fs');
const path = require('path');
const { execSync } = require('child_process');
const ffmpegPath = require('ffmpeg-static');

const OUTPUT_DIR = path.join(__dirname, '../public/images/categories/main');
const SOURCE_DIR = path.join(__dirname, '../temp_images_v7/quincaillerie-generale');
const RESIZED_DIR = path.join(SOURCE_DIR, 'resized');

const images = ['image_0.jpg', 'image_1.jpg', 'image_2.jpg', 'image_3.jpg'];

console.log('Fixing and Rebuilding WebP for quincaillerie-generale...');

if (!fs.existsSync(OUTPUT_DIR)) {
  fs.mkdirSync(OUTPUT_DIR, { recursive: true });
}

if (!fs.existsSync(RESIZED_DIR)) {
  fs.mkdirSync(RESIZED_DIR, { recursive: true });
}

// 1. Resize all images to uniform 600x600
console.log('Resizing images to 600x600...');
for (const imgName of images) {
  const inputPath = path.join(SOURCE_DIR, imgName);
  const outputPath = path.join(RESIZED_DIR, imgName);
  
  if (!fs.existsSync(inputPath)) {
    console.error(`File not found: ${inputPath}`);
    process.exit(1);
  }

  // Scale to 600x600 with padding to maintain aspect ratio, same as original script intent
  // Using -q:v 2 to maintain high quality for intermediate jpg
  try {
    execSync(`"${ffmpegPath}" -i "${inputPath}" -vf "scale=600:600:force_original_aspect_ratio=decrease,pad=600:600:(ow-iw)/2:(oh-ih)/2" -q:v 2 -y "${outputPath}"`, { stdio: 'ignore' });
    console.log(`  Resized ${imgName}`);
  } catch (err) {
    console.error(`  Error resizing ${imgName}:`, err.message);
    process.exit(1);
  }
}

// 2. Create images.txt pointing to RESIZED images
const listPath = path.join(RESIZED_DIR, 'images.txt');
let listContent = '';
const duration = 1.5;

for (const imgName of images) {
  const safePath = path.join(RESIZED_DIR, imgName).replace(/\\/g, '/');
  listContent += `file '${safePath}'\n`;
  listContent += `duration ${duration}\n`;
}
// Repeat last image
const lastImg = path.join(RESIZED_DIR, images[images.length - 1]).replace(/\\/g, '/');
listContent += `file '${lastImg}'\n`;

fs.writeFileSync(listPath, listContent);

// 3. Generate WebP
const outputWebp = path.join(OUTPUT_DIR, 'quincaillerie-generale.webp');
console.log('Generating WebP animation...');

try {
  // -loop 0 for infinite loop
  execSync(`"${ffmpegPath}" -f concat -safe 0 -i "${listPath}" -loop 0 -y "${outputWebp}"`, { stdio: 'inherit' });
  console.log('Successfully created quincaillerie-generale.webp');
} catch (err) {
  console.error('Error generating WebP:', err.message);
  process.exit(1);
}
