'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "02f33d21a69289656f7e766390ad53b0",
"version.json": "1d372fba9fb1842e3d0ff26a7782daf1",
"index.html": "fead6ebddc4d37990a0534a9a697fb4e",
"/": "fead6ebddc4d37990a0534a9a697fb4e",
"main.dart.js": "f3f21a5612f739dae0d3b2675bd754b0",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "5ebe97d0a14d799977b2d38509cbc390",
"assets/AssetManifest.json": "08cadeb5ad0f2fc8a0efe13c7630373f",
"assets/NOTICES": "f15358a8d0ca7fc7b3c2507f05f90a98",
"assets/FontManifest.json": "4c1de35a5447b8adfd69dd8eb35cf152",
"assets/AssetManifest.bin.json": "4b0823c7f1519a33b4824297ca40e7c3",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "107bca25cf58a2419d42a14a3cbd9456",
"assets/fonts/MaterialIcons-Regular.otf": "0064c85a085c24bb408e3fd54ce24bf8",
"assets/assets/images/cashback.png": "76865153370f51b20bc36c7c678863d7",
"assets/assets/images/mastercard-2.png": "03c20b63d4ffa13484f48fac9d2e32b2",
"assets/assets/images/Pattern%2520Success.png": "c46441a1f4f1d8913d779178aebc9bfd",
"assets/assets/images/product%25201%2520image.png": "d22ed624beffb93913bb3436bd8f9e6a",
"assets/assets/images/topDarkBro.png": "f99a34320f8e3ba952b8ae8560d073b6",
"assets/assets/images/Rajaampat.png": "e69992f39ca0668b333de925fab3fab6",
"assets/assets/images/shoes2.png": "e746c8992abd29da966cf91f8da87290",
"assets/assets/images/fedex-express.png": "5c65ce272dc58c3dd0b416f0549f23e4",
"assets/assets/images/CJ.png": "6bcbe99de38abc691883b1b85e9c7205",
"assets/assets/images/success1.png": "a0d67be26d7eff6044287212a04c2967",
"assets/assets/images/ps4_console_white_1.png": "070751496c7e7e8a3beee49c52fc4eba",
"assets/assets/images/Banner1.png": "0a857ea8c18da55d6ee93e765b65d5e1",
"assets/assets/images/ps4_console_white_3.png": "08c0901faebb16d9547fea1d651a795d",
"assets/assets/images/wireless%2520headset.png": "dd4c3f943adb93a516441e8068058b2c",
"assets/assets/images/ps4_console_white_2.png": "fdc127c9033115e9ff73d9abcec601c1",
"assets/assets/images/visa.png": "e5102f3cf10261b0cf2ddb4c27e66f14",
"assets/assets/images/denim_jacket.png": "d076e5eaaed7f1f3cfdd84069b782df0",
"assets/assets/images/ps4_console_white_4.png": "c06cfaab26ed218bdf3eadab54a97067",
"assets/assets/images/photo.png": "0326ad57e8a4e19fce62862d1a646581",
"assets/assets/images/ps4_console_blue_2.png": "f321803db42a1852afeebcc740edae90",
"assets/assets/images/Image%2520Popular%2520Product%25203.png": "fcbdff37daf1bf2aca91b6bc9323c4ca",
"assets/assets/images/Image%2520Popular%2520Product%25202.png": "0daef779816bf4febf8967c5b8c9ddb3",
"assets/assets/images/ps4_console_blue_3.png": "69c388ccfc8f00f0815de3696f0dae25",
"assets/assets/images/glap.png": "562f67ce5b89f0fd52b82756866f5c6f",
"assets/assets/images/splash1.png": "f2741242d7a454ebdb77b085427ba454",
"assets/assets/images/topbro.png": "7a0e132c1472614570830fd0dc764341",
"assets/assets/images/splash3.png": "bd48ffae221389848db6f6e07f971bd8",
"assets/assets/images/ps4_console_blue_1.png": "0085bd0d4680ea7e99d92fbd1a2d67df",
"assets/assets/images/Image%2520Banner%25204.png": "04f947765cf717e08543ece5f7c4fbe7",
"assets/assets/images/Image%2520Popular%2520Product%25201.png": "af5c7d2b62467e5340990c2c18d04841",
"assets/assets/images/splash2.png": "1fd9a30725f6b1b257e658056896d2e6",
"assets/assets/images/splash_3.png": "54b2889511d311463cf331284d9197bb",
"assets/assets/images/ps4_console_blue_4.png": "b9d0ed66e7040ef25f41501c143734b5",
"assets/assets/images/splashDark.png": "35816273a6e88856ca19bb085b7402a6",
"assets/assets/images/splash_2.png": "3580b1c0bb9f244b51d8042b8e762bf5",
"assets/assets/images/topBroDark.png": "c678b4ec526dc67cd5b889900752ca31",
"assets/assets/images/Image%2520Banner%25203.png": "fadba061e892fae449ad7a94af0a0f8d",
"assets/assets/images/Image%2520Banner%25202.png": "a5366e7932f0963be571c58fea87e43a",
"assets/assets/images/success.png": "f80df756b315fbb72670a78e82095c3c",
"assets/assets/images/splash_1.png": "51c064d3f19cf39aee627a3aed744193",
"assets/assets/images/Iphone14(4).png": "93555fbb20870ac807e48a61d511ad0c",
"assets/assets/images/google-pay.png": "515fdb5d6b0c72ab7ff1d020715da990",
"assets/assets/images/Iphone14(3).png": "765134dd23e5c72c1c55f45d31d3dd3d",
"assets/assets/images/Voyager.png": "32b0957bec36f7cf0259ee0a3ae46a11",
"assets/assets/images/apple-pay.png": "8ed30196e39ee689aa2cc5b604da80ee",
"assets/assets/images/splash1dark.png": "e4cbb07273bc8b7eb07a16a6100a9ce4",
"assets/assets/images/paypal.png": "fdd28064849926e343b82d25e9df0a03",
"assets/assets/images/Iphone14(2).png": "74ef11521f022ab002a73c0704e65b13",
"assets/assets/images/tshirt.png": "eaa8d7a86210783a28569afcd67632c6",
"assets/assets/images/photo1.png": "f4aee4597901356ada487841812a1255",
"assets/assets/images/Iphone14.png": "405d1f79965c70cf2587e48944f7ae4b",
"assets/assets/opening.png": "16a14667633e4be92de7137a5a98cd7d",
"assets/assets/logo.png": "f8e9daafc4bdb2a0e604b785c4fa41be",
"assets/assets/icons/Search%2520Icon.svg": "e86ce3fdf2c8be303b1338a287062d69",
"assets/assets/icons/Log%2520out.svg": "c64d26af7f7adf40b8803b5c36005483",
"assets/assets/icons/Plus%2520Icon.svg": "6444f068a6f5cb31d0378852663209d2",
"assets/assets/icons/receipt.svg": "8825464f4f3b50969d119410e1512b21",
"assets/assets/icons/User%2520Icon.svg": "3944ad12a2e9014c192fc5795e69a589",
"assets/assets/icons/Parcel.svg": "f5600ac86f0fa4a992ada9791d90482b",
"assets/assets/icons/Lock%2520Circle.svg": "a8a340b5c0d22acd7f45ae39e796d8c1",
"assets/assets/icons/Chat%2520bubble%2520Icon.svg": "afa5032affa4109a978cd3e3b469dbe9",
"assets/assets/icons/User.svg": "64be2203877e54c0f330a81e829eefee",
"assets/assets/icons/Account.svg": "f3c8c2d6c86315a98c066cfd7b1a046a",
"assets/assets/icons/Home.svg": "859cbb5c5ed6c7c94fbf000e6b56dc13",
"assets/assets/icons/Flash%2520Icon.svg": "ce6d094d3010e8c33cca5f312353eb16",
"assets/assets/icons/Bill%2520Icon.svg": "ab469064d7a70d91f3782ef9fa1ea2ed",
"assets/assets/icons/Shop%2520Icon.svg": "03a1539ccdd3af9ff97acf0d14458747",
"assets/assets/icons/Question%2520mark.svg": "549c8181dff9ef69c64fcb8b6bbde503",
"assets/assets/icons/Cart%2520Icon.svg": "c8aae0584e1b42e16d04b822bb93a9b2",
"assets/assets/icons/Lock.svg": "23ae4f18818c5dd9376ca4081247f0b2",
"assets/assets/icons/Settings.svg": "ca826f9199f0db9eb50665890945074e",
"assets/assets/icons/Mail.svg": "d33549ba36aa170134334b5deb4054ed",
"assets/assets/icons/Star%2520Icon.svg": "a4c930c4bf5854048edb32d7d370aada",
"assets/assets/icons/Discover.svg": "42f0b19c94e5457598dea918002a819c",
"assets/assets/icons/Bell.svg": "1fadecdc7447751c3fd45f2daa3a81e3",
"assets/assets/icons/Game%2520Icon.svg": "58003c336844814414602fa2af5344fb",
"assets/assets/icons/arrow_right.svg": "9c492cd795858f3522b4debfb737cbad",
"assets/assets/icons/Gift%2520Icon.svg": "c85da5b0c71e0ebaec3919204c1ed7ff",
"assets/assets/icons/Close.svg": "6b3561c87a732bcdf1cfc4cefd9cd9f6",
"assets/assets/icons/Bag.svg": "893b182a5fd9b5b24bcafd553f34ec4c",
"assets/assets/icons/heart_icon.svg": "22a6a9bcc3478419491190edae6a7dd2",
"assets/assets/icons/Back%2520ICon.svg": "48c3c4eb319f67f90296649fa8271cce",
"assets/assets/icons/Bill.svg": "b962583340cb81c46eac62343a2af6db",
"assets/assets/icons/ToCart.svg": "5fa8259bfa88ca5a9908395d166bc91e",
"assets/assets/icons/More.svg": "052adea0bfb55b7eebdf7a71b1724b0f",
"assets/assets/icons/Trash.svg": "3ee7633c7ae896cad4df9e8054b1f759",
"assets/assets/icons/facebook-2.svg": "b16d4798a9c0f65ff3a7b12270cd7f7d",
"assets/assets/icons/Cash.svg": "eddb432f0cb501add7f73cb0bf4f68f6",
"assets/assets/icons/Heart%2520Icon.svg": "0dcf36056268963f7b582eb3bd80ec72",
"assets/assets/icons/Phone.svg": "b73f57a83799da5d307a170027777e38",
"assets/assets/icons/Success.svg": "70f76d95e96ee6877ec6367b049fbc4d",
"assets/assets/icons/Call.svg": "bc32f4407062d5c79c820af0c5eea21e",
"assets/assets/icons/google-icon.svg": "af89e162738e95f20e41f175cf1e930e",
"assets/assets/icons/Gift.svg": "0520b33fc48004346a08d450a7bc0b7b",
"assets/assets/icons/Conversation.svg": "99099d01446f664193f4affde2945928",
"assets/assets/icons/remove.svg": "a3a85cd7bc1699150a2c86e850a90e60",
"assets/assets/icons/twitter.svg": "58e83cac5d93b6be707d27a9ffb5aa96",
"assets/assets/icons/Notifications.svg": "0e2758f90cb8c717277cf03372eab08e",
"assets/assets/icons/Error.svg": "b69030d759140aaada89f2cc044a3c72",
"assets/assets/icons/Heart%2520Icon_2.svg": "fd7dce0eb7741375843bcda4c7f4e52d",
"assets/assets/icons/Location%2520point.svg": "f32c37dc64f7be8fff81c5137b080317",
"assets/assets/icons/Check%2520mark%2520rounde.svg": "7c0f6db22346ffa0225fc8be643c5f8d",
"assets/assets/icons/Camera%2520Icon.svg": "8dbb5d29fa11cc5f2cfa265bab24bbad",
"assets/assets/fonts/Plus_Jakarta_Sans/PlusJakartaSans-Light.ttf": "d6fb190614a9297c6263f85094463592",
"assets/assets/fonts/Plus_Jakarta_Sans/PlusJakartaSans-Medium.ttf": "9fb6d71fc9edf9db455adeb04da9795c",
"assets/assets/fonts/Plus_Jakarta_Sans/PlusJakartaSans-SemiBold.ttf": "08d59825aa09f741c9272b85e6a1adbf",
"assets/assets/fonts/Plus_Jakarta_Sans/PlusJakartaSans-Regular.ttf": "f539ae4a8884822210a4553cc88ca3dc",
"assets/assets/fonts/Plus_Jakarta_Sans/PlusJakartaSans-Bold.ttf": "7dae244963714ee2b16fcbab46661792",
"assets/assets/fonts/Plus_Jakarta_Sans/PlusJakartaSans-ExtraBold.ttf": "9bfdb6bb1fda2806463b64e44c5eaed9",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c"};
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
