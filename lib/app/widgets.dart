import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

import '../../widget_book/request_ad_permission_page_lego/_/_.dart' as request_ad_permission_page_lego;
import '../../widget_book/profile_view_2_lego/_/_.dart' as profile_view_2_lego;
import '../../widget_book/google_drive_main_view_lego/_/_.dart' as google_drive_main_view_lego;
import '../../widget_book/music_player_page_lego/_/_.dart' as music_player_page_lego;
import '../../widget_book/ios_notes_view_lego/_/_.dart' as ios_notes_view_lego;
import '../../widget_book/youtube_main_view_lego/_/_.dart' as youtube_main_view_lego;
import '../../widget_book/whatsapp_main_view_lego/_/_.dart' as whatsapp_main_view_lego;
import '../../widget_book/insta_style_feed_lego/_/_.dart' as insta_style_feed_lego;
import '../../widget_book/netflix_intro_page_lego/_/_.dart' as netflix_intro_page_lego;
import '../../widget_book/spotify_main_view_lego/_/_.dart' as spotify_main_view_lego;
import '../../widget_book/money_transfer_view_lego/_/_.dart' as money_transfer_view_lego;
import '../../widget_book/gmail_main_view_lego/_/_.dart' as gmail_main_view_lego;
import '../../widget_book/telegram_main_lego/_/_.dart' as telegram_main_lego;
import '../../widget_book/facebook_messager_main_view_lego/_/_.dart' as facebook_messager_main_view_lego;
import '../../widget_book/chat_app_view_detail_lego/_/_.dart' as chat_app_view_detail_lego;
import '../../widget_book/request_notification_permission_page_lego/_/_.dart' as request_notification_permission_page_lego;
import '../../widget_book/kakao_chatroom_list_lego/_/_.dart' as kakao_chatroom_list_lego;
import '../../widget_book/login_and_register_page_lego/_/_.dart' as login_and_register_page_lego;
import '../../widget_book/ios_reminder_view_lego/_/_.dart' as ios_reminder_view_lego;
import '../../widget_book/music_list_page_lego/_/_.dart' as music_list_page_lego;
import '../../widget_book/chat_app_view_lego/_/_.dart' as chat_app_view_lego;
import '../../widget_book/listview_delete_animation_demo_lego/_/_.dart' as listview_delete_animation_demo_lego;
import '../../widget_book/world_time_lego/_/_.dart' as world_time_lego;
import '../../widget_book/reorderable_listview_demo_lego/_/_.dart' as reorderable_listview_demo_lego;
import '../../widget_book/select_cities_bottom_sheet_lego.bottom_sheet/usage.dart' as select_cities_bottom_sheet_lego_bottom_sheet;
import '../../widget_book/basic_snackbar_lego.snackbar/usage.dart' as basic_snackbar_lego_snackbar;
import '../../widget_book/calculator_ui_lego/_/_.dart' as calculator_ui_lego;
import '../../widget_book/calculator_page_lego/_/_.dart' as calculator_page_lego;
import '../../widget_book/calculator_neumorphism_ui_lego/_/_.dart' as calculator_neumorphism_ui_lego;
import '../../widget_book/basic_drawer_lego/_/_.dart' as basic_drawer_lego;
import '../../widget_book/basic_zoom_drawer_lego/_/_.dart' as basic_zoom_drawer_lego;
import '../../widget_book/chatgpt_drawer_view_lego/_/_.dart' as chatgpt_drawer_view_lego;
import '../../widget_book/weather_page_lego/_/_.dart' as weather_page_lego;
import '../../widget_book/google_search_result_page_lego/_/_.dart' as google_search_result_page_lego;
import '../../widget_book/login_view3_lego/_/_.dart' as login_view3_lego;
import '../../widget_book/facebook_main_view_lego/_/_.dart' as facebook_main_view_lego;
import '../../widget_book/netflix_main_view_lego/_/_.dart' as netflix_main_view_lego;
import '../../widget_book/insta_personal_page_lego/_/_.dart' as insta_personal_page_lego;
import '../../widget_book/toss_intro_page_lego/_/_.dart' as toss_intro_page_lego;
import '../../widget_book/hello_world_page_lego/_/_.dart' as hello_world_page_lego;

