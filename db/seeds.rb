# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
RefugeToHike.destroy_all
Refuge.destroy_all
Hiking.destroy_all
User.destroy_all




u1 = User.create!(email: "eloi.verspieren@gmail.com", password: "verchu", admin: true)


r1 = u1.refuges.create!({
    name: "LE PLAIN DU CANON",
    remote_photo_url: "http://www.refugedusotre.com/wp-content/gallery/refuge-du-sotre-paysages/sotre-vosges-refuge-vosges.jpg",
    capacity: 12,
    address: "Nancy",
    price_cents: 1000,
    description: "Légèrement en contre bas de la route montant de St Maurice au Ballon d'Alsace en bord de clairière, en forêt domaniale, sur les pentes NW du Ballon d'Alsace. Un petit bâtiment préfabriqué inattendu.",
    latitude: "47.836500 N",
    longitude: "6.825300 E",
    altitude: 819,
    range: "Vosges",
    department: "88"
})

r2 = u1.refuges.create!({
    name: "LE LANGENBERG",
    remote_photo_url: "http://www.auberge-refuge-neuweiher.fr/NEUWEIHER_WEB/FR/ACCUEIL/Auberge-refuge-neuweiher.jpg",
    capacity: 25,
    address: "Vescemont",
    price_cents: 1470,
    description: "Un bâtiment clair avec une vue exceptionnelle sur la plaine d'Alsace, la Forêt Noire, et les Alpes suisses (Oberland).
A proximité du sommet du Grand Langenberg sur le versant S.E. du Ballon d'Alsace. C'est un pays de rencontres et de frontières où l'histoire est très présente.",
    latitude: "47.806670 N",
    longitude: "6.861670 E",
    altitude: 1050,
    range: "Vosges",
    department: "90"
})

r3 = u1.refuges.create!({
    name: "LE GRAND VENTRON",
    remote_photo_url: "http://www.sitlor.fr/photos/741/741000070_4.jpg",
    capacity: 22,
    address: "Cornimont",
    price_cents: 1000,
    description: "En lisière de la forêt domaniale de Cornimont, dans un site tranquille, à proximité du sommet du Grand Ventron, point culminant d'une région boisée, avec une vue remarquable. A proximité du GR5.",
    latitude: "47.960300 N",
    longitude: "6.921700 E",
    altitude: 1150,
    range: "Vosges",
    department: "88"
})

r4 = u1.refuges.create!({
    name:  "LES COSMIQUES",
    remote_photo_url: "http://s2.wklcdn.com/image_8/269158/3230796/1479596.jpg",
    capacity: 148,
    address: "Chamonix-Mont-Blanc",
    price_cents: 4200 ,
    description: "Le refuge des Cosmiques est le point de départ de la traversée des trois monts qui arrive au sommet du mont Blanc et de la grande descente à ski de la vallée blanche.",
    latitude: "45.522294 N",
    longitude: "6.53763 E",
    altitude: 3613,
    range: "Alpes",
    department: "73"
})

r5 = u1.refuges.create!({
    name:  "LE POURRI",
    remote_photo_url: "http://s.camptocamp.org/uploads/images/1259366642_1655889778BI.jpg",
    capacity: 50,
    address: "Parc National de la Vanoise",
    price_cents: 4265,
    description: "Dans le site protégé du Parc National de la Vanoise, le refuge du Mont Pourri (refuge appartenant au Club Alpin Français de Chambéry) jouit d’une faune et une flore très riches, ainsi que d’un superbe panorama sur les glaciers et les alpages environnants.",
    latitude: "45.314026 N",
    longitude: "6.493692 E",
    altitude: 2374,
    range: "Alpes",
    department: "73"
})

r6 = u1.refuges.create!({
    name: "LE GOÛTER",
    remote_photo_url: "http://media.sit.savoie-mont-blanc.com/original/168866/0-902969.jpg",
    capacity: 120,
    address: "Chamonix",
    price_cents: 5500,
    description: "Le plus haut refuge gardé en France, quasiment sur le sommet de l'Aiguille du Goûter. Les couchers de soleil y sont intéressants, mais les nuits brèves. Le nouveau refuge est un bâtiment aux normes Haute Qualité Environnementale (HQE)." ,
    latitude: "45.522294 N",
    longitude: "6.53763 E",
    altitude: 3613,
    range: "Alpes",
    department: "74"
})

