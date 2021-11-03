import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ligretto/widgets/point_column.dart';

import 'Numbering.dart';

//Most az a terv, hogy a body-ból lehessen ezt példányosítani.

class ListItem extends StatelessWidget {
  const ListItem();

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // SliverAppBar(
        //   floating: true,
        // ),
        SliverList(
          delegate: SliverChildListDelegate([
            Container(
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.only(top: 30),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: allContainers,
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(bottom: 30),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ],
    );

    // return BlocConsumer<SearchBloc, SearchState>(
    //   listenWhen: (_, state) => state is SearchErrorEventState,
    //   listener: (context, state){
    //     if (state is SearchErrorEventState){
    //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.message)));
    //     }
    //   },
    //   buildWhen: (_, state) => state is SearchResultListState,
    //   builder: (context, state) {
    //     if (state is SearchResultListState) {
    //       return ListView.builder(
    //         padding: const EdgeInsets.all(8),
    //         itemBuilder: (context, index) {
    //           var user = state.users[index];
    //           return SizedBox(
    //             height: 90,
    //             child: Row(
    //               children: [
    //                 Image.network(user.imageUrl, width: 90,),
    //                 Text(user.name),
    //               ],
    //             ),
    //           );
    //         },
    //         itemCount: state.users.length,
    //       );
    //     } else {
    //       return Container();
    //     }
    //   },
    // );
  }
}

List<Widget> allContainers = [
  Flexible(
    flex: 1,
    child: SizedBox(),
  ),
  Flexible(
    flex: 2,
    child: Container(
      height: 1000,
      //width: 50,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25), bottomLeft: Radius.circular(25)),
      ),
      child: Numbering()//PointColumn(0)//Numbering(),
    ),
  ),
  Flexible(
    flex: 4,
    child: Container(
      height: 1000,
      //width: 50,
      decoration: BoxDecoration(
        color: Color(0xE3D2CF1D),
      ),
      //padding: const EdgeInsetsDirectional.all(30),
      child: PointColumn(1)
    ),
  ),
  Flexible(
    flex: 4,
    child: Container(
      height: 1000,
      //width: 50,
      decoration: BoxDecoration(
        color: Colors.black54,
        //borderRadius: BorderRadius.circular(25),
      ),
      child: PointColumn(2)
    ),
  ),
  Flexible(
    flex: 4,
    child: Container(
      height: 1000,
      //width: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
      child: PointColumn(3)
    ),
  ),
  Flexible(
    flex: 4,
    child: Container(
      height: 1000,
      //width: 50,
      decoration: BoxDecoration(
        color: Color(0xD5C2522D),
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(25), bottomRight: Radius.circular(25)),
      ),
      child: PointColumn(4)
    ),
  ),
];
