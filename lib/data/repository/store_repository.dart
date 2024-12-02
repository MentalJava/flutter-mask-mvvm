import 'package:flutter_mask_mvvm/data/model/mask_store.dart';

abstract interface class StoreRepository {
  Future<List<MaskStore>> getStores();
}
