const fs = require('fs');
const path = require('path');
const https = require('https');
const { execSync } = require('child_process');
const ffmpegPath = require('ffmpeg-static');

const OUTPUT_DIR = path.join(__dirname, '../public/images/categories/main');
const TEMP_DIR = path.join(__dirname, '../temp_images_v7');

if (!fs.existsSync(OUTPUT_DIR)) {
  fs.mkdirSync(OUTPUT_DIR, { recursive: true });
}

if (!fs.existsSync(TEMP_DIR)) {
  fs.mkdirSync(TEMP_DIR, { recursive: true });
}

const TASKS = [
  {
    slug: 'nautisme',
    images: [
      'https://images.unsplash.com/photo-1569263979104-865ab7cd8d13?w=600&h=600&fit=crop&q=80', // Bateau (Yacht/Boat)
      'https://images.unsplash.com/photo-1540946485063-a40da27545f8?w=600&h=600&fit=crop&q=80', // Voilier (Sailboat)
      'https://images.unsplash.com/photo-1544551763-46a013bb70d5?w=600&h=600&fit=crop&q=80', // Plongeur (Scuba Diver)
      'https://images.unsplash.com/photo-1519315901367-f34ff9154487?w=600&h=600&fit=crop&q=80'  // Nageur (Swimmer)
    ]
  }
];

function downloadImage(url, filepath) {
  return new Promise((resolve, reject) => {
    const options = {
      headers: {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'
      }
    };
    https.get(url, options, (res) => {
      if (res.statusCode === 302 || res.statusCode === 301) {
        downloadImage(res.headers.location, filepath).then(resolve).catch(reject);
        return;
      }
      if (res.statusCode !== 200) {
        reject(new Error(`Failed to fetch ${url}: ${res.statusCode} ${res.statusMessage}`));
        return;
      }
      const stream = fs.createWriteStream(filepath);
      res.pipe(stream);
      stream.on('finish', () => {
        stream.close();
        resolve();
      });
      stream.on('error', (err) => {
        fs.unlink(filepath, () => {}); // Delete the file async
        reject(err);
      });
    }).on('error', (err) => {
      fs.unlink(filepath, () => {}); // Delete the file async
      reject(err);
    });
  });
}

async function processTasks() {
  for (const task of TASKS) {
    console.log(`Processing ${task.slug}...`);
    const taskDir = path.join(TEMP_DIR, task.slug);
    if (!fs.existsSync(taskDir)) {
      fs.mkdirSync(taskDir, { recursive: true });
    }

    // 1. Download images
    const imageFiles = [];
    for (let i = 0; i < task.images.length; i++) {
      const imgPath = path.join(taskDir, `image_${i}.jpg`);
      console.log(`  Downloading/Copying image ${i + 1}/${task.images.length}...`);
      try {
        if (task.images[i].startsWith('http')) {
          await downloadImage(task.images[i], imgPath);
        } else {
          // Local file
          const sourcePath = path.resolve(__dirname, task.images[i]);
          fs.copyFileSync(sourcePath, imgPath);
        }
        imageFiles.push(imgPath);
      } catch (err) {
        console.error(`  Error processing image ${i}:`, err.message);
        throw err;
      }
    }

    // 2. Create WebP animation using ffmpeg
    const outputWebp = path.join(OUTPUT_DIR, `${task.slug}.webp`);
    console.log(`  Generating WebP animation for ${task.slug}...`);

    const listPath = path.join(taskDir, 'images.txt');
    let listContent = '';
    const duration = 1.5; 
    
    for (const imgPath of imageFiles) {
      const safePath = imgPath.replace(/\\/g, '/');
      listContent += `file '${safePath}'\n`;
      listContent += `duration ${duration}\n`;
    }
    const lastImg = imageFiles[imageFiles.length - 1].replace(/\\/g, '/');
    listContent += `file '${lastImg}'\n`;

    fs.writeFileSync(listPath, listContent);

    try {
      execSync(`"${ffmpegPath}" -f concat -safe 0 -i "${listPath}" -vf "fps=10,scale=600:600:force_original_aspect_ratio=decrease,pad=600:600:(ow-iw)/2:(oh-ih)/2" -loop 0 -y "${outputWebp}"`, { stdio: 'inherit' });
      console.log(`  Successfully created ${task.slug}.webp`);
    } catch (err) {
      console.error(`  Error generating WebP for ${task.slug}:`, err.message);
    }
  }
  
  console.log('All tasks completed.');
}

processTasks().catch(err => {
  console.error('Script failed:', err);
  process.exit(1);
});