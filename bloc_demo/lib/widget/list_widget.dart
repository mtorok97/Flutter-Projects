import 'package:bloc_demo/bloc/bloc_search_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class ListWidget extends StatelessWidget {
  const ListWidget();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchBloc, SearchState>(
      listenWhen: (_, state) => state is SearchErrorEventState,
      listener: (context, state){
        if (state is SearchErrorEventState){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.message)));
        }
      },
      buildWhen: (_, state) => state is SearchResultListState,
      builder: (context, state) {
        if (state is SearchResultListState) {
          return ListView.builder(
            padding: const EdgeInsets.all(8),
            itemBuilder: (context, index) {
              var user = state.users[index];
              return SizedBox(
                height: 90,
                child: Row(
                  children: [
                    Image.network(user.imageUrl, width: 90,),
                    Text(user.name),
                  ],
                ),
              );
            },
            itemCount: state.users.length,
          );
        } else {
          return Container();
        }
      },
    );
  }
}