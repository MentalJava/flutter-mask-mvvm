import 'package:flutter/material.dart';
import 'package:flutter_mask_mvvm/data/repository/mock_location_repository.dart';
import 'package:flutter_mask_mvvm/data/repository/mock_store_repository.dart';
import 'package:flutter_mask_mvvm/data/repository/store_repository_impl.dart';
import 'package:flutter_mask_mvvm/ui/main_screen.dart';
import 'package:flutter_mask_mvvm/ui/main_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (context) {
          return MainViewModel(
            storeRepository: StoreRepositoryImpl(),
            locationRepository: MockLocationRepository(),
          );
        },
        child: const MainScreen(),
      ),
    );
  }
}
