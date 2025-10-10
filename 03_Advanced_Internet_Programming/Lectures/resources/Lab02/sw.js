// sw.js - Service Worker for Kanban Board PWA

const CACHE_NAME = 'kanban-v1';
const urlsToCache = [
  '/',
  '/index.html',
  '/styles/main.css',
  '/scripts/main.js',
  '/scripts/Task.js',
  '/scripts/CanvasDrawer.js',
  '/images/logo.png'  // Include your icon or other static assets
];

// Install event: Cache core files
self.addEventListener('install', (event) => {
  event.waitUntil(
    caches.open(CACHE_NAME)
      .then((cache) => {
        console.log('Opened cache');
        return cache.addAll(urlsToCache);
      })
  );
});

// Fetch event: Cache-first strategy (serve from cache if available, else network)
self.addEventListener('fetch', (event) => {
  event.respondWith(
    caches.match(event.request)
      .then((response) => {
        // Return cached version or fetch from network
        return response || fetch(event.request);
      })
  );
});