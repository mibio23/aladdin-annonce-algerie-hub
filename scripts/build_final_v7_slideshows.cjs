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
    slug: 'mode-accessoires',
    images: [
      'https://images.unsplash.com/photo-1487222477894-8943e31ef7b2?w=600&h=600&fit=crop&q=80', // Vêtement homme (Man in suit)
      'https://images.unsplash.com/photo-1483985988355-763728e1935b?w=600&h=600&fit=crop&q=80', // Vêtement femme (Shopping/Fashion)
      'https://images.unsplash.com/photo-1516762689617-e1cffcef479d?w=600&h=600&fit=crop&q=80', // Cintre (Hangers)
      'https://images.unsplash.com/photo-1564257631407-4deb1f99d992?w=600&h=600&fit=crop&q=80'  // Chemisier (Blouse)
    ]
  },
    {
      slug: 'mode-et-accessoires',
      images: [
        'https://images.unsplash.com/photo-1549298916-b41d501d3772?w=600&h=600&fit=crop&q=80', // Shoes (Sneakers)
        'https://images.unsplash.com/photo-1511499767150-a48a237f0083?w=600&h=600&fit=crop&q=80', // Sunglasses
        'https://images.unsplash.com/photo-1515562141207-7a88fb7ce338?w=600&h=600&fit=crop&q=80', // Jewelry (Gold)
        'https://images.unsplash.com/photo-1621072156002-e2fccdc0b176?w=600&h=600&fit=crop&q=80'  // Tie & Shirt (Man fashion)
      ]
    },
  {
    slug: 'sante-beaute',
    images: [
      'https://images.unsplash.com/photo-1540555700478-4be289fbecef?w=600&h=600&fit=crop&q=80', // Spa/Relax
      'https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?w=600&h=600&fit=crop&q=80', // Makeup
      'https://images.unsplash.com/photo-1545205597-3d9d02c29597?w=600&h=600&fit=crop&q=80'  // Yoga/Healthy
    ]
  },
  {
    slug: 'gastronomie-alimentation',
    images: [
      'https://images.unsplash.com/photo-1596040033229-a9821ebd058d?w=600&h=600&fit=crop&q=80', // Spices Market
      'https://images.unsplash.com/photo-1577219491135-ce391730fb2c?w=600&h=600&fit=crop&q=80', // Chef Plating
      'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?w=600&h=600&fit=crop&q=80'  // Market Vegetables
    ]
  },
  {
    slug: 'artisanat-traditionnel-algerien',
    images: [
      'https://images.unsplash.com/photo-1520408222757-6f9f95d87d5d?w=600&h=600&fit=crop&q=80', // Poterie (Pottery Wheel)
      'https://images.unsplash.com/photo-1544816155-12df9643f363?w=600&h=600&fit=crop&q=80', // Gandoura (Embroidery/Fabric)
      'https://images.unsplash.com/photo-1541518763669-27fef04b14ea?w=600&h=600&fit=crop&q=80', // Couscous Dish
      'https://images.unsplash.com/photo-1558642452-9d2a7deb7f62?w=600&h=600&fit=crop&q=80'  // Miel (Honey Jar)
    ]
  },
  {
    slug: 'voyages-tourisme',
    images: [
      'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=600&h=600&fit=crop&q=80', // Beach
      'https://images.unsplash.com/photo-1436491865332-7a61a109cc05?w=600&h=600&fit=crop&q=80', // Airplane
      'https://images.unsplash.com/photo-1504150558240-0b4fd8946624?w=600&h=600&fit=crop&q=80'  // Suitcase
    ]
  },
  {
    slug: 'evenements-billetterie',
    images: [
      'https://images.unsplash.com/photo-1470225620780-dba8ba36b745?w=600&h=600&fit=crop&q=80', // Concert
      'https://images.unsplash.com/photo-1489599849927-2ee91cede3ba?w=600&h=600&fit=crop&q=80', // Cinema
      'https://images.unsplash.com/photo-1501281668745-f7f57925c3b4?w=600&h=600&fit=crop&q=80'  // Stage
    ]
  },
  {
    slug: 'emploi-carriere',
    images: [
      'https://images.unsplash.com/photo-1521791136064-7986c2920216?w=600&h=600&fit=crop&q=80', // Handshake
      'https://images.unsplash.com/photo-1542744173-8e7e53415bb0?w=600&h=600&fit=crop&q=80', // Office
      'https://images.unsplash.com/photo-1586281380349-632531db7ed4?w=600&h=600&fit=crop&q=80'  // Resume
    ]
  },
  {
    slug: 'education-loisirs',
    images: [
      'https://images.unsplash.com/photo-1503676260728-1c00da094a0b?w=600&h=600&fit=crop&q=80', // Books
      'https://images.unsplash.com/photo-1517649763962-0c623066013b?w=600&h=600&fit=crop&q=80', // Sports
      'https://images.unsplash.com/photo-1513364776144-60967b0f800f?w=600&h=600&fit=crop&q=80'  // Painting
    ]
  },
  {
      slug: 'animaux-accessoires',
      images: [
        'https://images.unsplash.com/photo-1543466835-00a7907e9de1?w=600&h=600&fit=crop&q=80', // Dog
        'https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?w=600&h=600&fit=crop&q=80', // Cat
        'https://images.unsplash.com/photo-1552933529-e359b2477252?w=600&h=600&fit=crop&q=80'  // Parrot
      ]
    },
    {
      slug: 'finance',
      images: [
        'https://images.unsplash.com/photo-1518183214770-9cffbec72538?w=600&h=600&fit=crop&q=80', // Coins
        'https://images.unsplash.com/photo-1580519542036-c47de6196ba5?w=600&h=600&fit=crop&q=80', // Banknotes
        'https://images.unsplash.com/photo-1605792657660-596af9009e82?w=600&h=600&fit=crop&q=80', // Gold Bars
        'https://images.unsplash.com/photo-1590283603385-17ffb3a7f29f?w=600&h=600&fit=crop&q=80'  // Expert
      ]
    },
    {
      slug: 'services-support',
    images: [
      'https://images.unsplash.com/photo-1597852074816-d933c7d2b988?w=600&h=600&fit=crop&q=80', // SAV Informatique
      'https://images.unsplash.com/photo-1519389950473-47ba0277781c?w=600&h=600&fit=crop&q=80', // Support Telecom
      'https://images.unsplash.com/photo-1576765608535-5f04d1e3f289?w=600&h=600&fit=crop&q=80', // Aide à la personne
      'https://images.unsplash.com/photo-1576091160399-112ba8d25d1d?w=600&h=600&fit=crop&q=80'  // Service Médicale
    ]
  },
  {
    slug: 'quincaillerie-generale',
    images: [
      'https://images.unsplash.com/photo-1581235720704-06d3acfcb36f?w=600&h=600&fit=crop&q=80', // Matériel divers (Assorted Tools) - Image 1 (Gardée)
      'https://images.unsplash.com/photo-1586864387967-d02ef85d93e8?w=600&h=600&fit=crop&q=80', // Marteau et Clous (Hammer & Nails) - Image 2
      'https://images.unsplash.com/photo-1566937169390-7be4c63b8a0e?w=600&h=600&fit=crop&q=80'  // Tournevis (Screwdriver) - Image 3 (Alternative)
    ]
  },
  {
    slug: 'nautisme',
    images: [
      'https://images.unsplash.com/photo-1569263979104-865ab7cd8d13?w=600&h=600&fit=crop&q=80', // Bateau (Yacht/Boat)
      'https://images.unsplash.com/photo-1540946485063-a40da27545f8?w=600&h=600&fit=crop&q=80', // Voilier (Sailboat)
      'https://images.unsplash.com/photo-1544551763-46a013bb70d5?w=600&h=600&fit=crop&q=80', // Plongeur (Scuba Diver)
      'https://images.unsplash.com/photo-1519315901367-f34ff9154487?w=600&h=600&fit=crop&q=80'  // Nageur (Swimmer)
    ]
  },
  {
    slug: 'echanges-partage',
    images: [
        'https://images.unsplash.com/photo-1488521787991-ed7bbaae773c?w=600&h=600&fit=crop&q=80', // Donation box
        'https://images.unsplash.com/photo-1567401893414-76b7b1e5a7a5?w=600&h=600&fit=crop&q=80', // Clothes rack
        'https://images.unsplash.com/photo-1524995997946-a1c2e315a42f?w=600&h=600&fit=crop&q=80'  // Books
      ]
    },
  {
    slug: 'image-son-equipement-musique',
    images: [
        'https://images.unsplash.com/photo-1516035069371-29a1b244cc32?w=600&h=600&fit=crop&q=80', // Camera
        'https://images.unsplash.com/photo-1545454675-3531b543be5d?w=600&h=600&fit=crop&q=80', // Speakers
        'https://images.unsplash.com/photo-1510915361894-db8b60106cb1?w=600&h=600&fit=crop&q=80', // Acoustic Guitar
        'https://images.unsplash.com/photo-1564186763535-ebb21ef5277f?w=600&h=600&fit=crop&q=80'  // Bass Guitar
      ]
    },
  {
      slug: 'electromenager',
      images: [
        'https://images.unsplash.com/photo-1590794056226-79ef3a8147e1?w=600&h=600&fit=crop&q=80', // Gasinière (Stove)
        'https://images.unsplash.com/photo-1584622650111-993a426fbf0a?w=600&h=600&fit=crop&q=80', // Frégédaire (Refrigerator)
        'https://images.unsplash.com/photo-1604335399105-a0c585fd81a1?w=600&h=600&fit=crop&q=80', // Machine à laver (Washing Machine)
        'https://images.unsplash.com/photo-1581622558663-b2e33377dfb2?w=600&h=600&fit=crop&q=80'  // Lave-vaisselle (Dishwasher)
      ]
    },
    {
      slug: 'btp-engins-construction',
      images: [
        '../public/assets/images/categories/btp-engins-construction-1.jpg',
        '../public/assets/images/categories/btp-engins-construction-2.jpg',
        '../public/assets/images/categories/btp-engins-construction-3.jpg',
        '../public/assets/images/categories/btp-engins-construction-4.jpg'
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
        // If an image fails, we might want to skip it or abort. 
        // For now, let's abort this category to avoid broken slideshows.
        throw err;
      }
    }

    // 2. Create WebP animation using ffmpeg
    const outputWebp = path.join(OUTPUT_DIR, `${task.slug}.webp`);
    console.log(`  Generating WebP animation for ${task.slug}...`);

    // Create a file list for ffmpeg
    // We want each image to show for ~1.5 seconds.
    // ffmpeg concat demuxer format:
    // file 'path'
    // duration 1.5
    const listPath = path.join(taskDir, 'images.txt');
    let listContent = '';
    
    // Duration per image
    const duration = 1.5; 
    
    for (const imgPath of imageFiles) {
      // Escape backslashes for ffmpeg (Windows)
      const safePath = imgPath.replace(/\\/g, '/');
      listContent += `file '${safePath}'\n`;
      listContent += `duration ${duration}\n`;
    }
    // Repeat the last image so it has duration too (ffmpeg quirk)
    const lastImg = imageFiles[imageFiles.length - 1].replace(/\\/g, '/');
    listContent += `file '${lastImg}'\n`;

    fs.writeFileSync(listPath, listContent);

    // ffmpeg command
    // -f concat -safe 0 -i images.txt -vf "scale=600:600:force_original_aspect_ratio=decrease,pad=600:600:(ow-iw)/2:(oh-ih)/2" -loop 0 -y output.webp
    // Using simple scale for now since images are already requested as 600x600 from Unsplash
    
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
