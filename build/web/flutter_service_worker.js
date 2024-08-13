'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "3ca251f1e842f9fac95f9910e8924f8d",
"version.json": "b0f20e0035dc2b54f1a5184e08899552",
"index.html": "a801ad79483b10686e5a13ab50d4f45e",
"/": "a801ad79483b10686e5a13ab50d4f45e",
"main.dart.js": "bd4c74de4f76636c774135ef30712994",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "d63e100d7ca8c40d0600d45fac2866eb",
"assets/AssetManifest.json": "ba1c7b27a4e9c0408084bbd31992a116",
"assets/NOTICES": "8c1d1e35c7d59c93249f289b92257032",
"assets/FontManifest.json": "b67a39dc77d36f1d266230e70bbdc8cf",
"assets/AssetManifest.bin.json": "f4b120f9bbdcc72aaa5f5d12cd11ed3b",
"assets/packages/widget_binding_lego/assets/lego/widget_binding_lego/add.june": "1df2dc1cc4b421202d5bb41bdb09f2bd",
"assets/packages/facebook_main_view_lego/assets/lego/facebook_main_view_lego/thumb-up-outline.svg": "fe94d0317e9c4566e36d06d1cd87c42b",
"assets/packages/facebook_main_view_lego/assets/lego/facebook_main_view_lego/message-circle.svg": "ebbe6d9aff08b5bab2e86f719d8ae329",
"assets/packages/facebook_main_view_lego/assets/lego/facebook_main_view_lego/video-image.svg": "2af4fdd67db17ed6a576d2dee9cdeb04",
"assets/packages/facebook_main_view_lego/assets/lego/facebook_main_view_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/facebook_main_view_lego/assets/lego/facebook_main_view_lego/share-outline.svg": "1610b776026f73715934c59f19efe9f5",
"assets/packages/facebook_main_view_lego/assets/lego/facebook_main_view_lego/comment-outline.svg": "f2b0c1c78614b99c10f54374e4498d76",
"assets/packages/request_ad_permission_page_lego/assets/lego/request_ad_permission_page_lego/ad.png": "a1bb9dc1f6d9fbc1ad609a8d239081e4",
"assets/packages/request_ad_permission_page_lego/assets/lego/request_ad_permission_page_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/world_time_lego/assets/lego/world_time_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "49a9f7ec07a3c8e562610b27b15fd0fa",
"assets/packages/profile_view_2_lego/assets/lego/profile_view_2_lego/Technology-Stack_Banner-1280x720.webp": "d7e70fbe9b34349714a89585582c8071",
"assets/packages/profile_view_2_lego/assets/lego/profile_view_2_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/profile_view_2_lego/assets/lego/profile_view_2_lego/React-Native-Vs-Flutter-What-Is-Better-For-Your-Business.webp": "9f4aee318332250c9e750e988195d4f5",
"assets/packages/listview_delete_animation_demo_lego/assets/lego/listview_delete_animation_demo_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/google_drive_main_view_lego/assets/lego/google_drive_main_view_lego/photo.webp": "ab15e5bc2d613be72b24579fb2ef2277",
"assets/packages/google_drive_main_view_lego/assets/lego/google_drive_main_view_lego/photographic-film.webp": "3bc95fdbfe411b4a45a3fefa1789ed13",
"assets/packages/google_drive_main_view_lego/assets/lego/google_drive_main_view_lego/google-docs.webp": "cf831e6c05d3c10608a407480535170c",
"assets/packages/google_drive_main_view_lego/assets/lego/google_drive_main_view_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/google_drive_main_view_lego/assets/lego/google_drive_main_view_lego/pdf.webp": "ef947bec0d196380ae88bb2dcfa7bbb8",
"assets/packages/google_drive_main_view_lego/assets/lego/google_drive_main_view_lego/google-sheets.webp": "9c31b67cbc99f4011a15c2fd38a7f9d8",
"assets/packages/flutter_neumorphic_plus/fonts/NeumorphicIcons.ttf": "32be0c4c86773ba5c9f7791e69964585",
"assets/packages/music_player_page_lego/assets/lego/music_player_page_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/music_player_page_lego/assets/lego/music_player_page_lego/music_disk.webp": "aa530f0a239c06f3ad36eb8d599a93c8",
"assets/packages/basic_drawer_lego/assets/lego/basic_drawer_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/basic_zoom_drawer_lego/assets/lego/basic_zoom_drawer_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/netflix_main_view_lego/assets/lego/netflix_main_view_lego/logo.ico": "41b45fdce09bd6acd07c7a8949da675e",
"assets/packages/netflix_main_view_lego/assets/lego/netflix_main_view_lego/img_2.webp": "c65ec6d7cf4c00026a1217e42cf66e88",
"assets/packages/netflix_main_view_lego/assets/lego/netflix_main_view_lego/img_3.webp": "c33bb84ac9b794432b2dbaf2cbb2bf61",
"assets/packages/netflix_main_view_lego/assets/lego/netflix_main_view_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/netflix_main_view_lego/assets/lego/netflix_main_view_lego/logo.webp": "4bf3ff05c6bf07ab2cd6dabe3f323ae6",
"assets/packages/netflix_main_view_lego/assets/lego/netflix_main_view_lego/chrome-cast-svgrepo-com.svg": "4cc36b8b146b79900c6fab2690127b2d",
"assets/packages/netflix_main_view_lego/assets/lego/netflix_main_view_lego/wv22frLmCpXDRjKj4MWFwa4eTOK.webp": "0599c9543edb31a51e08c41f062c1419",
"assets/packages/netflix_main_view_lego/assets/lego/netflix_main_view_lego/img_1.webp": "7fa5e576c713062197e4fb77ead35b25",
"assets/packages/ios_notes_view_lego/assets/lego/ios_notes_view_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/youtube_main_view_lego/assets/lego/youtube_main_view_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/youtube_main_view_lego/assets/lego/youtube_main_view_lego/yt_logo_rgb_light.webp": "f31dfae768abcf58ac7ba3c9bd8079df",
"assets/packages/youtube_main_view_lego/assets/lego/youtube_main_view_lego/video.svg": "1b93d5414307118101a5d6c8c3bf20f3",
"assets/packages/calculator_ui_lego/assets/lego/calculator_ui_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/whatsapp_main_view_lego/assets/lego/whatsapp_main_view_lego/check-all.svg": "8ea4959917dc40afe25bce79f4a06304",
"assets/packages/whatsapp_main_view_lego/assets/lego/whatsapp_main_view_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/whatsapp_main_view_lego/assets/lego/whatsapp_main_view_lego/check.svg": "799406436c72ea8810d9256144c7a87d",
"assets/packages/whatsapp_main_view_lego/assets/lego/whatsapp_main_view_lego/camera.svg": "844c46866d98744d20fb96b37b5cdde4",
"assets/packages/whatsapp_main_view_lego/assets/lego/whatsapp_main_view_lego/pencil.svg": "c3c2b16533c92cadc845e4accc57fab2",
"assets/packages/insta_style_feed_lego/assets/lego/insta_style_feed_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/insta_style_feed_lego/assets/lego/insta_style_feed_lego/chat.svg": "5f0a42298d31fab661e561190de406a1",
"assets/packages/insta_style_feed_lego/assets/lego/insta_style_feed_lego/iu.jpg": "c1d36ed41088228370232f9c813abcd0",
"assets/packages/weather_page_lego/assets/lego/weather_page_lego/5.webp": "a61dbebf82619f1c8dfe2e5ffc6e472a",
"assets/packages/weather_page_lego/assets/lego/weather_page_lego/9.webp": "52dd0ac7de0e8e236f2b5ffff00fa659",
"assets/packages/weather_page_lego/assets/lego/weather_page_lego/8.webp": "db54b730607cd6ca359d304c516f616e",
"assets/packages/weather_page_lego/assets/lego/weather_page_lego/4.webp": "c61731dd454c4ca77f4328e6a82b41a9",
"assets/packages/weather_page_lego/assets/lego/weather_page_lego/14.webp": "e32d37034a764f0732afdecaf4d9ca4e",
"assets/packages/weather_page_lego/assets/lego/weather_page_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/weather_page_lego/assets/lego/weather_page_lego/13.webp": "a0a108333290cd130c7db3b549415e52",
"assets/packages/weather_page_lego/assets/lego/weather_page_lego/3.webp": "ef11a57ddcd139d0c4e90e7525ebc609",
"assets/packages/weather_page_lego/assets/lego/weather_page_lego/2.webp": "a350c8649c3560c78f5c5f8009c8a302",
"assets/packages/weather_page_lego/assets/lego/weather_page_lego/12.webp": "27b5eee40c3c6d67e843880ec8979286",
"assets/packages/weather_page_lego/assets/lego/weather_page_lego/1.webp": "3a2c2222254fa098184a39343ecca4ef",
"assets/packages/weather_page_lego/assets/lego/weather_page_lego/11.webp": "db8384f860297f79ecab6c9c4a33e991",
"assets/packages/weather_page_lego/assets/lego/weather_page_lego/7.webp": "752b31b5038b0439cf672596f6ed422e",
"assets/packages/weather_page_lego/assets/lego/weather_page_lego/6.webp": "e6b0f12e9af14b33ea7d6f7289fa1e31",
"assets/packages/netflix_intro_page_lego/assets/lego/netflix_intro_page_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/netflix_intro_page_lego/assets/lego/netflix_intro_page_lego/logo.webp": "4bf3ff05c6bf07ab2cd6dabe3f323ae6",
"assets/packages/netflix_intro_page_lego/assets/lego/netflix_intro_page_lego/screen_2.webp": "07f37b203fcf0767e1d2f7fa3cd513bd",
"assets/packages/netflix_intro_page_lego/assets/lego/netflix_intro_page_lego/screen_3.webp": "16e1f73603d3d138a7069e427a58b850",
"assets/packages/netflix_intro_page_lego/assets/lego/netflix_intro_page_lego/screen_4.webp": "278902108cbab6e385e83d41d038728a",
"assets/packages/netflix_intro_page_lego/assets/lego/netflix_intro_page_lego/background-image.webp": "d1bc94c93071591b5d99037062cad4ba",
"assets/packages/spotify_main_view_lego/assets/lego/spotify_main_view_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/spotify_main_view_lego/assets/lego/spotify_main_view_lego/spotify.svg": "129620aeff07b4caa27f1b3ab10cbbca",
"assets/packages/money_transfer_view_lego/assets/lego/money_transfer_view_lego/001-paypal.webp": "49a62f564b58faa49d8defbbc886adff",
"assets/packages/money_transfer_view_lego/assets/lego/money_transfer_view_lego/015-citi.webp": "b02229b90af6317c742de6ce1a8b8b30",
"assets/packages/money_transfer_view_lego/assets/lego/money_transfer_view_lego/menu-open.svg": "b70cf1aed67b61da674a8095b198a889",
"assets/packages/money_transfer_view_lego/assets/lego/money_transfer_view_lego/004-visa.webp": "9cf0552356c97db1430108c960547923",
"assets/packages/money_transfer_view_lego/assets/lego/money_transfer_view_lego/003-american%2520express.webp": "1fea567ca07982052275285c8ecf2fd1",
"assets/packages/money_transfer_view_lego/assets/lego/money_transfer_view_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/money_transfer_view_lego/assets/lego/money_transfer_view_lego/002-mastercard.webp": "36077c6490109161733216fc700e218c",
"assets/packages/money_transfer_view_lego/assets/lego/money_transfer_view_lego/trello.svg": "ce8130d1d6c2c8581b09a0adb1627997",
"assets/packages/money_transfer_view_lego/assets/lego/money_transfer_view_lego/022-maestro.webp": "e1923f1a44e2764859d4baf336e8b84d",
"assets/packages/gmail_main_view_lego/assets/lego/gmail_main_view_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/login_view3_lego/assets/lego/login_view3_lego/google.webp": "d1b48d53b47d60d3f00d60e6c561bb55",
"assets/packages/login_view3_lego/assets/lego/login_view3_lego/twitter.webp": "c6e562784f15048688181f183510b8d1",
"assets/packages/login_view3_lego/assets/lego/login_view3_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/login_view3_lego/assets/lego/login_view3_lego/facebook.webp": "83deaa15c9e82f37e588bdf392d14876",
"assets/packages/login_view3_lego/assets/lego/login_view3_lego/youtube.webp": "0e2769b8263285f46ca9065b200e7bd0",
"assets/packages/chatgpt_drawer_view_lego/assets/lego/chatgpt_drawer_view_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/calculator_neumorphism_ui_lego/assets/lego/calculator_neumorphism_ui_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/telegram_main_lego/assets/lego/telegram_main_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/reorderable_listview_demo_lego/assets/lego/reorderable_listview_demo_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/calculator_page_lego/assets/lego/calculator_page_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/facebook_messager_main_view_lego/assets/lego/facebook_messager_main_view_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/chat_app_view_detail_lego/assets/lego/chat_app_view_detail_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/select_cities_bottom_sheet_lego/assets/lego/select_cities_bottom_sheet_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/request_notification_permission_page_lego/assets/lego/request_notification_permission_page_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/request_notification_permission_page_lego/assets/lego/request_notification_permission_page_lego/notification.png": "d7b389a3bf8b0f59ddde7c8832d0b02b",
"assets/packages/toss_intro_page_lego/assets/lego/toss_intro_page_lego/vaccine.png": "650029ce77279045a178073f3f9550a6",
"assets/packages/toss_intro_page_lego/assets/lego/toss_intro_page_lego/hospital.png": "23096c864fb3f401ed451856b54f19a9",
"assets/packages/toss_intro_page_lego/assets/lego/toss_intro_page_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/toss_intro_page_lego/assets/lego/toss_intro_page_lego/money.png": "5326b763ec15d8fee65d07aa6fb9a18f",
"assets/packages/google_search_result_page_lego/assets/lego/google_search_result_page_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/google_search_result_page_lego/assets/lego/google_search_result_page_lego/favicon.webp": "cfbe00f972c995f95f5d45b58edf421a",
"assets/packages/kakao_chatroom_list_lego/assets/lego/kakao_chatroom_list_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/basic_snackbar_lego/assets/lego/basic_snackbar_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/login_and_register_page_lego/assets/lego/login_and_register_page_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/login_and_register_page_lego/assets/lego/login_and_register_page_lego/main.webp": "41e29a42db2f4fb870f14eeb73c3bda7",
"assets/packages/ios_reminder_view_lego/assets/lego/ios_reminder_view_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/music_list_page_lego/assets/lego/music_list_page_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/music_list_page_lego/assets/lego/music_list_page_lego/music_disk.webp": "aa530f0a239c06f3ad36eb8d599a93c8",
"assets/packages/insta_personal_page_lego/assets/lego/insta_personal_page_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/insta_personal_page_lego/assets/lego/insta_personal_page_lego/winter.jpg": "446f4c4a69e0272e11708f7bf1a00fe0",
"assets/packages/insta_personal_page_lego/assets/lego/insta_personal_page_lego/chat.svg": "5f0a42298d31fab661e561190de406a1",
"assets/packages/chat_app_view_lego/assets/lego/chat_app_view_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/packages/hello_world_page_lego/assets/lego/hello_world_page_lego/add.june": "39e32c1864a95983f78d2685094f77f2",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "0ce81de4d85ac32b85e54d2e1d077b9a",
"assets/fonts/MaterialIcons-Regular.otf": "d81e07bf95240a1a6b2eead5f96bde2d",
"assets/assets/github.svg": "c7f4f8cd4e1d67c295179575eab41e59",
"assets/assets/lego/facebook_main_view_lego/thumb-up-outline.svg": "fe94d0317e9c4566e36d06d1cd87c42b",
"assets/assets/lego/facebook_main_view_lego/message-circle.svg": "ebbe6d9aff08b5bab2e86f719d8ae329",
"assets/assets/lego/facebook_main_view_lego/video-image.svg": "2af4fdd67db17ed6a576d2dee9cdeb04",
"assets/assets/lego/facebook_main_view_lego/share-outline.svg": "1610b776026f73715934c59f19efe9f5",
"assets/assets/lego/facebook_main_view_lego/comment-outline.svg": "f2b0c1c78614b99c10f54374e4498d76",
"assets/assets/lego/request_ad_permission_page_lego/ad.png": "a1bb9dc1f6d9fbc1ad609a8d239081e4",
"assets/assets/lego/profile_view_2_lego/Technology-Stack_Banner-1280x720.webp": "d7e70fbe9b34349714a89585582c8071",
"assets/assets/lego/profile_view_2_lego/React-Native-Vs-Flutter-What-Is-Better-For-Your-Business.webp": "9f4aee318332250c9e750e988195d4f5",
"assets/assets/lego/google_drive_main_view_lego/photo.webp": "ab15e5bc2d613be72b24579fb2ef2277",
"assets/assets/lego/google_drive_main_view_lego/photographic-film.webp": "3bc95fdbfe411b4a45a3fefa1789ed13",
"assets/assets/lego/google_drive_main_view_lego/google-docs.webp": "cf831e6c05d3c10608a407480535170c",
"assets/assets/lego/google_drive_main_view_lego/pdf.webp": "ef947bec0d196380ae88bb2dcfa7bbb8",
"assets/assets/lego/google_drive_main_view_lego/google-sheets.webp": "9c31b67cbc99f4011a15c2fd38a7f9d8",
"assets/assets/lego/music_player_page_lego/music_disk.webp": "aa530f0a239c06f3ad36eb8d599a93c8",
"assets/assets/lego/netflix_main_view_lego/logo.ico": "41b45fdce09bd6acd07c7a8949da675e",
"assets/assets/lego/netflix_main_view_lego/img_2.webp": "c65ec6d7cf4c00026a1217e42cf66e88",
"assets/assets/lego/netflix_main_view_lego/img_3.webp": "c33bb84ac9b794432b2dbaf2cbb2bf61",
"assets/assets/lego/netflix_main_view_lego/logo.webp": "4bf3ff05c6bf07ab2cd6dabe3f323ae6",
"assets/assets/lego/netflix_main_view_lego/chrome-cast-svgrepo-com.svg": "4cc36b8b146b79900c6fab2690127b2d",
"assets/assets/lego/netflix_main_view_lego/wv22frLmCpXDRjKj4MWFwa4eTOK.webp": "0599c9543edb31a51e08c41f062c1419",
"assets/assets/lego/netflix_main_view_lego/img_1.webp": "7fa5e576c713062197e4fb77ead35b25",
"assets/assets/lego/youtube_main_view_lego/yt_logo_rgb_light.webp": "f31dfae768abcf58ac7ba3c9bd8079df",
"assets/assets/lego/youtube_main_view_lego/video.svg": "1b93d5414307118101a5d6c8c3bf20f3",
"assets/assets/lego/whatsapp_main_view_lego/check-all.svg": "8ea4959917dc40afe25bce79f4a06304",
"assets/assets/lego/whatsapp_main_view_lego/check.svg": "799406436c72ea8810d9256144c7a87d",
"assets/assets/lego/whatsapp_main_view_lego/camera.svg": "844c46866d98744d20fb96b37b5cdde4",
"assets/assets/lego/whatsapp_main_view_lego/pencil.svg": "c3c2b16533c92cadc845e4accc57fab2",
"assets/assets/lego/insta_style_feed_lego/chat.svg": "5f0a42298d31fab661e561190de406a1",
"assets/assets/lego/insta_style_feed_lego/iu.jpg": "c1d36ed41088228370232f9c813abcd0",
"assets/assets/lego/weather_page_lego/5.webp": "a61dbebf82619f1c8dfe2e5ffc6e472a",
"assets/assets/lego/weather_page_lego/9.webp": "52dd0ac7de0e8e236f2b5ffff00fa659",
"assets/assets/lego/weather_page_lego/8.webp": "db54b730607cd6ca359d304c516f616e",
"assets/assets/lego/weather_page_lego/4.webp": "c61731dd454c4ca77f4328e6a82b41a9",
"assets/assets/lego/weather_page_lego/14.webp": "e32d37034a764f0732afdecaf4d9ca4e",
"assets/assets/lego/weather_page_lego/13.webp": "a0a108333290cd130c7db3b549415e52",
"assets/assets/lego/weather_page_lego/3.webp": "ef11a57ddcd139d0c4e90e7525ebc609",
"assets/assets/lego/weather_page_lego/2.webp": "a350c8649c3560c78f5c5f8009c8a302",
"assets/assets/lego/weather_page_lego/12.webp": "27b5eee40c3c6d67e843880ec8979286",
"assets/assets/lego/weather_page_lego/1.webp": "3a2c2222254fa098184a39343ecca4ef",
"assets/assets/lego/weather_page_lego/11.webp": "db8384f860297f79ecab6c9c4a33e991",
"assets/assets/lego/weather_page_lego/7.webp": "752b31b5038b0439cf672596f6ed422e",
"assets/assets/lego/weather_page_lego/6.webp": "e6b0f12e9af14b33ea7d6f7289fa1e31",
"assets/assets/lego/netflix_intro_page_lego/logo.webp": "4bf3ff05c6bf07ab2cd6dabe3f323ae6",
"assets/assets/lego/netflix_intro_page_lego/screen_2.webp": "07f37b203fcf0767e1d2f7fa3cd513bd",
"assets/assets/lego/netflix_intro_page_lego/screen_3.webp": "16e1f73603d3d138a7069e427a58b850",
"assets/assets/lego/netflix_intro_page_lego/screen_4.webp": "278902108cbab6e385e83d41d038728a",
"assets/assets/lego/netflix_intro_page_lego/background-image.webp": "d1bc94c93071591b5d99037062cad4ba",
"assets/assets/lego/spotify_main_view_lego/spotify.svg": "129620aeff07b4caa27f1b3ab10cbbca",
"assets/assets/lego/money_transfer_view_lego/001-paypal.webp": "49a62f564b58faa49d8defbbc886adff",
"assets/assets/lego/money_transfer_view_lego/015-citi.webp": "b02229b90af6317c742de6ce1a8b8b30",
"assets/assets/lego/money_transfer_view_lego/menu-open.svg": "b70cf1aed67b61da674a8095b198a889",
"assets/assets/lego/money_transfer_view_lego/004-visa.webp": "9cf0552356c97db1430108c960547923",
"assets/assets/lego/money_transfer_view_lego/003-american%2520express.webp": "1fea567ca07982052275285c8ecf2fd1",
"assets/assets/lego/money_transfer_view_lego/002-mastercard.webp": "36077c6490109161733216fc700e218c",
"assets/assets/lego/money_transfer_view_lego/trello.svg": "ce8130d1d6c2c8581b09a0adb1627997",
"assets/assets/lego/money_transfer_view_lego/022-maestro.webp": "e1923f1a44e2764859d4baf336e8b84d",
"assets/assets/lego/login_view3_lego/google.webp": "d1b48d53b47d60d3f00d60e6c561bb55",
"assets/assets/lego/login_view3_lego/twitter.webp": "c6e562784f15048688181f183510b8d1",
"assets/assets/lego/login_view3_lego/facebook.webp": "83deaa15c9e82f37e588bdf392d14876",
"assets/assets/lego/login_view3_lego/youtube.webp": "0e2769b8263285f46ca9065b200e7bd0",
"assets/assets/lego/request_notification_permission_page_lego/notification.png": "d7b389a3bf8b0f59ddde7c8832d0b02b",
"assets/assets/lego/toss_intro_page_lego/vaccine.png": "650029ce77279045a178073f3f9550a6",
"assets/assets/lego/toss_intro_page_lego/hospital.png": "23096c864fb3f401ed451856b54f19a9",
"assets/assets/lego/toss_intro_page_lego/money.png": "5326b763ec15d8fee65d07aa6fb9a18f",
"assets/assets/lego/google_search_result_page_lego/favicon.webp": "cfbe00f972c995f95f5d45b58edf421a",
"assets/assets/lego/login_and_register_page_lego/main.webp": "41e29a42db2f4fb870f14eeb73c3bda7",
"assets/assets/lego/music_list_page_lego/music_disk.webp": "aa530f0a239c06f3ad36eb8d599a93c8",
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
