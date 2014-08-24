library orm;

Map orm = {
    'Node': {
        'Model': {
            'pk': [1],
            'column': [
                'groupId',
                'id',
                'name',
                'host',
                'port',
                'password',
            ],
            'toAddFilter': [],
            'toSetFilter': [],
            'toFullFilter': [],
            'toAbbFilter': [],
            'toListFilter': [],
        },
        'ModelStore': {
            'storeOrder': [
                {
                    'type': 'indexedDB',
                    'master': 'prm',
                    'objectStore': 'Node',
                },
            ],
        },
        'List': {
            'className': 'NodeList',
            'pk': [0],
            'childPK': [1],
        },
        'ListStore': {
            'storeOrder': [
                {
                    'type': 'indexedDB',
                    'master': 'prm',
                    'objectStore': 'NodeList',
                },
            ],
        },
        'PK': {
            'className': 'NodePK',
        },
        'PKStore': {
            'storeOrder': [
                {
                    'type': 'indexedDB',
                    'master': 'prm',
                    'objectStore': 'PK',
                    'key': 'NodePK',
                },
            ],
        },
    },
};
