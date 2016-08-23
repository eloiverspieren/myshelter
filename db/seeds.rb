# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Refuge.destroy_all
User.destroy_all

u1 = User.create!(email: "eloi.verspieren@gmail.com", password: "verchu")

refuges_attributes = [
  {
    name:  "LES COSMIQUES",
    picture: "refugecosmiques.jpg",
    capacity: 148,
    address: "Aiguille du Midi",
    day_price: 42 ,
    description: "Le refuge des Cosmiques est le point de départ de la traversée des trois monts qui arrive au sommet du mont Blanc et de la grande descente à ski de la vallée blanche.",
    lat: "45.522294 N",
    lon: "6.53763 E",
    altitude: 3613,
    range: "PAYS DU MONT-BLANC",
    department: "73"
},
  {
    name:  "LE POURRI",
    picture: "images/refugedupourri.jpg",
    capacity: 50,
    address: "Parc National de la Vanoise",
    day_price: 42.65,
    description: "Dans le site protégé du Parc National de la Vanoise, le refuge du Mont Pourri (refuge appartenant au Club Alpin Français de Chambéry) jouit d’une faune et une flore très riches, ainsi que d’un superbe panorama sur les glaciers et les alpages environnants.",
    lat: "45.314026 N",
    lon: "6.493692 E",
    altitude: 2374,
    range: "VANOISE",
    department: "73"
},
{
    name: "LE GOÛTER",
    picture: "images/refugegouter.jpg",
    capacity: 120,
    address: "Aiguille du Goûter",
    day_price: 55,
    description: "Le plus haut refuge gardé en France, quasiment sur le sommet de l'Aiguille du Goûter. Les couchers de soleil y sont intéressants, mais les nuits brèves. Le nouveau refuge est un bâtiment aux normes Haute Qualité Environnementale (HQE)." ,
    lat: "45.522294 N",
    lon: "6.53763 E",
    altitude: 3613,
    range: "PAYS DU MONT-BLANC",
    department: "74"
},
{
    name:  "L’AIGLE",
    picture: "images/aigle.jpg",
    capacity: 34,
    address: "Vallée de la Romanche",
    day_price: 29,
    description: "Un refuge neuf situé dans un site exceptionnel, accroché au rocher de l'Aigle, et face aux arêtes de la Meije. Ce refuge conforté ces dernières années garde l'originalité de ne présenter qu' une salle unique 'un lieu de vie' qui associe dortoir et salle à manger. Dans la rénovation le choix a été fait de conserver l'ancienne structure du chalet 1910." ,
    lat: "45.011304 N",
    lon: "6.53763 E",
    altitude: 3440,
    range: "VALLEE DE LA ROMANCHE",
    department: "05"
},
{
    name:  "LES AIGUILLES D’ARVES",
    picture: "images/aiguillesdarves.jpg",
    capacity: 39,
    address: "Aiguille de l’épaisseur",
    day_price: 18.3,
    description: "Refuge sur un balcon, dans les pentes herbeuses et fleuries descendant de l'Aiguille de l'Epaisseur. Au-dessus du torrent des Aiguilles, face à la longue crête sévère d'Argentière et avec vue sur les pointes Méridionale et Centrale des aiguilles d'Arves. La faune est particulièrement présente (chamois, marmottes, hermines ).",
    lat: "45.118201 N",
    lon: "6.375205 E",
    altitude: 2260,
    range: "GRANDES ROUSSES-ARVES",
    department: "73"
},
{
    name: "LES BANS",
    picture: "images/lesbans.jpg",
    capacity: 22,
    address: "Parc National des Ecrins",
    day_price: 18.3,
    description: "Malgré la faible altitude de ce petit refuge, le site apparaît 'haute montagne' grâce aux hauts sommets tout proches (Jocelme, Aupillous et Bans).
Un petit refuge au charme associé à son site mais aussi à la construction en pierre du pays. Construit par l'Etat à la fin de la Guerre il présente une réelle réussite architecturale. Le dortoir à l'étage reste confortable mais traditionnel.",
    lat: "44.834424 N",
    lon: "6.361139 E",
    altitude: 2106,
    range: "PAYS DES ECRINS",
    department: "05"
},
{
    name:  "ALBERT 1ER",
    picture: "images/albert.jpg",
    capacity: 140,
    address: "Glacier du Tour",
    day_price: 30.5,
    description: "Situé au-dessus de glacier du Tour, sur sa rive droite, c'est le seul refuge géré par le CAF de Chamonix que l'on peut atteindre sans passer sur un glacier. Son emplacement est idéal avec vue sur un large éventail de sommets : aiguille du Tour, Grande Fourche, Chardonnet, aiguille d'Argentière, la Verte et les Drus, les Aiguilles Rouges. Son nom est dû au Roi des belges, Albert 1er, alpiniste qui s'est tué en faisant de l'escalade près de Namur.",
    lat: "45.522294 N",
    lon: "6.53763 E",
    altitude: 2707,
    range: "PAYS DU MONT-BLANC",
    department: "74"
},
{
    name:  "L'ALPE DE VILLAR D'ARÈNE",
    picture: "images/villardarene.jpg",
    capacity: 94,
    address: "Parc national des Ecrins",
    day_price: 19.6,
    description: "Un refuge idéal pour les randonneurs avec ou sans enfant, mais aussi un camp de base exceptionnel pour le ski de rando. Sur des mamelons herbus et les replats confortables d'un alpage de moyenne montagne face aux Agneaux, et au groupe aigu de Roche Meane",
    lat: "45.522294 N",
    lon: "6.53763 E",
    altitude: 2071,
    range: "VALLE DE LA ROMANCHE",
    department: "05"
},
{
    name:  "AMBIN",
    picture: "images/ambin.jpg",
    capacity: 30,
    address: "Haute-Maurienne",
    day_price: 17.7,
    description: "Au fond du vallon sauvage d'Ambin, sur son verrou rocheux, le refuge d'aspect solide commande un haut bassin aux multiples ressources (randonnée familiale aux lacs, traversée sur l'Italie, escalade aux Dents d'Ambin...).",
    lat: "45.522294 N",
    lon: "6.53763 E",
    altitude: 2270,
    range: "AMBIN",
    department: "73"
},
{
    name: "L’ARGENTIÈRE",
    picture: "images/largentiere.jpg",
    capacity: 94,
    address: "Pays du Mont-Blanc",
    day_price: 30.8,
    description: "Un refuge d'aspect inhabituel avec son niveau supérieur en encorbellement et 'réchauffé' par son bardage sapin.",
    lat: "45.522294 N",
    lon: "6.53763 E",
    altitude: 2769,
    range: "PAYS DU MONT-BLANC",
    department: "74"
},
{
    name: "L’ARRÉMOULIT",
    picture: "images/larremoulit.jpg",
    capacity: 28,
    address: "Parc National des Pyrénées",
    day_price: 17.7,
    description: "Le refuge est situé au pied de la face nord-ouest du Palas dans un magnifique site lacustre au coeur du Parc national des Pyrénées",
    lat: "45.522294 N",
    lon: "6.53763 E",
    altitude: 2257,
    range: "VALLEE D’OSSAU",
    department: "64"
},
]
refuges_attributes.each { |params| u1.refuges.create!(params) }



