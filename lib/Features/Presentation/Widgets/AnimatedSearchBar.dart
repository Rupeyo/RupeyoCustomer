import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedSearchBar extends StatefulWidget {
  const AnimatedSearchBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AnimatedSearchBarState createState() => _AnimatedSearchBarState();
}

class _AnimatedSearchBarState extends State<AnimatedSearchBar> {
  final List<String> _placeholders = [
    'Search for "Lime Juice"',
    'Search for "Detergant"',
    'Search for "Green Tea"',
    'Search for "Cherry Tomato"',
    'Search for "Parsley"',
  ];
  int _currentPlaceholderIndex = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startAutoCycle();
  }

  void _startAutoCycle() {
    const Duration duration = Duration(seconds: 3);
    _timer = Timer.periodic(duration, (timer) {
      setState(() {
        _currentPlaceholderIndex =
            (_currentPlaceholderIndex + 1) % _placeholders.length;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: InkWell(
          onTap: () {
            showSearch(context: context, delegate: MySearchDelegate());
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              border: Border.all(color: Colors.grey.shade200),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(CupertinoIcons.search),
                    ),
                  ],
                ),
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  child: Text(
                    textAlign: TextAlign.left,
                    _placeholders[_currentPlaceholderIndex],
                    key: ValueKey<int>(_currentPlaceholderIndex),
                    style: const TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MySearchDelegate extends SearchDelegate {

  List<String> searchResults = [
      'FruitsAndVegitables',
    'Atta,Rice,Oil&Dals',
    'Masala&Dry Fruits',
    'Sweet Cravings',
    'Frozen Food & Ice Creams',
    'Packaged Food',
    'Dairy,Bread & Eggs',
    'Tea,Coffee & More',
    'Biscuits',
  ];

  @override
  List<Widget>? buildActions(BuildContext context) => [IconButton(onPressed: (){
    if (query.isEmpty) {
      close(context, null);
    } else {
      query='';
    }
    }, icon: const Icon(CupertinoIcons.clear))];

  @override
  Widget? buildLeading(BuildContext context) => IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.back)); 

  @override
  Widget buildResults(BuildContext context) => Center(
    child: Text(query, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),),
  );

  @override
  Widget buildSuggestions(BuildContext context) {
   List<String> suggestions= searchResults.where((searchResults){
    final result  = searchResults.toLowerCase();
    final input = query.toLowerCase();
    return result.contains(input);
   }).toList();    
    return ListView.builder(itemBuilder: (context, index){
      final suggestion = suggestions[index];
      return ListTile(
        title: Text(suggestion),
        onTap: (){
          query = suggestion;

          showResults(context);
        },
      );
    }, 
    
    itemCount: suggestions.length,);
    
  
  }
}
