import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:indeoendent_tourist_app_main/trip_card.dart';

Map<String, Padding> allAppArticles = {
  'Elmoezz' : const Padding(
    padding: EdgeInsets.all(8.0),
    child: SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Elmoezz Street is one of the oldest streets in Cairo, and it is one of the most important tourist attractions in Cairo, as it is one of the most important Islamic monuments in Cairo, and it is one of the most important tourist attractions in Cairo, as it is one of the most important Islamic monuments in Cairo, and it is one of the most important tourist attractions in Cairo, as it is one of the most important Islamic monuments in Cairo, and it is one of the most important tourist attractions in Cairo, as it is one of the most important Islamic monuments in Cairo, and it is one of the most important tourist attractions in Cairo, as it is one of the most important Islamic monuments in Cairo, and it is one of the most important tourist attractions in Cairo, as it is one of the most important Islamic monuments in Cairo, and it is one of the most important tourist attractions in Cairo, as it is one of the most important Islamic monuments in Cairo",
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                height: 1.5
            ),
          ),
          DestinationPhoto(imageName: 'elmoezz.jpg', text: ''),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sed nunc laoreet, mollis ante vitae, congue neque. Aliquam varius scelerisque nulla, eget efficitur sapien tincidunt et. Nam hendrerit in sapien et mattis. In rutrum est ut nibh rhoncus vehicula. Praesent venenatis nisi mi, eu lacinia augue congue gravida. Duis pharetra libero non justo eleifend auctor. Nulla ac porttitor sapien. Aliquam placerat lorem elit, at ullamcorper ipsum tempor ut. Etiam metus nisl, accumsan a cursus quis, viverra rhoncus dolor. Mauris elementum aliquam pretium. Maecenas sed malesuada nulla. Sed in augue nec ex feugiat venenatis. Donec ac diam nec libero condimentum semper a ut lorem. Phasellus vestibulum tortor vel magna congue, non aliquam nibh vestibulum. Nam in tellus vel quam accumsan molestie ac id turpis.",
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                height: 1.5
            ),
          )
        ],
      ),
    ),
  )
};