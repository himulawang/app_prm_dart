import "package:polymer/polymer.dart";
import "../lib_app_prm_dart.dart";

@CustomTag('manage-node')
class ManageNodeElement extends PolymerElement {
  @observable List nodes = [];

  ManageNodeElement.created(): super.created();

  void refresh() {
    NodeListIndexedDBStore.get(0)
    .then((NodeList list) {
      List tmp = [];
      list.getList().forEach((i, Node v) {
        tmp.add(v);
      });
      nodes = tmp;
    });
  }
}
