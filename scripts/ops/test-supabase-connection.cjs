const https = require('https');
const http = require('http');
const fs = require('fs');
const path = require('path');

require('dotenv').config({ path: path.resolve(__dirname, '..', '..', '.env') });

const SERVICE_KEY = process.env.SUPABASE_SERVICE_KEY;
const PROJECT_REF = 'smsvybphkdxzvgawzoru';

if (!SERVICE_KEY) {
  console.error('SUPABASE_SERVICE_KEY not found in .env');
  process.exit(1);
}

function makeRequest(options, postData) {
  return new Promise((resolve, reject) => {
    const protocol = options.port === 443 ? https : http;
    const req = protocol.request(options, res => {
      let data = '';
      res.on('data', chunk => data += chunk);
      res.on('end', () => resolve({ status: res.statusCode, body: data }));
    });
    req.on('error', reject);
    if (postData) req.write(postData);
    req.end();
  });
}

async function runMgmtQuery(sql) {
  const body = JSON.stringify({ query: sql });
  return makeRequest({
    hostname: 'api.supabase.com',
    path: `/v1/projects/${PROJECT_REF}/database/query`,
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
      'Authorization': `Bearer ${SERVICE_KEY}`,
      'Content-Length': Buffer.byteLength(body)
    },
    port: 443
  }, body);
}

async function testDdl() {
  console.log('Test 1: Management API - ALTER TABLE...');
  const r1 = await runMgmtQuery('ALTER TABLE public.categories ADD COLUMN IF NOT EXISTS test_col_xyz TEXT');
  console.log('Status:', r1.status);
  console.log('Body:', r1.body.substring(0, 300));
  return r1.status === 200;
}

async function testRest() {
  console.log('\nTest 2: REST API - SELECT categories count...');
  const r2 = await makeRequest({
    hostname: `${PROJECT_REF}.supabase.co`,
    path: '/rest/v1/categories?select=slug&limit=5',
    method: 'GET',
    headers: {
      'apikey': SERVICE_KEY,
      'Authorization': `Bearer ${SERVICE_KEY}`,
      'Content-Type': 'application/json'
    },
    port: 443
  });
  console.log('Status:', r2.status);
  console.log('Body:', r2.body.substring(0, 300));
}

async function main() {
  console.log('SUPABASE SERVICE KEY:', SERVICE_KEY ? 'FOUND (' + SERVICE_KEY.substring(0, 20) + '...)' : 'MISSING');
  console.log('PROJECT REF:', PROJECT_REF);

  await testRest();

  const ddlOk = await testDdl();
  if (ddlOk) {
    console.log('\nManagement API works! DDL is possible.');
  } else {
    console.log('\nManagement API failed. Will use REST API workaround.');
  }
}

main().catch(e => console.error('Error:', e.message));
