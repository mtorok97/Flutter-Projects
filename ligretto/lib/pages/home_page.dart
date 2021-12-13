import 'package:flutter/material.dart';
import 'package:ligretto/widgets/drawer.dart';
import 'package:ligretto/widgets/list_item.dart';
import '../common_imports.dart';
import 'init_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final L10n l10n = L10n.of(context)!;

    return DefaultTabController(
      length: tabsNum,
      child: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          //leading: const Icon(Icons.arrow_back),
          title: Text(l10n.scoring),
          //actions: const [Text("Action1"), Text("Action2")],
          bottom: TabBar(
            onTap: (int index) {},
            tabs: [
              for (int i = 0; i < tabsNum; i++)
                Tab(
                  icon: Icon(Icons.directions_bike),
                ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            for (int i = 0; i < tabsNum; i++) ListItem(i)
          ], //, const ListItem(), const ListItem()],
        ),
      ),
    );
  }
}
