import 'package:flutter/material.dart';
import 'package:flutter_mask_mvvm/ui/component/store_item.dart';
import 'package:flutter_mask_mvvm/ui/main_view_model.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: Text('마스크 재고 있는 곳 : ${viewModel.stores.length}곳'),
      ),
      body: ListView(
        children:
            viewModel.stores.map((store) => StoreItem(store: store)).toList(),
      ),
    );
  }
}
