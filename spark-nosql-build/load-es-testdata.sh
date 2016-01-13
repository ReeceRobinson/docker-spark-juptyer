#! /bin/bash
curl -XPOST 'localhost:9200/bank/account/_bulk?pretty' --data-binary "@./resources/accounts.json"
curl 'localhost:9200/_cat/indices?v'
