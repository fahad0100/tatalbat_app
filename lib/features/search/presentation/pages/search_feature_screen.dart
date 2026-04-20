import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:searchable_listview/searchable_listview.dart';
import 'package:talabat_app/features/search/presentation/cubit/search_cubit.dart';

class SearchFeatureScreen extends StatelessWidget {
  const SearchFeatureScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final _ = context.read<SearchCubit>();

    return Scaffold(
      // appBar: AppBar(title: const Text('Search Items')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: Row(
            crossAxisAlignment: .start,
            children: [
              BackButton(),
              Expanded(
                child: SearchableList<String>(
                  initialList: names,
                  shrinkWrap: false,
                  itemBuilder: (name) => Text(name),
                  filter: (query) => names
                      .where(
                        (a) => a.toLowerCase().contains(query.toLowerCase()),
                      )
                      .toList(),
                  emptyWidget: const Center(child: Text('No results')),
                  inputDecoration: InputDecoration(labelText: 'Search actor'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<String> names = ["Fahad", "Seed"];
