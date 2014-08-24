part of lib_app_prm_dart;

/*

Model

ObjectStore objectStore = db.createObjectStore('UserSingle', keyPath: '_pk');

PK
one objStore can hold all pks
ObjectStore objectStore = db.createObjectStore('PK', keyPath: '_pk');

List
ObjectStore objectStore = db.createObjectStore('SingleList', keyPath: '_pk');
objectStore.createIndex("_index", "_index", unique: false );

 */

Map idbUpgrade = {
    'prm': {
        '1': (Database db) {
          ObjectStore objectStore = db.createObjectStore('Node', keyPath: '_pk');
          objectStore.createIndex("_index", "_index", unique: false );

          db.createObjectStore('PK', keyPath: '_pk');
        },
        '2': (Database db) {
          ObjectStore objectStore = db.createObjectStore('NodeList', keyPath: '_pk');
          objectStore.createIndex("_index", "_index", unique: false );

          db.deleteObjectStore('Node');
        },
    },
};
