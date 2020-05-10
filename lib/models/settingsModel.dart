import 'package:flutter/material.dart';
//import 'package:gatorblocks_rbt/pages/classes.dart';

class Option {
  Icon icon;
  String title;
  String subtitle;

  Option({this.icon, this.title, this.subtitle});
}

final options = [
  Option(
    icon: Icon(Icons.settings, size: 40.0),
    title: 'General',
    subtitle: 'Customize to make it your own.',
  ),
  Option(
    icon: Icon(Icons.class_, size: 40.0),
    title: 'Classes',
    subtitle: 'Manage your classes.',
    //Classes(),
  ),
  Option(
    icon: Icon(Icons.account_circle, size: 40.0),
    title: 'Account',
    subtitle: 'Manage account options.',
  ),
  Option(
    icon: Icon(Icons.laptop, size: 40.0),
    title: 'Useless Button',
    subtitle: 'You\'re just wasting your time clicking this button. Stop. Stop it.',
  ),
//  Option(
//    icon: Icon(Icons.invert_colors, size: 40.0),
//    title: 'Option Four',
//    subtitle: 'Lorem ipsum dolor sit amet, consect.',
//  ),
//  Option(
//    icon: Icon(Icons.watch_later, size: 40.0),
//    title: 'Option Five',
//    subtitle: 'Lorem ipsum dolor sit amet, consect.',
//  ),
//  Option(
//    icon: Icon(Icons.fastfood, size: 40.0),
//    title: 'Option Six',
//    subtitle: 'Lorem ipsum dolor sit amet, consect.',
//  ),
//  Option(
//    icon: Icon(Icons.local_airport, size: 40.0),
//    title: 'Option Seven',
//    subtitle: 'Lorem ipsum dolor sit amet, consect.',
//  ),

];