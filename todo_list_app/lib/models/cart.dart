
import 'package:flutter/foundation.dart';
import 'package:todo_list_app/models/catalog.dart';

class CartModel extends ChangeNotifier {
  /// L'adossement terrain privé [catalog].
  late CatalogModel _catalog;

  /// État interne et privé du panier. Stocke les identifiants de chaque élément.
  final List<int> _itemIds = [];

  /// Le catalogue actuel. Utilisé pour construire des éléments à partir d'identifiants numériques.
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;
    // Notifier les auditeurs, au cas où le nouveau catalogue fournirait des informations
    // différent du précédent. Par exemple, la disponibilité d'un article
    // pourrait avoir changé.
    notifyListeners();
  }

  /// List of items in the cart.
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  /// The current total price of all items.
  int get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  /// Adds [item] to cart. This is the only way to modify the cart from outside.
  void add(Item item) {
    _itemIds.add(item.id);
    // This line tells [Model] that it should rebuild the widgets that
    // depend on it.
    notifyListeners();
  }

  void remove(Item item) {
    _itemIds.remove(item.id);
    // Don't forget to tell dependent widgets to rebuild _every time_
    // you change the model.
    notifyListeners();
  }
}