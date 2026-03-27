const fs = require('fs');
const path = require('path');
const { execSync } = require('child_process');
const ffmpegPath = require('ffmpeg-static');

const OUTPUT_DIR = path.join(__dirname, '../public/images/categories/main');
const TASK_DIR = path.join(__dirname, '../temp_images_v7/quincaillerie-generale');

const images = ['image_0.jpg', 'image_1.jpg', 'image_2.jpg', 'image_3.jpg'];

console.log('Rebuilding WebP for quincaillerie-generale from local files...');

if (!fs.existsSync(OUTPUT_DIR)) {
  fs.mkdirSync(OUTPUT_DIR, { recursive: true });
}

const listPath = path.join(TASK_DIR, 'images.txt');
let listContent = '';
const duration = 1.5;

for (const imgName of images) {
  const imgPath = path.join(TASK_DIR, imgName);
  if (!fs.existsSync(imgPath)) {
    console.error(`File not found: ${imgPath}`);
    process.exit(1);
  }
  const safePath = imgPath.replace(/\\/g, '/');
  listContent += `file '${safePath}'\n`;
  listContent += `duration ${duration}\n`;
}
// Repeat last image
const lastImg = path.join(TASK_DIR, images[images.length - 1]).replace(/\\/g, '/');
listContent += `file '${lastImg}'\n`;

fs.writeFileSync(listPath, listContent);

const outputWebp = path.join(OUTPUT_DIR, 'quincaillerie-generale.webp');

try {
  execSync(`"${ffmpegPath}" -f concat -safe 0 -i "${listPath}" -vf "fps=10,scale=600:600:force_original_aspect_ratio=decrease,pad=600:600:(ow-iw)/2:(oh-ih)/2" -loop 0 -y "${outputWebp}"`, { stdio: 'inherit' });
  console.log('Successfully created quincaillerie-generale.webp');
} catch (err) {
  console.error('Error generating WebP:', err.message);
  process.exit(1);
}