r7 = u1.refuges.create!({
    name:  "L’AIGLE",
    remote_photo_url: "https://www.petzl.com/fondation/foundation-refuge-aigle-vallee.jpeg?v=1",
    capacity: 34,
    address: "Chambéry",
    price_cents: 2900,
    description: "Un refuge neuf situé dans un site exceptionnel, accroché au rocher de l'Aigle, et face aux arêtes de la Meije. Ce refuge conforté ces dernières années garde l'originalité de ne présenter qu' une salle unique 'un lieu de vie' qui associe dortoir et salle à manger. Dans la rénovation le choix a été fait de conserver l'ancienne structure du chalet 1910." ,
    latitude: "45.011304 N",
    longitude: "6.53763 E",
    altitude: 3440,
    range: "Alpes",
    department: "05"
})

r8 = u1.refuges.create!({
    name:  "LES AIGUILLES D’ARVES",
    remote_photo_url: "http://www.123savoie.com/pic/109/108307_t6.jpg",
    capacity: 39,
    address: "Albertville, France",
    price_cents: 1830,
    description: "Refuge sur un balcon, dans les pentes herbeuses et fleuries descendant de l'Aiguille de l'Epaisseur. Au-dessus du torrent des Aiguilles, face à la longue crête sévère d'Argentière et avec vue sur les pointes Méridionale et Centrale des aiguilles d'Arves. La faune est particulièrement présente (chamois, marmottes, hermines ).",
    latitude: "45.118201 N",
    longitude: "6.375205 E",
    altitude: 2260,
    range: "Alpes",
    department: "73"
})

r9 = u1.refuges.create!({
    name: "LES BANS",
    remote_photo_url: "http://a136.idata.over-blog.com/600x450/6/00/18/97/IMAGES-ETE/100_1258.jpg",
    capacity: 22,
    address: "Parc National des Ecrins",
    price_cents: 1830,
    description: "Malgré la faible altitude de ce petit refuge, le site apparaît 'haute montagne' grâce aux hauts sommets tout proches (Jocelme, Aupillous et Bans).
 Un petit refuge au charme associé à son site mais aussi à la construction en pierre du pays. Construit par l'Etat à la fin de la Guerre il présente une réelle réussite architecturale. Le dortoir à l'étage reste confortable mais traditionnel.",
    latitude: "44.834424 N",
    longitude: "6.361139 E",
    altitude: 2106,
    range: "Alpes",
    department: "05"
})

r10 = u1.refuges.create!({
    name:  "ALBERT 1ER",
    remote_photo_url: "http://s.camptocamp.org/uploads/images/1344013894_1784147809.jpg",
    capacity: 140,
    address: "Chamonix",
    price_cents: 3050,
    description: "Situé au-dessus de glacier du Tour, sur sa rive droite, c'est le seul refuge géré par le CAF de Chamonix que l'on peut atteindre sans passer sur un glacier. Son emplacement est idéal avec vue sur un large éventail de sommets : aiguille du Tour, Grande Fourche, Chardonnet, aiguille d'Argentière, la Verte et les Drus, les Aiguilles Rouges. Son nom est dû au Roi des belges, Albert 1er, alpiniste qui s'est tué en faisant de l'escalade près de Namur.",
    latitude: "45.522294 N",
    longitude: "6.53763 E",
    altitude: 2707,
    range: "Alpes",
    department: "74"
})

r11 = u1.refuges.create!({
    name:  "L'ALPE DE VILLAR D'ARÈNE",
    remote_photo_url: "http://static.sitra-tourisme.com/filestore/objets-touristiques/images-principales/91/228/517211-diaporama.jpg",
    capacity: 94,
    address: "Parc national des Ecrins",
    price_cents: 1960,
    description: "Un refuge idéal pour les randonneurs avec ou sans enfant, mais aussi un camp de base exceptionnel pour le ski de rando. Sur des mamelons herbus et les replats confortables d'un alpage de moyenne montagne face aux Agneaux, et au groupe aigu de Roche Meane",
    latitude: "45.522294 N",
    longitude: "6.53763 E",
    altitude: 2071,
    range: "Alpes",
    department: "05"
})

r12 = u1.refuges.create!({
    name:  "AMBIN",
    remote_photo_url: "http://surlessommets.blog.free.fr/public/Ambin/Ambin625.jpg",
    capacity: 30,
    address: "Bourg-Saint-Maurice",
    price_cents: 1770,
    description: "Au fond du vallon sauvage d'Ambin, sur son verrou rocheux, le refuge d'aspect solide commande un haut bassin aux multiples ressources (randonnée familiale aux lacs, traversée sur l'Italie, escalade aux Dents d'Ambin...).",
    latitude: "45.522294 N",
    longitude: "6.53763 E",
    altitude: 2270,
    range: "Alpes",
    department: "73"
})

