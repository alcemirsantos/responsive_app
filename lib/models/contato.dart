class Contato {
  String nome;
  int idade;
  String genero;
  String telefone;
  String email;
  Contato({
    required this.nome,
    required this.idade,
    required this.genero,
    required this.telefone,
    required this.email,
  });
}

final List<Contato> contatos = _json
    .map((e) => Contato(
          nome: e['name'],
          idade: e['age'],
          genero: e['gender'],
          telefone: e['phone'],
          email: e['email'],
        ))
    .toList();

final List<Map<String, dynamic>> _json = [
  {
    "_id": "62162da2bbeab2804a0a0448",
    "index": 0,
    "guid": "b001ec73-56b0-441b-a6ef-4c19fb65774d",
    "isActive": false,
    "balance": "\$1,531.88",
    "picture": "http://placehold.it/32x32",
    "age": 32,
    "eyeColor": "blue",
    "name": "Fulton Nixon",
    "gender": "male",
    "company": "ECRATER",
    "email": "fultonnixon@ecrater.com",
    "phone": "+1 (984) 462-3913",
    "address": "289 Willoughby Avenue, Bancroft, New Jersey, 9765",
    "about":
        "Duis eiusmod velit sint labore laboris et cupidatat. Consequat ad sunt amet minim ea fugiat. Do magna commodo non proident voluptate dolore eiusmod aliquip excepteur commodo voluptate. Aute est qui magna labore aute tempor tempor ex ullamco ut non amet labore laborum. Non consequat anim magna aliquip elit.\r\n",
    "registered": "2015-03-10T07:53:28 +03:00",
    "latitude": 54.512459,
    "longitude": -179.453049,
    "tags": [
      "occaecat",
      "consectetur",
      "deserunt",
      "occaecat",
      "elit",
      "minim",
      "consequat"
    ],
    "friends": [
      {"id": 0, "name": "Rena Middleton"},
      {"id": 1, "name": "Strickland Estrada"},
      {"id": 2, "name": "Valerie Norman"}
    ],
    "greeting": "Hello, Fulton Nixon! You have 6 unread messages.",
    "favoriteFruit": "strawberry"
  },
  {
    "_id": "62162da22de82aa35038fa50",
    "index": 1,
    "guid": "952a3fe7-df5f-44d2-9181-4ad9c0b35403",
    "isActive": false,
    "balance": "\$2,654.28",
    "picture": "http://placehold.it/32x32",
    "age": 25,
    "eyeColor": "blue",
    "name": "Penny Brewer",
    "gender": "female",
    "company": "SENMAO",
    "email": "pennybrewer@senmao.com",
    "phone": "+1 (933) 579-2605",
    "address": "991 Gain Court, Herbster, South Carolina, 5898",
    "about":
        "Mollit ullamco voluptate culpa ut. Quis consequat laboris proident deserunt occaecat duis qui est nulla eu. Ea reprehenderit sunt voluptate ut in proident velit dolor mollit ex. Anim sit proident aute qui cupidatat ut cupidatat.\r\n",
    "registered": "2017-09-09T08:36:39 +03:00",
    "latitude": -38.962305,
    "longitude": -165.173385,
    "tags": [
      "nulla",
      "deserunt",
      "reprehenderit",
      "cupidatat",
      "ea",
      "veniam",
      "in"
    ],
    "friends": [
      {"id": 0, "name": "Hamilton Rojas"},
      {"id": 1, "name": "James Casey"},
      {"id": 2, "name": "Goff Cotton"}
    ],
    "greeting": "Hello, Penny Brewer! You have 1 unread messages.",
    "favoriteFruit": "strawberry"
  },
  {
    "_id": "62162da2aeddd6e1da287902",
    "index": 2,
    "guid": "0e947231-0cef-419f-a586-e643ace9d0b1",
    "isActive": false,
    "balance": "\$2,357.49",
    "picture": "http://placehold.it/32x32",
    "age": 34,
    "eyeColor": "brown",
    "name": "Mona Whitaker",
    "gender": "female",
    "company": "MARKETOID",
    "email": "monawhitaker@marketoid.com",
    "phone": "+1 (997) 526-2897",
    "address": "412 Hubbard Place, Boonville, Maine, 4819",
    "about":
        "Eu cillum mollit nulla qui do do ad sunt tempor. Officia esse do esse dolor ipsum elit sit nostrud aliqua laborum ut. Ea aliqua non voluptate ad ullamco aliqua. Irure officia consectetur laborum exercitation.\r\n",
    "registered": "2014-06-24T11:46:24 +03:00",
    "latitude": -24.528198,
    "longitude": 169.561215,
    "tags": ["mollit", "aliqua", "est", "ut", "nulla", "deserunt", "aliquip"],
    "friends": [
      {"id": 0, "name": "Mavis Stevenson"},
      {"id": 1, "name": "Brittany Short"},
      {"id": 2, "name": "Espinoza Hunt"}
    ],
    "greeting": "Hello, Mona Whitaker! You have 2 unread messages.",
    "favoriteFruit": "apple"
  },
  {
    "_id": "62162da2f9d47f24d4aa20b6",
    "index": 3,
    "guid": "92823b28-635a-4948-a43e-0160481a4eff",
    "isActive": false,
    "balance": "\$2,347.04",
    "picture": "http://placehold.it/32x32",
    "age": 23,
    "eyeColor": "blue",
    "name": "Sheppard Campos",
    "gender": "male",
    "company": "PLEXIA",
    "email": "sheppardcampos@plexia.com",
    "phone": "+1 (965) 432-2506",
    "address": "293 Clarendon Road, Blodgett, Delaware, 1434",
    "about":
        "Consequat irure pariatur et aute aute consectetur. Enim pariatur tempor excepteur reprehenderit exercitation est duis culpa culpa cupidatat aliquip. Excepteur veniam enim magna culpa deserunt sunt sunt ipsum anim dolore veniam. Aliquip veniam reprehenderit velit exercitation id aute dolore cupidatat aliqua irure minim.\r\n",
    "registered": "2016-02-22T06:16:52 +03:00",
    "latitude": 33.861566,
    "longitude": -138.326716,
    "tags": ["nulla", "amet", "duis", "consequat", "nisi", "eu", "velit"],
    "friends": [
      {"id": 0, "name": "Whitfield Osborn"},
      {"id": 1, "name": "Church Dickerson"},
      {"id": 2, "name": "Zamora Scott"}
    ],
    "greeting": "Hello, Sheppard Campos! You have 5 unread messages.",
    "favoriteFruit": "strawberry"
  },
  {
    "_id": "62162da2a86547454cb6931a",
    "index": 4,
    "guid": "7da562ec-e205-45fe-8679-315dff0d7174",
    "isActive": false,
    "balance": "\$2,746.84",
    "picture": "http://placehold.it/32x32",
    "age": 28,
    "eyeColor": "green",
    "name": "Lee Rush",
    "gender": "male",
    "company": "EVIDENDS",
    "email": "leerush@evidends.com",
    "phone": "+1 (877) 507-2586",
    "address": "739 Kiely Place, Knowlton, South Dakota, 2985",
    "about":
        "Ullamco mollit aliquip duis cupidatat ad non cillum consectetur Lorem cupidatat fugiat est. Anim id culpa excepteur proident officia nulla cillum exercitation. Eiusmod pariatur pariatur elit non qui sit.\r\n",
    "registered": "2016-07-18T01:17:20 +03:00",
    "latitude": 65.366259,
    "longitude": 148.828332,
    "tags": ["elit", "fugiat", "ea", "veniam", "incididunt", "in", "cupidatat"],
    "friends": [
      {"id": 0, "name": "Becker Logan"},
      {"id": 1, "name": "Millicent Ray"},
      {"id": 2, "name": "Rosemarie Mays"}
    ],
    "greeting": "Hello, Lee Rush! You have 10 unread messages.",
    "favoriteFruit": "banana"
  },
  {
    "_id": "62162da21bdb34b9e4b70363",
    "index": 5,
    "guid": "a61f3288-360a-46f5-9ede-71b91c205256",
    "isActive": false,
    "balance": "\$3,308.52",
    "picture": "http://placehold.it/32x32",
    "age": 28,
    "eyeColor": "green",
    "name": "Fry Koch",
    "gender": "male",
    "company": "SYNTAC",
    "email": "frykoch@syntac.com",
    "phone": "+1 (880) 462-2296",
    "address": "414 Ebony Court, Kylertown, Oregon, 5623",
    "about":
        "Ut fugiat veniam eiusmod minim. Labore pariatur non mollit excepteur. Ad ut aliquip est reprehenderit eu in magna proident enim ad aliquip amet pariatur duis. Dolore laborum cupidatat culpa proident sit occaecat ea irure consectetur ipsum nostrud fugiat quis.\r\n",
    "registered": "2019-03-10T07:48:09 +03:00",
    "latitude": 13.339996,
    "longitude": -157.179504,
    "tags": ["eiusmod", "pariatur", "duis", "sint", "id", "non", "incididunt"],
    "friends": [
      {"id": 0, "name": "Fleming Mccoy"},
      {"id": 1, "name": "Hurst Joyce"},
      {"id": 2, "name": "Rose Newman"}
    ],
    "greeting": "Hello, Fry Koch! You have 2 unread messages.",
    "favoriteFruit": "banana"
  },
  {
    "_id": "62162da229afb1cd6daedcaf",
    "index": 6,
    "guid": "ab0b422d-e05f-4aac-8403-bf460fa6a781",
    "isActive": true,
    "balance": "\$2,834.33",
    "picture": "http://placehold.it/32x32",
    "age": 34,
    "eyeColor": "brown",
    "name": "Ann Juarez",
    "gender": "female",
    "company": "GEOFORMA",
    "email": "annjuarez@geoforma.com",
    "phone": "+1 (913) 500-2098",
    "address": "542 Sunnyside Court, Oberlin, Virgin Islands, 6334",
    "about":
        "Quis cupidatat esse veniam esse occaecat aute consequat minim dolore eu veniam sint. Veniam ut consequat esse sunt et sunt cillum ea ex anim. Sunt qui eiusmod dolore commodo.\r\n",
    "registered": "2015-10-15T10:46:47 +03:00",
    "latitude": 63.721642,
    "longitude": 176.386834,
    "tags": [
      "dolor",
      "laboris",
      "officia",
      "pariatur",
      "adipisicing",
      "dolor",
      "nostrud"
    ],
    "friends": [
      {"id": 0, "name": "Maxwell Mcknight"},
      {"id": 1, "name": "Holmes Little"},
      {"id": 2, "name": "Sheree Callahan"}
    ],
    "greeting": "Hello, Ann Juarez! You have 6 unread messages.",
    "favoriteFruit": "apple"
  },
  {
    "_id": "62162da285ee1c6bfa24853d",
    "index": 7,
    "guid": "3a354bdc-62eb-4f17-b34a-cafacbe53478",
    "isActive": false,
    "balance": "\$2,462.01",
    "picture": "http://placehold.it/32x32",
    "age": 37,
    "eyeColor": "green",
    "name": "Ware Finley",
    "gender": "male",
    "company": "VIRXO",
    "email": "warefinley@virxo.com",
    "phone": "+1 (999) 427-2733",
    "address": "476 Beverley Road, Bath, Ohio, 5728",
    "about":
        "Qui quis magna veniam irure proident aliquip amet eu. Ea id ullamco aute excepteur culpa excepteur. Consectetur velit elit mollit culpa ex ex qui excepteur aliqua Lorem cupidatat. Labore culpa consectetur reprehenderit id ipsum velit. Commodo id do sit nostrud anim reprehenderit anim et fugiat nisi aliqua irure quis. Excepteur culpa est occaecat culpa eiusmod amet sunt cillum nostrud exercitation veniam sunt. Quis cillum sunt quis proident culpa minim eu.\r\n",
    "registered": "2017-09-17T06:41:50 +03:00",
    "latitude": 23.031072,
    "longitude": -107.022162,
    "tags": ["dolore", "tempor", "do", "culpa", "nisi", "consequat", "minim"],
    "friends": [
      {"id": 0, "name": "Gutierrez Stone"},
      {"id": 1, "name": "Campos Bullock"},
      {"id": 2, "name": "Newman Hammond"}
    ],
    "greeting": "Hello, Ware Finley! You have 8 unread messages.",
    "favoriteFruit": "apple"
  },
  {
    "_id": "62162da2db53385b67daf9e8",
    "index": 8,
    "guid": "4bf526d9-0fad-480a-aff5-d8b8ebff573c",
    "isActive": true,
    "balance": "\$1,607.70",
    "picture": "http://placehold.it/32x32",
    "age": 36,
    "eyeColor": "green",
    "name": "Oneal Curry",
    "gender": "male",
    "company": "KINETICUT",
    "email": "onealcurry@kineticut.com",
    "phone": "+1 (877) 461-2089",
    "address": "413 Miller Place, Leland, Arkansas, 9179",
    "about":
        "Cillum excepteur ad Lorem voluptate veniam amet cillum. Laboris deserunt consequat voluptate duis in ipsum duis consectetur aliqua aliqua mollit officia voluptate sint. Tempor dolore ea et pariatur esse amet veniam anim est.\r\n",
    "registered": "2014-08-20T08:41:23 +03:00",
    "latitude": -17.948419,
    "longitude": 4.368565,
    "tags": ["aliqua", "amet", "ullamco", "mollit", "amet", "id", "duis"],
    "friends": [
      {"id": 0, "name": "Carter Pope"},
      {"id": 1, "name": "Diana Delgado"},
      {"id": 2, "name": "Dolores Higgins"}
    ],
    "greeting": "Hello, Oneal Curry! You have 4 unread messages.",
    "favoriteFruit": "apple"
  },
  {
    "_id": "62162da2bade24049b484a10",
    "index": 9,
    "guid": "dfda6487-ce2b-427d-b562-c2563aaf5b00",
    "isActive": false,
    "balance": "\$1,534.75",
    "picture": "http://placehold.it/32x32",
    "age": 33,
    "eyeColor": "green",
    "name": "Nita Sullivan",
    "gender": "female",
    "company": "GENMY",
    "email": "nitasullivan@genmy.com",
    "phone": "+1 (896) 532-2212",
    "address": "902 Hazel Court, Remington, Nebraska, 668",
    "about":
        "Tempor exercitation ullamco tempor est dolor veniam non culpa aliquip anim nulla elit qui. Elit esse ad incididunt aliquip labore culpa sint elit qui. Ex enim eu mollit et sint cillum ipsum exercitation. Eu dolor quis magna ipsum. Amet do exercitation proident adipisicing est duis deserunt esse pariatur est labore non deserunt. Deserunt deserunt qui ut anim consequat ex occaecat est occaecat cupidatat laboris proident cillum. Fugiat elit anim eu in duis.\r\n",
    "registered": "2017-01-12T06:40:52 +03:00",
    "latitude": -17.524535,
    "longitude": -109.945635,
    "tags": ["ad", "proident", "nostrud", "ipsum", "enim", "et", "amet"],
    "friends": [
      {"id": 0, "name": "Zimmerman Lyons"},
      {"id": 1, "name": "Charles Stokes"},
      {"id": 2, "name": "Brianna Obrien"}
    ],
    "greeting": "Hello, Nita Sullivan! You have 5 unread messages.",
    "favoriteFruit": "strawberry"
  },
  {
    "_id": "62162da29015eb6bd159054e",
    "index": 10,
    "guid": "72190073-7f3d-47bc-9ff5-e04ff2149178",
    "isActive": false,
    "balance": "\$3,438.63",
    "picture": "http://placehold.it/32x32",
    "age": 35,
    "eyeColor": "brown",
    "name": "Madden Nichols",
    "gender": "male",
    "company": "POLARIA",
    "email": "maddennichols@polaria.com",
    "phone": "+1 (825) 456-3780",
    "address": "381 Dare Court, Elbert, Wisconsin, 9593",
    "about":
        "Non in occaecat deserunt dolor elit velit ut officia Lorem consectetur magna. Sunt incididunt excepteur laborum aliquip aute aute. Ea excepteur tempor ipsum culpa ut non sit sint ipsum incididunt dolor amet.\r\n",
    "registered": "2021-08-08T09:07:50 +03:00",
    "latitude": -7.231504,
    "longitude": -44.843146,
    "tags": ["eiusmod", "nostrud", "amet", "sint", "aliquip", "et", "ea"],
    "friends": [
      {"id": 0, "name": "Sophia Phelps"},
      {"id": 1, "name": "Hurley Case"},
      {"id": 2, "name": "Barbara Vazquez"}
    ],
    "greeting": "Hello, Madden Nichols! You have 6 unread messages.",
    "favoriteFruit": "apple"
  },
  {
    "_id": "62162da28e01e73e8507c9b4",
    "index": 11,
    "guid": "fba4fe66-733b-46a2-9e37-f9d3152b00f1",
    "isActive": false,
    "balance": "\$1,113.93",
    "picture": "http://placehold.it/32x32",
    "age": 28,
    "eyeColor": "brown",
    "name": "Norton Rice",
    "gender": "male",
    "company": "ANDRYX",
    "email": "nortonrice@andryx.com",
    "phone": "+1 (941) 509-3844",
    "address": "281 Temple Court, Snyderville, Tennessee, 4765",
    "about":
        "Cupidatat pariatur et officia qui laborum. Duis elit nulla ex qui deserunt labore voluptate eu duis pariatur pariatur dolor. Aliqua mollit occaecat incididunt non dolor proident. Ea ullamco minim fugiat voluptate et ipsum culpa non velit adipisicing. Ipsum est est ullamco officia ut excepteur non. Do exercitation ipsum amet ullamco est ullamco consectetur esse.\r\n",
    "registered": "2014-04-25T06:22:42 +03:00",
    "latitude": 58.490257,
    "longitude": 97.03692,
    "tags": ["dolore", "consequat", "eu", "nisi", "irure", "mollit", "nulla"],
    "friends": [
      {"id": 0, "name": "Soto Cortez"},
      {"id": 1, "name": "Barry Wong"},
      {"id": 2, "name": "Peterson Armstrong"}
    ],
    "greeting": "Hello, Norton Rice! You have 5 unread messages.",
    "favoriteFruit": "strawberry"
  },
  {
    "_id": "62162da2e30c2dfee3c5c6a4",
    "index": 12,
    "guid": "bb9aaf7f-186f-4efc-9546-1bd6cabdc74f",
    "isActive": true,
    "balance": "\$3,674.38",
    "picture": "http://placehold.it/32x32",
    "age": 29,
    "eyeColor": "blue",
    "name": "Taylor Nguyen",
    "gender": "female",
    "company": "MICROLUXE",
    "email": "taylornguyen@microluxe.com",
    "phone": "+1 (968) 445-2810",
    "address": "862 Ocean Court, Sunriver, Rhode Island, 2714",
    "about":
        "Aliqua nostrud amet ullamco fugiat eu do deserunt aliqua proident laboris consequat. Sit fugiat sint do irure veniam consequat consequat. Ad aute dolore irure ea officia ad aliqua culpa. Enim commodo ex aute veniam dolor in. Cillum eu dolore officia culpa laboris sit sit consectetur dolor commodo exercitation exercitation. Qui dolore nostrud dolore eiusmod nulla sunt anim cupidatat.\r\n",
    "registered": "2015-12-22T03:35:08 +03:00",
    "latitude": 22.615392,
    "longitude": -81.355999,
    "tags": [
      "commodo",
      "veniam",
      "duis",
      "consequat",
      "incididunt",
      "ea",
      "mollit"
    ],
    "friends": [
      {"id": 0, "name": "Aguirre Sanford"},
      {"id": 1, "name": "Sonia Flores"},
      {"id": 2, "name": "Calhoun Cooper"}
    ],
    "greeting": "Hello, Taylor Nguyen! You have 2 unread messages.",
    "favoriteFruit": "strawberry"
  },
  {
    "_id": "62162da256129903a4af0878",
    "index": 13,
    "guid": "ebc22181-d88d-4ace-b1a4-b66b97be244e",
    "isActive": true,
    "balance": "\$2,024.77",
    "picture": "http://placehold.it/32x32",
    "age": 30,
    "eyeColor": "green",
    "name": "Gardner Cherry",
    "gender": "male",
    "company": "PARAGONIA",
    "email": "gardnercherry@paragonia.com",
    "phone": "+1 (874) 569-3085",
    "address": "625 Miami Court, Lindcove, Guam, 4916",
    "about":
        "Eu consectetur excepteur sit cupidatat velit nostrud exercitation ad laboris veniam. Consectetur Lorem sint velit nostrud sunt nulla do non. Eiusmod adipisicing veniam ex quis veniam qui fugiat. Labore sint sunt do ut reprehenderit proident et elit anim Lorem eu mollit nostrud. Exercitation in non enim eu duis aute.\r\n",
    "registered": "2017-11-26T02:03:48 +03:00",
    "latitude": 21.14381,
    "longitude": -8.985031,
    "tags": ["consequat", "est", "culpa", "cillum", "mollit", "ex", "mollit"],
    "friends": [
      {"id": 0, "name": "Robbins Goff"},
      {"id": 1, "name": "Bishop Hartman"},
      {"id": 2, "name": "Amparo Richard"}
    ],
    "greeting": "Hello, Gardner Cherry! You have 10 unread messages.",
    "favoriteFruit": "apple"
  },
  {
    "_id": "62162da2da42780395c292bd",
    "index": 14,
    "guid": "24f5cb04-b818-41cf-9f7a-3c2262e9667c",
    "isActive": true,
    "balance": "\$1,788.70",
    "picture": "http://placehold.it/32x32",
    "age": 22,
    "eyeColor": "blue",
    "name": "Isabella Chen",
    "gender": "female",
    "company": "EYEWAX",
    "email": "isabellachen@eyewax.com",
    "phone": "+1 (986) 597-3923",
    "address": "510 Troutman Street, Concho, Texas, 8087",
    "about":
        "Excepteur ullamco nisi officia velit irure anim ea laborum. Id aliquip eiusmod ex et aliqua ullamco dolor. Proident incididunt veniam incididunt sunt adipisicing sunt commodo sit est. Incididunt velit irure velit dolore non consequat nostrud do tempor. Dolore excepteur officia ut qui adipisicing do enim voluptate aliquip adipisicing nisi dolor excepteur magna. Ex ut et ex dolore laborum ea eu exercitation magna. Nostrud adipisicing exercitation adipisicing nulla esse cillum.\r\n",
    "registered": "2018-11-01T08:21:49 +03:00",
    "latitude": 76.688055,
    "longitude": 29.00416,
    "tags": ["ut", "cillum", "dolore", "qui", "eiusmod", "elit", "ad"],
    "friends": [
      {"id": 0, "name": "Harmon Shannon"},
      {"id": 1, "name": "Louise Abbott"},
      {"id": 2, "name": "Cox Whitehead"}
    ],
    "greeting": "Hello, Isabella Chen! You have 8 unread messages.",
    "favoriteFruit": "strawberry"
  }
];
