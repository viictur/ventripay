import 'package:flutter/material.dart';
import 'package:summer_flutter/authentication/views/card/physical_card.dart';
import 'package:summer_flutter/authentication/views/card/virtual_card.dart';
import 'package:summer_flutter/core/app_styles.dart';
import 'package:summer_flutter/core/extension.dart';

class CardView extends StatefulWidget {
  const CardView({super.key});

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  final List<String> tab = [
    'Virtual Card',
    'Physical Card',
  ];

  @override
  void initState() {
    tabController = TabController(
      length: tab.length,
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VentriPay Card'),
        toolbarHeight: 30,
        leading: Container(
          decoration: BoxDecoration(
            color: Color(0xFFE8EAED),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.arrow_back,
            color: Color(0xFF003366),
          ),
        ),
        actions: [
          Text(
            'Q&A',
            style: AppStyles.montserrat16Xl.copyWith(
              color: Color(0xFF003366),
              fontSize: 15.44,
            ),
          ),
        ],
        actionsPadding: EdgeInsets.symmetric(
          horizontal: 12,
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 40,
            width: context.getWidth(0.7),
            child: TabBar(
              dividerColor: Colors.transparent,
              controller: tabController,
              tabs: tab.map((t) => Tab(text: t)).toList(),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [VirtualCard(), PhysicalCard()],
            ),
          ),
        ],
      ),
    );
  }
}