r13 = u1.refuges.create!({
    name: "L’ARGENTIÈRE",
    remote_photo_url: "http://www.chamonix-randos.com/Resources/gallery10s.jpg?278",
    capacity: 94,
    address: "Chamonix",
    price_cents: 3080,
    description: "Un refuge d'aspect inhabituel avec son niveau supérieur en encorbellement et 'réchauffé' par son bardage sapin.",
    latitude: "45.522294 N",
    longitude: "6.53763 E",
    altitude: 2769,
    range: "Alpes",
    department: "74"
})

r14 = u1.refuges.create!({
    name: "L’AYOUS",
    remote_photo_url: "http://www.randozone.com/pict_mont/x960/im13389.jpg",
    capacity: 47,
    address: "Gabas",
    price_cents: 3070,
    description: "Situé dans les Pyrénées Atlantiques en zone de montagne de la région du Béarn au coeur de la Vallée d'Ossau, perché sur les hauteurs du tour de l'Ossau, du GR10, et sur la variante de la HRP, le Refuge d'Ayous fait face au splendide lac Gentau et au Pic du midi d'Ossau. Sa capacité d'accueil est de 47 places en petits dortoirs. Les gardiens de ce lieu assurent un service de restauration le midi. Pour les randonneurs voulant profiter du coucher de soleil sur le lac, des demi-pensions ou des pensions complètes vous sont proposées. C'est une étape idéale pour les randonnées familiales, ainsi que pour les groupes de jeunes scolaires.",
    latitude: "42.858208 N",
    longitude: "-0.288792 E",
    altitude: 1980,
    range: "Pyrénées",
    department: "64"
})

r17 = u1.refuges.create!({
    name: "RIFUGIO DI GASTALDI",
    remote_photo_url: "https://www.turismovallidilanzo.it/wp-content/uploads/2014/10/profilo23.jpg",
    capacity: 99,
    address: "Charbonnel",
    price_cents: 2100,
    description: "Refuge de l'envers de la crête frontière franco-italienne qui s'étire de la Grande Ciamarella à l'Ouille d'Arbéron.
Etape entre le refuge des Evettes et le refuge d'Avérole sur le Tour de la Bessanèse.",
    latitude: "47.960300 N",
    longitude: "6.921700 E",
    altitude: 2659,
    range: "Alpes",
    department: "73"
})

r16 = u1.refuges.create!({
    name: "RIFUGIO DI CIBRARIO",
    remote_photo_url: "http://www.sitlor.fr/photos/741/741000070_4.jpg",
    capacity: 42,
    address: "Margone",
    price_cents: 2300,
    description: "Le Rifugio Cibrario se trouve dans une plaisante cuvette à 2600 mètres de altitude; le replat est sillonnée par petits ruisseaux du Rio Peraciaval riches d'une flore variée. La tranquillité des moraines glaciales environnantes a favorisée l'implantation des bouquetins ces dernières années. On les aperçoit presque quotidiennement en train de paître dans les alentours du Rifugio.",
    latitude: "45.246800 N",
    longitude: "7.147260 E",
    altitude: 2616,
    range: "Alpes",
    department: "73"
})

r15 = u1.refuges.create!({
    name: "L'AVEROLE",
    remote_photo_url: "http://media.sit.savoie-mont-blanc.com/original/437868/0-527471.jpg",
    capacity: 85,
    address: "Bessans",
    price_cents: 1970,
    description: "Le refuge est situé sur une bosse herbue au-dessus de la vallée d'Averole et du confluent de deux torrents, dans un site fleuri, calme, avec vue sur les glaciers débonnaires de la zone.",
    latitude: "45.297155 N",
    longitude: "7.084291 E",
    altitude: 2210,
    range: "Alpes",
    department: "73"
})

r18 = u1.refuges.create!({
    name: "LA POMBIE",
    remote_photo_url: "http://www.topopyrenees.com/wp-content/uploads/2010/06/randonnee-refuge-pombie_024.jpg",
    capacity: 45,
    address: "Pau",
    price_cents: 1960,
    description: "Le refuge est situé en plein cour du Parc national des Pyrénées en haute vallée d'Ossau au pied de la face sud-est du pic du Midi d'Ossau, entre milieu pastoral et haute montagne. Il est le point de départ classique pour l'ascension du pic du Midi d'Ossau par sa voie normale, ainsi que de nombreuses voies d'escalades et courses d'arêtes. Refuge situé sur la traversée des Pyrénées (HRP), il sert également d'étape sur le tour du pic du midi d'Ossau ainsi que sur la variante du GR10. Les gardiens, très attentifs à l'accueil des montagnards et des randonneurs vous feront goûter une cuisine de qualité.",
    latitude: "42.835504 N",
    longitude: "-0.426940 E",
    altitude: 1980,
    range: "Pyrénées",
    department: "64"
})

