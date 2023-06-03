import 'package:flutter/material.dart';
import 'package:weather_app/pages/home_page.dart';
import 'home_page.dart';

class SearchPage extends StatelessWidget {
   SearchPage({Key? key}) : super(key: key);
  String? CityName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Search for City" ),widthFactor: 2),
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return const HomePage();
          }));
        }, icon: const Icon(Icons.arrow_back_ios_new_rounded)),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: TextField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 25,horizontal: 25),
              hintText: "Type here",
              hintStyle: const TextStyle(fontSize: 13),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
              suffixIcon: const Icon(Icons.search_rounded),
              labelText: "Search",
            ),
          ),
        ),
      ),
    );
  }
}
