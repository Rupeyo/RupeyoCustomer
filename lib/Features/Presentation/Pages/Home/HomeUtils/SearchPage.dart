import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 50,
        leading: const Icon(CupertinoIcons.back),
        actions: [
          Row(
            children: [
              Container(
                width: 230,
                decoration:
                    const BoxDecoration(shape: BoxShape.circle, color: Colors.black),
                child: const Text('Search'),
              )
            ],
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  const Icon(CupertinoIcons.search),
                  Text(
                    'Recent Searches',
                    style: const TextTheme().headlineMedium,
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
