import 'package:flutter/material.dart';

final List<String> languages = [
  "Java",
  "Python",
  "C++",
  "JavaScript",
  "Ruby",
  "Go",
  "Swift",
  "Kotlin",
  "Rust",
  "PHP",
  "TypeScript",
  "C#",
  "Perl",
  "Haskell",
  "Scala",
  "Lua",
  "R",
  "Dart",
  "SQL",
  "COBOL",
];

class SearchBarDemo extends StatefulWidget {
  const SearchBarDemo({super.key});

  @override
  State<SearchBarDemo> createState() => _SearchBarDemoState();
}
class _SearchBarDemoState extends State<SearchBarDemo> {

  Widget buildLanguageCard(String title){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 2),
      child: Card(
        child: ListTile(
          onTap: (){},
          leading: const Icon(Icons.code_outlined),
          title: Text(title),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Bar Demo'),
        actions: [
          IconButton(
              onPressed: () async{
                await showSearch(
                    context: context,
                    delegate: MySearchDelicate()
                );
              },
              icon: const Icon(Icons.search_outlined)
          )
        ],
      ),
      body: ListView.builder(
        itemCount: languages.length,
          itemBuilder: (context,index){
            return buildLanguageCard(languages[index]);
          }
      ),
    );
  }
}

class MySearchDelicate extends SearchDelegate<String>{

  @override
  List<Widget>? buildActions(BuildContext context) {
    return <Widget>[
      if(query.isNotEmpty)
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: (){
          query = '';
          showSuggestions(context);
          },
        )
    ];

  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
        onPressed: (){
          close(context, '');
        },
        icon: const Icon(Icons.arrow_back)
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return const Placeholder();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return SuggestionList(query: query);
  }
}

class SuggestionList extends StatelessWidget {
  const SuggestionList({super.key,required this.query});
  final String query;

  @override
  Widget build(BuildContext context) {
    Widget buildLanguageCard(String title){
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 2),
        child: Card(
          child: ListTile(
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context)=> ResultScreen(selectedResult: title)
                  )
              );
            },
            leading: const Icon(Icons.code_outlined),
            title: Text(title),
          ),
        ),
      );
    }

    List<String> results = languages.where((data)
    => data.toLowerCase().contains(query)).toList();

    return ListView.builder(
        itemCount: results.length,
        itemBuilder: (context,index){
          return buildLanguageCard(results[index]);
        }
    );
  }
}
class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key,required this.selectedResult});
  final String selectedResult;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(selectedResult),
    );
  }
}
