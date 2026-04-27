import 'dart:async';
import 'dart:collection';

import 'package:any_image_view/any_image_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:searchable_listview/searchable_listview.dart';
import 'package:talabat_app/core/widgets/loading_widget.dart';
import 'package:talabat_app/features/search/domain/entities/search_entity.dart';
import 'package:talabat_app/features/search/presentation/cubit/search_cubit.dart';
import 'package:talabat_app/features/search/presentation/cubit/search_state.dart';

class SearchFeatureScreen extends HookWidget {
  const SearchFeatureScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SearchCubit>();
    Timer? timer;
    final controllerSearch = useTextEditingController();

    controllerSearch.addListener(() async {
      if (timer != null) {
        timer!.cancel();
      }

      timer = Timer.periodic(Duration(milliseconds: 500), (timer) async {
        if (timer.tick == 1) {
          cubit.getSearchMethod(name: controllerSearch.text);
          timer.cancel();
        }
      });
    });
    return Scaffold(
      // appBar: AppBar(title: const Text('Search Items')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: .start,
                  children: [
                    BackButton(),
                    Expanded(
                      child: SearchBar(
                        elevation: .all(2),
                        controller: controllerSearch,
                      ),
                    ),
                  ],
                ),
                BlocBuilder<SearchCubit, SearchState>(
                  builder: (context, state) {
                    switch (state) {
                      case SearchSuccessState _:
                        if (state.items.isEmpty) {
                          return Center(child: Text("No items found"));
                        }
                        return ListView.builder(
                          primary: false,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: state.items.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            final item = state.items[index];
                            return ListTile(
                              title: Text(item.nameAr),
                              leading: AnyImageView(
                                imagePath: item.imageUrl,
                                height: 75,
                                width: 75,
                              ),
                              trailing: Text("ريال ${item.price}"),
                              onTap: () {
                                final matches = GoRouter.of(
                                  context,
                                ).routerDelegate.currentConfiguration.matches;
                                if (matches.length > 1) {
                                  final previousLocation =
                                      matches[matches.length - 2]
                                          .matchedLocation;
                                  if (previousLocation == '/addItemList') {
                                    context.pop(item);
                                  }
                                }
                                // print(matches);

                                // context.pop(item);
                              },
                            );
                          },
                        );
                      default:
                        return CircularProgressIndicator();
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<String> names = ["Fahad", "Seed"];