r19 = u1.refuges.create!({
    name: "L’ARRÉMOULIT",
    remote_photo_url: "http://www.caf-bagneres-bigorre.com/photos/28062010_220055_19.jpg",
    capacity: 28,
    address: "Parc National des Pyrénées",
    price_cents: 1770,
    description: "Le refuge est situé au pied de la face nord-ouest du Palas dans un magnifique site lacustre au coeur du Parc national des Pyrénées",
    latitude: "45.522294 N",
    longitude: "6.53763 E",
    altitude: 2257,
    range: "Pyrénées",
    department: "64"
})




h1 = Hiking.create!({
    name: "Rando des Hautes-Vosges",
    difficulty: "Expert",
    range: "Vosges",
    description: "Joli pti trip dans les vosges",
    remote_photo_url: "http://medias.thurdoller.ingenie.fr/images/info_pages/multitailles/1920x1440_ballonalsace06062014adg-31bd-189.jpg"

  })

h2 = Hiking.create!({
    name: "Tour de la Bessanèse",
    difficulty: "Confirmé",
    range: "Alpes",
    remote_photo_url: "https://i.ytimg.com/vi/YGQ5q9PZUD8/maxresdefault.jpg",
    description: "Circuit de 4 jours et 3 nuits en refuges.,

Cet itinéraire est idéal pour les randonneurs expérimentés qui aiment découvrir des paysages sauvages, des vallées diverses, franchir des cols à plus de 3000m d’altitude.
Vous apprécierez le charme et la convivialité des 3 refuges de ce circuit Franco-Italien.
Ce circuit est entièrement balisé pour vous permettre d’apprécier le paysage sans vous soucier de l’itinéraire.

Étape 1: Refuge d’Avérole – passage du Collerin – Glacier de Pian Gias – Refuge GastaldiD+ ~ 1200m, D- ~ 700m
Derrière le refuge d’Avérole se trouve la ruine de l’ancien refuge, c’est là que s’amorce le chemin balisé de blanc et rouge et de cairns. Se diriger vers le ruisseau du Veilet que l’on franchit une première fois, puis que l’on remonte en rive droite. Au premier replat (2325m), laisser sur la gauche le chemin qui conduit au clapier de Rocafort (panneau indicateur). Poursuivre la montée en rive droite du ruisseau principal, progresser ensuite entre les deux cours d’eau. Vers 2600m, à hauteur d’une moraine frontale bien marquée, traverser le ruisseau principal. Gravir en zigzag, tandis que le sentier tend à s’estomper, et parvenir à une petite barre rocheuse. Repasser en rive droite du ruisseau. Gagner un col, poursuivre vers le nord-ouest, en parcourant un système de petits vallons à blocs schisteux pour gagner la cuvette qui conduit au col des Audras, traverser à l’horizontale sur les reliquats du glacier du Collerin. On peut également suivre la crête de schistes qui longe la pointe des Audras pour gagner le passage du Collerin.

Ne pas descendre trop précipitamment sur le versant italien (les premiers couloirs sont infranchissables). Le vrai passage est le quatrième couloir, le plus large, situé le plus au nord, sous la pointe du Collerin, altitude : 3207m. Ici, la descente côté Italien est plus facile.

Cette descente n’est pas aussi difficile que cela, mais à condition que le col soit « sec ». Cela peut être plus compliqué lorsqu’un couloir de neige gelée persiste, gagner le glacier de Pian Gias. Il est possible de progresser sans crampons sur ce glacier pas trop incliné et le plus souvent couvert de cailloux. La descente se poursuit doucement, dans l’axe de la vallée. Lorsque le torrent émerge du glacier, on retrouve des cairns et le balisage en rive gauche ainsi que des marques de peinture rouge et blanc.

Au niveau d’un second verrou de roches moutonnées, traverser définitivement en rive droite du torrent pour atteindre le début du chemin. Vers la côte 2550m, laisser le chemin qui descend au plan della Mussa et au village de Balme pour emprunter, sur la droite, l’itinéraire qui remonte au refuge Gastaldi. Traverser un éboulis puis une pente raide sur une quarantaine de mètres afin de parvenir à un petit col, gagner une bâtisse en ruine et un ancien monte-charge. De-là, le chemin se métamorphose en une large piste étayée de murets, à 5 minutes se trouve le refuge à 2658m d’altitude.

Durée: 5 à 6 heures (la traversée du glacier de Pian Gias est sans difficulté technique mais nécessite du temps).
Étape 2: R. Gastaldi – Lago della Rossa – Colle Altare – R. CibrarioD+ ~ 700m, D- ~ 770m
Prendre le chemin à droite du nouveau refuge, ou se dresse un petit oratoire dédié à la Madonna. Descendre vers le sud en direction de la cuvette qui s'étale au pied du glacier de la Bessanèse, puis suivre en traversée l’affluent aux eaux de cristal qui contrastent avec les précédentes.


Après une courte montée, on atteint une première bifurcation pour le col d'Arnès. Poursuivre dans la direction indiquée du Lago della Rossa, (marques de peintures: itinéraire 122), par une sente à gauche au travers de magnifiques blocs de serpentines et gagner un chaos de blocs énormes (Rocca Affinau).Grimper jusqu’au barres schisteuses rouges. Il faut ensuite traverser une pente schisteuse pour gagner le Collerin d'Arnès où est situé un petit lac (2 heures).
Au niveau de ce col, ne pas chercher à descendre directement  au lago della Rossa. Le sentier tire à flanc en direction du sud-est.Du haut de la croupe suivante, on découvre le plan d'eau qui constitue une importante retenue hydroélectrique.
Descendre au travers de roches moutonnées et gagner le barrage (2690m). En amont d'une petite chapelle au toit blanc est édifié le confortable bivouac San Camillo, qui possède 20 places et un chauffage électrique grâce à la proximité du barrage.


Traverser sur la voûte du barrage en direction du refuge Cibrario. Une brève portion d'un large chemin, puis tourner à gauche. Traverser à gué un ruisseau sur des dalles schisteuses et reprendre en rive gauche. Longer un petit canal puis suivre la trace vers le fond d'un cirque. Emprunter une rampe qui débute au niveau d'une cascade et se termine par un chemin facile qui conduit jusqu'au col Altare (2962m) et franchir une barre rocheuse  un peu plus raide  à l'aide d'une fracture maculée d'oxydes métalliques grenat. Le premier lac de Pera Ciaval est alors visible sur la droite.
Descendre une nouvelle croupe, ce n'est qu'au dernier moment que l'on aperçoit le refuge et  sa DZ d'hélicoptère, descendre une dernière barre afin de gagner le refuge Luigi Cibrario (2615m), accessible également par la vallée d'Usseglio à partir du village de Villaretto.

Durée : compter au moins 4 heures sans les haltes
Étape 3: Refuge Cibrario – Col Sulè – Col de l’Autaret –  Vallon de la Lombarde - Refuge AvéroleD+ ~ 750m, D- ~ 1550m
Traverser direction W le Pian de Sabiunin où se situe le refuge, puis direction S, monter rapidement à travers les névés et éboulis jusqu’au Pian Sulè, à environ 2900m d’altitude : à partir de là, prendre de nouveau direction W vers le Col. Descendre sur des éboulis jusqu’à croiser le sentier n. 116 provenant de Malciaussia. Suivre ce sentier qui tourne à gauche en montant au lac supérieur de l’Autaret ; à gauche du Lac, après une brève montée et une longue traversée sur éboulis,on arrive au Col de l'Autaret (3072m, croix).


Du col de l'Autaret descendre vers l'ouest le long du thalweg (cairns) ; vers 2700m s’orienter au N en restant en rive droite du torrent de la Lombarde (névés tard dans l’été), jusqu’au gué des Larges (2530). Passer en rive gauche et continuer jusqu’à la cabane des bergers (2420m). Descendre jusqu'au torrent (passerelle) et remonter en face au Pas de la Mule, puis au Pas des Eublats et (passages escarpés) au Plan de Revallon (2135m). Remonter de 50m au sentier du col d’Arnès et se diriger vers la gauche au refuge d’Avérole.

Durée : compter environ 7h  de marche. La descente est particulièrement longue dans le sauvage vallon de la Lombarde."
  })




refuge_to_hikes_attributes = [
  {
    refuge: r1,
    hiking: h1
  },
    {
    refuge: r2,
    hiking: h1
  },
  {
    refuge: r3,
    hiking: h1
  },
  {
    refuge: r15,
    hiking: h2
  },
    {
    refuge: r16,
    hiking: h2
  },
  {
    refuge: r17,
    hiking: h2
  }
]

refuge_to_hikes_attributes.each { |params| RefugeToHike.create!(params) }




