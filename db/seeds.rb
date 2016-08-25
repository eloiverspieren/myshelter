# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Refuge.destroy_all


u1 = User.create!(email: "eloi.verspieren@gmail.com", password: "verchu", admin: true)

refuges_attributes = [
  {
    name:  "LES COSMIQUES",
    remote_photo_url: "http://s2.wklcdn.com/image_8/269158/3230796/1479596.jpg",
    capacity: 148,
    address: "Chamonix-Mont-Blanc",
    day_price: 42 ,
    description: "Le refuge des Cosmiques est le point de départ de la traversée des trois monts qui arrive au sommet du mont Blanc et de la grande descente à ski de la vallée blanche.",
    latitude: "45.522294 N",
    longitude: "6.53763 E",
    altitude: 3613,
    range: "PAYS DU MONT-BLANC",
    department: "73"
},
  {
    name:  "LE POURRI",
    remote_photo_url: "http://s.camptocamp.org/uploads/images/1259366642_1655889778BI.jpg",
    capacity: 50,
    address: "Parc National de la Vanoise",
    day_price: 42.65,
    description: "Dans le site protégé du Parc National de la Vanoise, le refuge du Mont Pourri (refuge appartenant au Club Alpin Français de Chambéry) jouit d’une faune et une flore très riches, ainsi que d’un superbe panorama sur les glaciers et les alpages environnants.",
    latitude: "45.314026 N",
    longitude: "6.493692 E",
    altitude: 2374,
    range: "VANOISE",
    department: "73"
},
{
    name: "LE GOÛTER",
    remote_photo_url: "http://media.sit.savoie-mont-blanc.com/original/168866/0-902969.jpg",
    capacity: 120,
    address: "Chamonix",
    day_price: 55,
    description: "Le plus haut refuge gardé en France, quasiment sur le sommet de l'Aiguille du Goûter. Les couchers de soleil y sont intéressants, mais les nuits brèves. Le nouveau refuge est un bâtiment aux normes Haute Qualité Environnementale (HQE)." ,
    latitude: "45.522294 N",
    longitude: "6.53763 E",
    altitude: 3613,
    range: "PAYS DU MONT-BLANC",
    department: "74"
},
{
    name:  "L’AIGLE",
    remote_photo_url: "https://www.petzl.com/fondation/foundation-refuge-aigle-vallee.jpeg?v=1",
    capacity: 34,
    address: "Chambéry",
    day_price: 29,
    description: "Un refuge neuf situé dans un site exceptionnel, accroché au rocher de l'Aigle, et face aux arêtes de la Meije. Ce refuge conforté ces dernières années garde l'originalité de ne présenter qu' une salle unique 'un lieu de vie' qui associe dortoir et salle à manger. Dans la rénovation le choix a été fait de conserver l'ancienne structure du chalet 1910." ,
    latitude: "45.011304 N",
    longitude: "6.53763 E",
    altitude: 3440,
    range: "VALLEE DE LA ROMANCHE",
    department: "05"
},
{
    name:  "LES AIGUILLES D’ARVES",
    remote_photo_url: "http://www.123savoie.com/pic/109/108307_t6.jpg",
    capacity: 39,
    address: "Albertville, France",
    day_price: 18.3,
    description: "Refuge sur un balcon, dans les pentes herbeuses et fleuries descendant de l'Aiguille de l'Epaisseur. Au-dessus du torrent des Aiguilles, face à la longue crête sévère d'Argentière et avec vue sur les pointes Méridionale et Centrale des aiguilles d'Arves. La faune est particulièrement présente (chamois, marmottes, hermines ).",
    latitude: "45.118201 N",
    longitude: "6.375205 E",
    altitude: 2260,
    range: "GRANDES ROUSSES-ARVES",
    department: "73"
},
{
    name: "LES BANS",
    remote_photo_url: "http://a136.idata.over-blog.com/600x450/6/00/18/97/IMAGES-ETE/100_1258.jpg",
    capacity: 22,
    address: "Parc National des Ecrins",
    day_price: 18.3,
    description: "Malgré la faible altitude de ce petit refuge, le site apparaît 'haute montagne' grâce aux hauts sommets tout proches (Jocelme, Aupillous et Bans).
Un petit refuge au charme associé à son site mais aussi à la construction en pierre du pays. Construit par l'Etat à la fin de la Guerre il présente une réelle réussite architecturale. Le dortoir à l'étage reste confortable mais traditionnel.",
    latitude: "44.834424 N",
    longitude: "6.361139 E",
    altitude: 2106,
    range: "PAYS DES ECRINS",
    department: "05"
},
{
    name:  "ALBERT 1ER",
    remote_photo_url: "http://s.camptocamp.org/uploads/images/1344013894_1784147809.jpg",
    capacity: 140,
    address: "Chamonix",
    day_price: 30.5,
    description: "Situé au-dessus de glacier du Tour, sur sa rive droite, c'est le seul refuge géré par le CAF de Chamonix que l'on peut atteindre sans passer sur un glacier. Son emplacement est idéal avec vue sur un large éventail de sommets : aiguille du Tour, Grande Fourche, Chardonnet, aiguille d'Argentière, la Verte et les Drus, les Aiguilles Rouges. Son nom est dû au Roi des belges, Albert 1er, alpiniste qui s'est tué en faisant de l'escalade près de Namur.",
    latitude: "45.522294 N",
    longitude: "6.53763 E",
    altitude: 2707,
    range: "PAYS DU MONT-BLANC",
    department: "74"
},
{
    name:  "L'ALPE DE VILLAR D'ARÈNE",
    remote_photo_url: "http://static.sitra-tourisme.com/filestore/objets-touristiques/images-principales/91/228/517211-diaporama.jpg",
    capacity: 94,
    address: "Parc national des Ecrins",
    day_price: 19.6,
    description: "Un refuge idéal pour les randonneurs avec ou sans enfant, mais aussi un camp de base exceptionnel pour le ski de rando. Sur des mamelons herbus et les replats confortables d'un alpage de moyenne montagne face aux Agneaux, et au groupe aigu de Roche Meane",
    latitude: "45.522294 N",
    longitude: "6.53763 E",
    altitude: 2071,
    range: "VALLE DE LA ROMANCHE",
    department: "05"
},
{
    name:  "AMBIN",
    remote_photo_url: "http://surlessommets.blog.free.fr/public/Ambin/Ambin625.jpg",
    capacity: 30,
    address: "Bourg-Saint-Maurice",
    day_price: 17.7,
    description: "Au fond du vallon sauvage d'Ambin, sur son verrou rocheux, le refuge d'aspect solide commande un haut bassin aux multiples ressources (randonnée familiale aux lacs, traversée sur l'Italie, escalade aux Dents d'Ambin...).",
    latitude: "45.522294 N",
    longitude: "6.53763 E",
    altitude: 2270,
    range: "AMBIN",
    department: "73"
},
{
    name: "L’ARGENTIÈRE",
    remote_photo_url: "http://www.chamonix-randos.com/Resources/gallery10s.jpg?278",
    capacity: 94,
    address: "Chamonix",
    day_price: 30.8,
    description: "Un refuge d'aspect inhabituel avec son niveau supérieur en encorbellement et 'réchauffé' par son bardage sapin.",
    latitude: "45.522294 N",
    longitude: "6.53763 E",
    altitude: 2769,
    range: "PAYS DU MONT-BLANC",
    department: "74"
},
{
    name: "L’ARRÉMOULIT",
    remote_photo_url: "http://www.caf-bagneres-bigorre.com/photos/28062010_220055_19.jpg",
    capacity: 28,
    address: "Parc National des Pyrénées",
    day_price: 17.7,
    description: "Le refuge est situé au pied de la face nord-ouest du Palas dans un magnifique site lacustre au coeur du Parc national des Pyrénées",
    latitude: "45.522294 N",
    longitude: "6.53763 E",
    altitude: 2257,
    range: "VALLEE D’OSSAU",
    department: "64"
},
]
refuges_attributes.each { |params| u1.refuges.create!(params) }



