const https = require('https');
const http = require('http');
const fs = require('fs');
const path = require('path');

const rootDir = path.resolve(__dirname, '..', '..');
require('dotenv').config({ path: path.join(rootDir, '.env') });

const SERVICE_KEY = process.env.SUPABASE_SERVICE_KEY;
const PAT_KEY = process.env.SUPABASE_PAT;
const PROJECT_REF = 'smsvybphkdxzvgawzoru';

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
      'Authorization': `Bearer ${PAT_KEY}`,
      'Content-Length': Buffer.byteLength(body)
    },
    port: 443
  }, body);
}

async function restUpsert(table, rows) {
  const body = JSON.stringify(rows);
  return makeRequest({
    hostname: `${PROJECT_REF}.supabase.co`,
    path: `/rest/v1/${table}`,
    method: 'POST',
    headers: {
      'apikey': SERVICE_KEY,
      'Authorization': `Bearer ${SERVICE_KEY}`,
      'Content-Type': 'application/json',
      'Prefer': 'return=representation',
      'Content-Length': Buffer.byteLength(body)
    },
    port: 443
  }, body);
}

async function restPatch(table, body, filter) {
  const data = JSON.stringify(body);
  return makeRequest({
    hostname: `${PROJECT_REF}.supabase.co`,
    path: `/rest/v1/${table}?${filter}`,
    method: 'PATCH',
    headers: {
      'apikey': SERVICE_KEY,
      'Authorization': `Bearer ${SERVICE_KEY}`,
      'Content-Type': 'application/json',
      'Prefer': 'return=representation',
      'Content-Length': Buffer.byteLength(data)
    },
    port: 443
  }, data);
}

async function restGet(table, params) {
  return makeRequest({
    hostname: `${PROJECT_REF}.supabase.co`,
    path: `/rest/v1/${table}?${params}`,
    method: 'GET',
    headers: {
      'apikey': SERVICE_KEY,
      'Authorization': `Bearer ${SERVICE_KEY}`,
      'Content-Type': 'application/json'
    },
    port: 443
  });
}

module.exports = { runMgmtQuery, restUpsert, restPatch, restGet };
