'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "66a7f1d8f9106bd90b8dedb4d7c47b68",
"version.json": "b0f20e0035dc2b54f1a5184e08899552",
"index.html": "79bd3daadb5eedeeb15834f9254d2a00",
"/": "79bd3daadb5eedeeb15834f9254d2a00",
"main.dart.js": "2bfa755fd764fc7241836bfeb108a01a",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "d63e100d7ca8c40d0600d45fac2866eb",
"assets/AssetManifest.json": "ba9e57b5136d8a4df603e712d0684b1f",
"assets/NOTICES": "e626ae0066f75a2b3eea981554e41f00",
"assets/FontManifest.json": "7b2a36307916a9721811788013e65289",
"assets/AssetManifest.bin.json": "0c39cf460798783a422596ddc7117b94",
"assets/packages/widget_binding_lego/assets/lego/widget_binding_lego/add.june": "1df2dc1cc4b421202d5bb41bdb09f2bd",
"assets/packages/facebook_main_view_lego/assets/lego/facebook_main_view_lego/thumb-up-outline.svg": "fe94d0317e9c4566e36d06d1cd87c42b",
"assets/packages/facebook_main_view_lego/assets/lego/facebook_main_view_lego/message-circle.svg": "ebbe6d9aff08b5bab2e86f719d8ae329",
"assets/packages/facebook_main_view_lego/assets/lego/facebook_main_view_lego/video-image.svg": "2af4fdd67db17ed6a576d2dee9cdeb04",
"assets/packages/facebook_main_view_lego/assets/lego/facebook_main_view_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/facebook_main_view_lego/assets/lego/facebook_main_view_lego/share-outline.svg": "1610b776026f73715934c59f19efe9f5",
"assets/packages/facebook_main_view_lego/assets/lego/facebook_main_view_lego/comment-outline.svg": "f2b0c1c78614b99c10f54374e4498d76",
"assets/packages/netflix_main_view_lego/assets/lego/netflix_main_view_lego/logo.ico": "41b45fdce09bd6acd07c7a8949da675e",
"assets/packages/netflix_main_view_lego/assets/lego/netflix_main_view_lego/img_2.webp": "c65ec6d7cf4c00026a1217e42cf66e88",
"assets/packages/netflix_main_view_lego/assets/lego/netflix_main_view_lego/img_3.webp": "c33bb84ac9b794432b2dbaf2cbb2bf61",
"assets/packages/netflix_main_view_lego/assets/lego/netflix_main_view_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/netflix_main_view_lego/assets/lego/netflix_main_view_lego/logo.webp": "4bf3ff05c6bf07ab2cd6dabe3f323ae6",
"assets/packages/netflix_main_view_lego/assets/lego/netflix_main_view_lego/chrome-cast-svgrepo-com.svg": "4cc36b8b146b79900c6fab2690127b2d",
"assets/packages/netflix_main_view_lego/assets/lego/netflix_main_view_lego/wv22frLmCpXDRjKj4MWFwa4eTOK.webp": "0599c9543edb31a51e08c41f062c1419",
"assets/packages/netflix_main_view_lego/assets/lego/netflix_main_view_lego/img_1.webp": "7fa5e576c713062197e4fb77ead35b25",
"assets/packages/toss_intro_page_lego/assets/lego/toss_intro_page_lego/vaccine.png": "650029ce77279045a178073f3f9550a6",
"assets/packages/toss_intro_page_lego/assets/lego/toss_intro_page_lego/hospital.png": "23096c864fb3f401ed451856b54f19a9",
"assets/packages/toss_intro_page_lego/assets/lego/toss_intro_page_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/toss_intro_page_lego/assets/lego/toss_intro_page_lego/money.png": "5326b763ec15d8fee65d07aa6fb9a18f",
"assets/packages/insta_personal_page_lego/assets/lego/insta_personal_page_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/insta_personal_page_lego/assets/lego/insta_personal_page_lego/winter.jpg": "446f4c4a69e0272e11708f7bf1a00fe0",
"assets/packages/insta_personal_page_lego/assets/lego/insta_personal_page_lego/chat.svg": "5f0a42298d31fab661e561190de406a1",
"assets/packages/hello_world_page_lego/assets/lego/hello_world_page_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "bf5c7e4948186d3d07db53d23a974f1f",
"assets/fonts/MaterialIcons-Regular.otf": "27dd9964402f18e526b8aaea1500ba46",
"assets/assets/github.svg": "c7f4f8cd4e1d67c295179575eab41e59",
"assets/assets/lego/facebook_main_view_lego/thumb-up-outline.svg": "fe94d0317e9c4566e36d06d1cd87c42b",
"assets/assets/lego/facebook_main_view_lego/message-circle.svg": "ebbe6d9aff08b5bab2e86f719d8ae329",
"assets/assets/lego/facebook_main_view_lego/video-image.svg": "2af4fdd67db17ed6a576d2dee9cdeb04",
"assets/assets/lego/facebook_main_view_lego/share-outline.svg": "1610b776026f73715934c59f19efe9f5",
"assets/assets/lego/facebook_main_view_lego/comment-outline.svg": "f2b0c1c78614b99c10f54374e4498d76",
"assets/assets/lego/netflix_main_view_lego/logo.ico": "41b45fdce09bd6acd07c7a8949da675e",
"assets/assets/lego/netflix_main_view_lego/img_2.webp": "c65ec6d7cf4c00026a1217e42cf66e88",
"assets/assets/lego/netflix_main_view_lego/img_3.webp": "c33bb84ac9b794432b2dbaf2cbb2bf61",
"assets/assets/lego/netflix_main_view_lego/logo.webp": "4bf3ff05c6bf07ab2cd6dabe3f323ae6",
"assets/assets/lego/netflix_main_view_lego/chrome-cast-svgrepo-com.svg": "4cc36b8b146b79900c6fab2690127b2d",
"assets/assets/lego/netflix_main_view_lego/wv22frLmCpXDRjKj4MWFwa4eTOK.webp": "0599c9543edb31a51e08c41f062c1419",
"assets/assets/lego/netflix_main_view_lego/img_1.webp": "7fa5e576c713062197e4fb77ead35b25",
"assets/assets/lego/toss_intro_page_lego/vaccine.png": "650029ce77279045a178073f3f9550a6",
"assets/assets/lego/toss_intro_page_lego/hospital.png": "23096c864fb3f401ed451856b54f19a9",
"assets/assets/lego/toss_intro_page_lego/money.png": "5326b763ec15d8fee65d07aa6fb9a18f",
"assets/assets/lego/insta_personal_page_lego/winter.jpg": "446f4c4a69e0272e11708f7bf1a00fe0",
"assets/assets/lego/insta_personal_page_lego/chat.svg": "5f0a42298d31fab661e561190de406a1",
"assets/assets/pubdev.svg": "77736b70355db3b992d712891749acd5",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
