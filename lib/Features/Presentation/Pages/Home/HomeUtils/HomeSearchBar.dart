import 'package:flutter/material.dart';

class SearchAppBar extends StatefulWidget {
  const SearchAppBar({super.key});

  @override
  State<SearchAppBar> createState() => _SearchAppBarState();
}

class _SearchAppBarState extends State<SearchAppBar> {

  //bool isDark = false;
  @override
  Widget build(BuildContext context) {

      // final ThemeData themeData = ThemeData(
      //  useMaterial3: true,
       // brightness: isDark ? Brightness.dark : Brightness.light);

        return  Padding(
       padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Container(
            // Add padding around the search bar
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            // Use a Material design search bar
            child: SizedBox(
               height: 40,
              child: TextField(
                  //controller: _searchController,
                  decoration: InputDecoration( 
                  enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 0, color: Color(0XFFe8e8e8))
                  ),
                  contentPadding: const EdgeInsets.all(10),
                  filled: true,
                  fillColor: const Color(0XFFe8e8e8),
                  //fillColor: Colors.black54,
                  hintText: 'Search "tomato"' , hintStyle: const TextStyle(fontSize: 15,),
                  // Add a clear button to the search bar
                  // suffixIcon: IconButton(
                  //   icon: Icon(Icons.clear),
                    //   onPressed: () => //_searchController.clear
                    //   (),
                    // ),
                    // Add a search icon or button to the search bar
                    prefixIcon: IconButton(
                    icon: const Icon(Icons.search_outlined , size: 20, color: Colors.black,),
                    onPressed: () {
                      // Perform the search here
                    },
                  ),
                ),
              ),
            ),
          ),
        )
      );
    }  
  }
