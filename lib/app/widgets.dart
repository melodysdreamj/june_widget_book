import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

import '../../widget_book/facebook_main_view_lego/_/_.dart' as facebook_main_view_lego;
import '../../widget_book/netflix_main_view_lego/_/_.dart' as netflix_main_view_lego;
import '../../widget_book/insta_personal_page_lego/_/_.dart' as insta_personal_page_lego;
import '../../widget_book/toss_intro_page_lego/_/_.dart' as toss_intro_page_lego;
import '../../widget_book/hello_world_page_lego/_/_.dart' as hello_world_page_lego;

final List<Tuple2<String, Widget>> widgets = [
  Tuple2('facebook_main_view_lego', facebook_main_view_lego.NewView()),
  Tuple2('netflix_main_view_lego', netflix_main_view_lego.NewView()),
  Tuple2('insta_personal_page_lego', insta_personal_page_lego.NewView()),
  Tuple2('toss_intro_page_lego', toss_intro_page_lego.NewView()),
  Tuple2('hello_world_page_lego', hello_world_page_lego.NewView())
];
