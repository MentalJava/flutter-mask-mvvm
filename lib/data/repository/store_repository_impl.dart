import 'dart:convert';

import 'package:flutter_mask_mvvm/data/model/mask_store.dart';
import 'package:flutter_mask_mvvm/data/repository/store_repository.dart';
import 'package:http/http.dart' as http;

class StoreRepositoryImpl implements StoreRepository {
  @override
  Future<List<MaskStore>> getStores() async {
    final response = await http.get(Uri.parse(
        'https://gist.githubusercontent.com/junsuk5/bb7485d5f70974deee920b8f0cd1e2f0/raw/063f64d9b343120c2cb01a6555cf9b38761b1d94/sample.json'));

    final List jsonList = jsonDecode(response.body)['stores'];

    return jsonList
        .where((e) => e['remain_stat'] != null)
        .map((e) => MaskStore(
              name: e['name'] as String,
              addr: e['addr'] as String,
              distance: 0,
              remainStat: e['remain_stat'] as String,
              latitude: e['lat'] as double,
              longitude: e['lng'] as double,
            ))
        .toList();
  }
}
