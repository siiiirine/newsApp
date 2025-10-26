import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  final Map data;
  const NewsItem({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: 100, // minimum height
      ),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border(left: BorderSide(color: Colors.deepPurple, width: 12)),
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          SizedBox(width: 8),
          Image.network(
            data['image_url'],
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5),
                Text(
                  data['title'],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(data['description']),
              ],
            ),
          ),
          SizedBox(width: 8),
        ],
      ),
    );
  }
}
