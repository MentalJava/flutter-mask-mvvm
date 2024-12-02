import 'package:flutter/material.dart';
import 'package:flutter_mask_mvvm/data/model/mask_store.dart';
import 'package:flutter_mask_mvvm/ui/component/store_item.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('마스크 재고 있는 곳 : 0곳'),
      ),
      body: ListView(
        children: [
          StoreItem(
            store: MaskStore(
                name: 'text',
                addr: 'text2',
                distance: 10,
                remainStat: 'some',
                latitude: 10,
                longitude: 0),
          ),
          StoreItem(
            store: MaskStore(
                name: 'text',
                addr: 'text2',
                distance: 10,
                remainStat: 'some',
                latitude: 10,
                longitude: 0),
          ),
        ],
      ),
    );
  }
}
