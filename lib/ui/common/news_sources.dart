import 'package:flutter/material.dart';
import 'package:news/api/model/responses/sources/Sources.dart';
import 'package:news/ui/common/new_sources_tabs_view.dart';

class NewsSources extends StatefulWidget {
  List<Source> tabs;

  NewsSources({super.key, required this.tabs});

  @override
  State<NewsSources> createState() => _NewsSourcesState();
}

class _NewsSourcesState extends State<NewsSources> {
  int selectedIndex = 0;

  @override
  build(BuildContext context) {
    return DefaultTabController(
      length: widget.tabs.length,
      child: Column(
        children: [
          TabBar(
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            tabs: widget.tabs.map((source) => Tab(text: source.name)).toList(),
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            unselectedLabelStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          Expanded(
            child: NewsSourcesTabsView(
              source: widget.tabs[selectedIndex],
            ),
          ),
        ],
      ),
    );
  }
}
