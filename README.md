# Carrot2 docker image

this is just a docker wrapper around the [Carrot 2](https://github.com/carrot2/carrot2) topic modeling framework

This tool provides a REST API

## Configuration

requires a `.env` file at the root of the project folder, containing the following vars:

|Variable|Meaning|
|-|-|
|HEAP_SIZE|the Java heap size, for example 2g|

## Getting started
```console

root@prod:/home/docker/search_api# curl -X POST 'http://localhost:1000/service/cluster' -H "Content-Type: application/json" -d '{"algorithm": "Lingo", "language": "French", 
  "documents": [
    { "title": "Cahier piqûre 24x32cm 96 pages 90g quadrillé 5x5. Couverture polypropylène Orange" },
    { "title": "Cahier piqûre 24x32cm 96 pages 90g quadrillé 5x5. Couverture polypropylène Rose" },
    { "title": "Cahier piqûre 24x32cm 96 pages 90g quadrillé 5x5. Couverture polypropylène Gris" },
    { "title": "Cahier piqûre 24x32cm 96 pages 90g quadrillé 5x5. Couverture polypropylène Violet" },
    { "title": "OXFORD Cahier COLORLIFE piqûre 96 pages Seyès 17x22. Couverture carte coloris Vert" },
    { "title": "OXFORD Cahier COLORLIFE piqûre 96 pages Seyès 21x29,7. Couverture carte coloris Bleu" },
    { "title": "OXFORD Cahier COLORLIFE piqûre 96 pages Seyès 24x32. Couverture carte coloris Jaune" },
    { "title": "OXFORD Cahier COLORLIFE piqûre 96 pages Seyès 24x32. Couverture carte coloris Rouge" },
    { "title": "OXFORD Cahier COLORLIFE piqûre 96 pages Seyès 24x32. Couverture carte coloris Vert" }
  ]
}'


```