final List<Tuple2<String, Widget>> widgets = [
  Tuple2('request_ad_permission_page_lego', request_ad_permission_page_lego.NewView()),
  Tuple2('profile_view_2_lego', profile_view_2_lego.NewView()),
  Tuple2('google_drive_main_view_lego', google_drive_main_view_lego.NewView()),
  Tuple2('music_player_page_lego', music_player_page_lego.NewView()),
  Tuple2('ios_notes_view_lego', ios_notes_view_lego.NewView()),
  Tuple2('youtube_main_view_lego', youtube_main_view_lego.NewView()),
  Tuple2('whatsapp_main_view_lego', whatsapp_main_view_lego.NewView()),
  Tuple2('insta_style_feed_lego', insta_style_feed_lego.NewView()),
  Tuple2('netflix_intro_page_lego', netflix_intro_page_lego.NewView()),
  Tuple2('spotify_main_view_lego', spotify_main_view_lego.NewView()),
  Tuple2('money_transfer_view_lego', money_transfer_view_lego.NewView()),
  Tuple2('gmail_main_view_lego', gmail_main_view_lego.NewView()),
  Tuple2('telegram_main_lego', telegram_main_lego.NewView()),
  Tuple2('facebook_messager_main_view_lego', facebook_messager_main_view_lego.NewView()),
  Tuple2('chat_app_view_detail_lego', chat_app_view_detail_lego.NewView()),
  Tuple2('request_notification_permission_page_lego', request_notification_permission_page_lego.NewView()),
  Tuple2('kakao_chatroom_list_lego', kakao_chatroom_list_lego.NewView()),
  Tuple2('login_and_register_page_lego', login_and_register_page_lego.NewView()),
  Tuple2('ios_reminder_view_lego', ios_reminder_view_lego.NewView()),
  Tuple2('music_list_page_lego', music_list_page_lego.NewView()),
  Tuple2('chat_app_view_lego', chat_app_view_lego.NewView()),
  Tuple2('listview_delete_animation_demo_lego', listview_delete_animation_demo_lego.NewView()),
  Tuple2('world_time_lego', world_time_lego.NewView()),
  Tuple2('calculator_ui_lego', calculator_ui_lego.NewView()),
  Tuple2('calculator_page_lego', calculator_page_lego.NewView()),
  Tuple2('calculator_neumorphism_ui_lego', calculator_neumorphism_ui_lego.NewView()),
  Tuple2('weather_page_lego', weather_page_lego.NewView()),
  Tuple2('google_search_result_page_lego', google_search_result_page_lego.NewView()),
  Tuple2('login_view3_lego', login_view3_lego.NewView()),
  Tuple2('facebook_main_view_lego', facebook_main_view_lego.NewView()),
  Tuple2('netflix_main_view_lego', netflix_main_view_lego.NewView()),
  Tuple2('insta_personal_page_lego', insta_personal_page_lego.NewView()),
  Tuple2('toss_intro_page_lego', toss_intro_page_lego.NewView()),
  Tuple2('hello_world_page_lego', hello_world_page_lego.NewView()),
  Tuple2('basic_drawer_lego', basic_drawer_lego.NewView()),
  Tuple2('basic_zoom_drawer_lego', basic_zoom_drawer_lego.NewView()),
  Tuple2('chatgpt_drawer_view_lego', chatgpt_drawer_view_lego.NewView()),
  Tuple2('basic_snackbar_lego.snackbar', basic_snackbar_lego_snackbar.Usage()),
  Tuple2('reorderable_listview_demo_lego', reorderable_listview_demo_lego.NewView()),
  Tuple2('select_cities_bottom_sheet_lego.bottom_sheet', select_cities_bottom_sheet_lego_bottom_sheet.Usage())
];
