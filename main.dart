import 'dart:html';
import 'dart:indexed_db';
import 'dart:async';

import 'package:polymer/polymer.dart';
import 'package:paper_elements/paper_button.dart';

//import 'i_redis/i_redis.dart';

import 'package:logging/logging.dart';

import 'lib_app_prm_dart.dart';
import './i_config/store.dart';

main() {
  initPolymer();

  IIndexedDBHandlerPool indexedDBPool = new IIndexedDBHandlerPool();
  indexedDBPool.init(store['indexedDB'], idbUpgrade)
  .then((_) {
    print('IDB Inited');
  });
  /*
  querySelector('#btn-drawer-toggle').onClick.listen((Event e) {
    querySelector('#draw-panel').setAttribute('selected', 'drawer');
  });
  var element = new DivElement();
  element.text = "Hello, World!";
  document.body.children.add(element);
  
  var handler = new IRedis();
  handler.connect()
  .then((_) {
    return handler.set('a', 'ila');
  })
  .then((result) {
    print(result);
    return handler.get('a');
  })
  .then((result) {
    print(result);
  })
  
  ;
  */
}

