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
Availability.destroy_all
Review.destroy_all



u1 = User.create!(email: "eloi.verspieren@gmail.com", password: "verchu", admin: true)

u2 = User.create!(email: "brieucsartorius@gmail.com", password: "montagne", admin: true)


r1 = u1.refuges.create!({
    name: "LE PLAIN DU CANON",
    remote_photo_url: "http://www.refugedusotre.com/wp-content/gallery/refuge-du-sotre-paysages/sotre-vosges-refuge-vosges.jpg",
    capacity: 12,
    address: "Nancy",
    day_price: 10,
    description: "Légèrement en contre bas de la route montant de St Maurice au Ballon d'Alsace en bord de clairière, en forêt domaniale, sur les pentes NW du Ballon d'Alsace. Un petit bâtiment préfabriqué inattendu.",
    latitude: "47.836500 N",
    longitude: "6.825300 E",
    altitude: 819,
    range: "Vosges",
    department: "88"
})

r1.availabilities.create!({
  start_day: '30/08/2016',
  end_day: '30/08/2020',
  capacity: 12
  })

r1.reviews.create!( {
    rating: 5,
    content: "Refuge accueillant et confortable",
    remote_photo_url: "http://www.makertour.fr/wp-content/uploads/2016/08/mat.png",
    user: u2,
    name: "Matt"
    })

r1.reviews.create!({
    rating: 4,
    content: "Le refuge est cool, en revanche l'accueil laisse à désirer",
    remote_photo_url: "http://www.doum.it/images/fx.jpg",
    user: u2,
    name: "Flix"
    }
  )

r1.reviews.create!({
  rating: 5,
  content: "Excellent Accueil, refuge idéalement situé, allez-y les yeux fermés!",
  remote_photo_url: "https://i.vimeocdn.com/portrait/14038520_300x300",
  user: u2,
  name: "Lusac"
  })

r2 = u1.refuges.create!({
    name: "LE LANGENBERG",
    remote_photo_url: "http://www.auberge-refuge-neuweiher.fr/NEUWEIHER_WEB/FR/ACCUEIL/Auberge-refuge-neuweiher.jpg",
    capacity: 25,
    address: "Vescemont",
    day_price: 14.7,
    description: "Un bâtiment clair avec une vue exceptionnelle sur la plaine d'Alsace, la Forêt Noire, et les Alpes suisses (Oberland).
A proximité du sommet du Grand Langenberg sur le versant S.E. du Ballon d'Alsace. C'est un pays de rencontres et de frontières où l'histoire est très présente.",
    latitude: "47.806670 N",
    longitude: "6.861670 E",
    altitude: 1050,
    range: "Vosges",
    department: "90"
})

r2.availabilities.create!({
  start_day: '30/08/2016',
  end_day: '30/08/2020',
  capacity: 25
  })

r2.reviews.create!( {
    rating: 5,
    content: "Refuge accueillant et confortable",
    remote_photo_url: "http://www.makertour.fr/wp-content/uploads/2016/08/mat.png",
    user: u2,
    name: "Matt"
    })

r2.reviews.create!({
    rating: 4,
    content: "Le refuge est cool, en revanche l'accueil laisse à désirer",
    remote_photo_url: "http://www.doum.it/images/fx.jpg",
    user: u2,
    name: "Flix"
    }
  )

r2.reviews.create!({
  rating: 5,
  content: "Excellent Accueil, refuge idéalement situé, allez-y les yeux fermés!",
  remote_photo_url: "https://i.vimeocdn.com/portrait/14038520_300x300",
  user: u2,
  name: "Lusac"
  })

r3 = u1.refuges.create!({
    name: "LE GRAND VENTRON",
    remote_photo_url: "http://www.sitlor.fr/photos/741/741000070_4.jpg",
    capacity: 22,
    address: "Cornimont",
    day_price: 10,
    description: "En lisière de la forêt domaniale de Cornimont, dans un site tranquille, à proximité du sommet du Grand Ventron, point culminant d'une région boisée, avec une vue remarquable. A proximité du GR5.",
    latitude: "47.960300 N",
    longitude: "6.921700 E",
    altitude: 1150,
    range: "Vosges",
    department: "88"
})

r3.availabilities.create!({
  start_day: '30/08/2016',
  end_day: '30/08/2020',
  capacity: 22
  })

r3.reviews.create!( {
    rating: 5,
    content: "Refuge accueillant et confortable",
    remote_photo_url: "http://www.makertour.fr/wp-content/uploads/2016/08/mat.png",
    user: u2,
    name: "Matt"
    })

r3.reviews.create!({
    rating: 4,
    content: "Le refuge est cool, en revanche l'accueil laisse à désirer",
    remote_photo_url: "http://www.doum.it/images/fx.jpg",
    user: u2,
    name: "Flix"
    }
  )

r3.reviews.create!({
  rating: 5,
  content: "Excellent Accueil, refuge idéalement situé, allez-y les yeux fermés!",
  remote_photo_url: "https://i.vimeocdn.com/portrait/14038520_300x300",
  user: u2,
  name: "Lusac"
  })

r4 = u1.refuges.create!({
    name:  "LES COSMIQUES",
    remote_photo_url: "http://s2.wklcdn.com/image_8/269158/3230796/1479596.jpg",
    capacity: 148,
    address: "Chamonix-Mont-Blanc",
    day_price: 42,
    description: "Le refuge des Cosmiques est le point de départ de la traversée des trois monts qui arrive au sommet du mont Blanc et de la grande descente à ski de la vallée blanche.",
    latitude: "45.522294 N",
    longitude: "6.53763 E",
    altitude: 3613,
    range: "Alpes",
    department: "73"
})

r4.availabilities.create!({
  start_day: '30/08/2016',
  end_day: '30/08/2020',
  capacity: 148
  })

r4.reviews.create!( {
    rating: 5,
    content: "Refuge accueillant et confortable",
    remote_photo_url: "http://www.makertour.fr/wp-content/uploads/2016/08/mat.png",
    user: u2,
    name: "Matt"
    })

r4.reviews.create!({
    rating: 4,
    content: "Le refuge est cool, en revanche l'accueil laisse à désirer",
    remote_photo_url: "http://www.doum.it/images/fx.jpg",
    user: u2,
    name: "Flix"
    }
  )

r4.reviews.create!({
  rating: 5,
  content: "Excellent Accueil, refuge idéalement situé, allez-y les yeux fermés!",
  remote_photo_url: "https://i.vimeocdn.com/portrait/14038520_300x300",
  user: u2,
  name: "Lusac"
  })


r5 = u1.refuges.create!({
    name:  "LE POURRI",
    remote_photo_url: "http://s.camptocamp.org/uploads/images/1259366642_1655889778BI.jpg",
    capacity: 50,
    address: "Parc National de la Vanoise",
    day_price: 42.65,
    description: "Dans le site protégé du Parc National de la Vanoise, le refuge du Mont Pourri (refuge appartenant au Club Alpin Français de Chambéry) jouit d’une faune et une flore très riches, ainsi que d’un superbe panorama sur les glaciers et les alpages environnants.",
    latitude: "45.314026 N",
    longitude: "6.493692 E",
    altitude: 2374,
    range: "Alpes",
    department: "73"
})

r5.availabilities.create!({
  start_day: '30/08/2016',
  end_day: '30/08/2020',
  capacity: 50
  })
r5.reviews.create!( {
    rating: 4,
    content: "Refuge accueillant et confortable",
    remote_photo_url: "http://www.makertour.fr/wp-content/uploads/2016/08/mat.png",
    user: u2,
    name: "Matt"
    })

r5.reviews.create!({
    rating: 3,
    content: "Le refuge est cool, en revanche l'accueil laisse à désirer",
    remote_photo_url: "http://www.doum.it/images/fx.jpg",
    user: u2,
    name: "Flix"
    }
  )

r5.reviews.create!({
  rating: 5,
  content: "Excellent Accueil, refuge idéalement situé, allez-y les yeux fermés!",
  remote_photo_url: "https://i.vimeocdn.com/portrait/14038520_300x300",
  user: u2,
  name: "Lusac"
  })


r6 = u1.refuges.create!({
    name: "LE GOÛTER",
    remote_photo_url: "http://media.sit.savoie-mont-blanc.com/original/168866/0-902969.jpg",
    capacity: 120,
    address: "Chamonix",
    day_price: 55,
    description: "Le plus haut refuge gardé en France, quasiment sur le sommet de l'Aiguille du Goûter. Les couchers de soleil y sont intéressants, mais les nuits brèves. Le nouveau refuge est un bâtiment aux normes Haute Qualité Environnementale (HQE)." ,
    latitude: "45.522294 N",
    longitude: "6.53763 E",
    altitude: 3613,
    range: "Alpes",
    department: "74"
})

r6.availabilities.create!({
  start_day: '30/08/2016',
  end_day: '30/08/2020',
  capacity: 120
  })

r6.reviews.create!( {
    rating: 4,
    content: "Refuge accueillant et confortable",
    remote_photo_url: "http://www.makertour.fr/wp-content/uploads/2016/08/mat.png",
    user: u2,
    name: "Matt"
    })

r6.reviews.create!({
    rating: 3,
    content: "Le refuge est cool, en revanche l'accueil laisse à désirer",
    remote_photo_url: "http://www.doum.it/images/fx.jpg",
    user: u2,
    name: "Flix"
    }
  )

r6.reviews.create!({
  rating: 5,
  content: "Excellent Accueil, refuge idéalement situé, allez-y les yeux fermés!",
  remote_photo_url: "https://i.vimeocdn.com/portrait/14038520_300x300",
  user: u2,
  name: "Lusac"
  })


r7 = u1.refuges.create!({
    name:  "L’AIGLE",
    remote_photo_url: "https://www.petzl.com/fondation/foundation-refuge-aigle-vallee.jpeg?v=1",
    capacity: 34,
    address: "Chambéry",
    day_price: 29,
    description: "Un refuge neuf situé dans un site exceptionnel, accroché au rocher de l'Aigle, et face aux arêtes de la Meije. Ce refuge conforté ces dernières années garde l'originalité de ne présenter qu' une salle unique 'un lieu de vie' qui associe dortoir et salle à manger. Dans la rénovation le choix a été fait de conserver l'ancienne structure du chalet 1910." ,
    latitude: "45.011304 N",
    longitude: "6.53763 E",
    altitude: 3440,
    range: "Alpes",
    department: "05"
})

r7.availabilities.create!({
  start_day: '30/08/2016',
  end_day: '30/08/2020',
  capacity: 34
  })

r7.reviews.create!( {
    rating: 4,
    content: "Refuge accueillant et confortable",
    remote_photo_url: "http://www.makertour.fr/wp-content/uploads/2016/08/mat.png",
    user: u2,
    name: "Matt"
    })

r7.reviews.create!({
    rating: 3,
    content: "Le refuge est cool, en revanche l'accueil laisse à désirer",
    remote_photo_url: "http://www.doum.it/images/fx.jpg",
    user: u2,
    name: "Flix"
    }
  )

r7.reviews.create!({
  rating: 5,
  content: "Excellent Accueil, refuge idéalement situé, allez-y les yeux fermés!",
  remote_photo_url: "https://i.vimeocdn.com/portrait/14038520_300x300",
  user: u2,
  name: "Lusac"
  })



r8 = u1.refuges.create!({
    name:  "LES AIGUILLES D’ARVES",
    remote_photo_url: "http://www.123savoie.com/pic/109/108307_t6.jpg",
    capacity: 39,
    address: "Albertville, France",
    day_price: 18.3,
    description: "Refuge sur un balcon, dans les pentes herbeuses et fleuries descendant de l'Aiguille de l'Epaisseur. Au-dessus du torrent des Aiguilles, face à la longue crête sévère d'Argentière et avec vue sur les pointes Méridionale et Centrale des aiguilles d'Arves. La faune est particulièrement présente (chamois, marmottes, hermines ).",
    latitude: "45.118201 N",
    longitude: "6.375205 E",
    altitude: 2260,
    range: "Alpes",
    department: "73"
})

r8.availabilities.create!({
  start_day: '30/08/2016',
  end_day: '30/08/2020',
  capacity: 39
  })

r8.reviews.create!({
    rating: 3,
    content: "Le refuge est cool, en revanche l'accueil laisse à désirer",
    remote_photo_url: "http://www.doum.it/images/fx.jpg",
    user: u2,
    name: "Flix"
    }
  )

r8.reviews.create!({
  rating: 5,
  content: "Excellent Accueil, refuge idéalement situé, allez-y les yeux fermés!",
  remote_photo_url: "https://i.vimeocdn.com/portrait/14038520_300x300",
  user: u2,
  name: "Lusac"
  })

r8.reviews.create!( {
    rating: 4,
    content: "Refuge accueillant et confortable",
    remote_photo_url: "http://www.makertour.fr/wp-content/uploads/2016/08/mat.png",
    user: u2,
    name: "Matt"
    })

r9 = u1.refuges.create!({
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
    range: "Alpes",
    department: "05"
})

r9.availabilities.create!({
  start_day: '30/08/2016',
  end_day: '30/08/2020',
  capacity: 22
  })

r9.reviews.create!({
    rating: 3,
    content: "Le refuge est cool, en revanche l'accueil laisse à désirer",
    remote_photo_url: "http://www.doum.it/images/fx.jpg",
    user: u2,
    name: "Flix"
    }
  )

r9.reviews.create!({
  rating: 5,
  content: "Excellent Accueil, refuge idéalement situé, allez-y les yeux fermés!",
  remote_photo_url: "https://i.vimeocdn.com/portrait/14038520_300x300",
  user: u2,
  name: "Lusac"
  })

r9.reviews.create!( {
    rating: 5,
    content: "Refuge accueillant et confortable",
    remote_photo_url: "http://www.makertour.fr/wp-content/uploads/2016/08/mat.png",
    user: u2,
    name: "Matt"
    })

r10 = u1.refuges.create!({
    name:  "ALBERT 1ER",
    remote_photo_url: "http://s.camptocamp.org/uploads/images/1344013894_1784147809.jpg",
    capacity: 140,
    address: "Chamonix",
    day_price: 30.5,
    description: "Situé au-dessus de glacier du Tour, sur sa rive droite, c'est le seul refuge géré par le CAF de Chamonix que l'on peut atteindre sans passer sur un glacier. Son emplacement est idéal avec vue sur un large éventail de sommets : aiguille du Tour, Grande Fourche, Chardonnet, aiguille d'Argentière, la Verte et les Drus, les Aiguilles Rouges. Son nom est dû au Roi des belges, Albert 1er, alpiniste qui s'est tué en faisant de l'escalade près de Namur.",
    latitude: "45.522294 N",
    longitude: "6.53763 E",
    altitude: 2707,
    range: "Alpes",
    department: "74"
})

r10.availabilities.create!({
  start_day: '30/08/2016',
  end_day: '30/08/2020',
  capacity: 140
  })

r10.reviews.create!({
    rating: 3,
    content: "Le refuge est cool, en revanche l'accueil laisse à désirer",
    remote_photo_url: "http://www.doum.it/images/fx.jpg",
    user: u2,
    name: "Flix"
    }
  )

r10.reviews.create!({
  rating: 5,
  content: "Excellent Accueil, refuge idéalement situé, allez-y les yeux fermés!",
  remote_photo_url: "https://i.vimeocdn.com/portrait/14038520_300x300",
  user: u2,
  name: "Lusac"
  })

r10.reviews.create!( {
    rating: 4,
    content: "Refuge accueillant et confortable",
    remote_photo_url: "http://www.makertour.fr/wp-content/uploads/2016/08/mat.png",
    user: u2,
    name: "Matt"
    })


r11 = u1.refuges.create!({
    name:  "L'ALPE DE VILLAR D'ARÈNE",
    remote_photo_url: "http://static.sitra-tourisme.com/filestore/objets-touristiques/images-principales/91/228/517211-diaporama.jpg",
    capacity: 94,
    address: "Parc national des Ecrins",
    day_price: 19.6,
    description: "Un refuge idéal pour les randonneurs avec ou sans enfant, mais aussi un camp de base exceptionnel pour le ski de rando. Sur des mamelons herbus et les replats confortables d'un alpage de moyenne montagne face aux Agneaux, et au groupe aigu de Roche Meane",
    latitude: "45.522294 N",
    longitude: "6.53763 E",
    altitude: 2071,
    range: "Alpes",
    department: "05"
})

r11.availabilities.create!({
  start_day: '30/08/2016',
  end_day: '30/08/2020',
  capacity: 94
  })

r11.reviews.create!({
    rating: 3,
    content: "Le refuge est cool, en revanche l'accueil laisse à désirer",
    remote_photo_url: "http://www.doum.it/images/fx.jpg",
    user: u2,
    name: "Flix"
    }
  )

r11.reviews.create!({
  rating: 5,
  content: "Excellent Accueil, refuge idéalement situé, allez-y les yeux fermés!",
  remote_photo_url: "https://i.vimeocdn.com/portrait/14038520_300x300",
  user: u2,
  name: "Lusac"
  })

r11.reviews.create!( {
    rating: 4,
    content: "Refuge accueillant et confortable",
    remote_photo_url: "http://www.makertour.fr/wp-content/uploads/2016/08/mat.png",
    user: u2,
    name: "Matt"
    })

r12 = u1.refuges.create!({
    name:  "AMBIN",
    remote_photo_url: "http://surlessommets.blog.free.fr/public/Ambin/Ambin625.jpg",
    capacity: 30,
    address: "Bourg-Saint-Maurice",
    day_price: 17.7,
    description: "Au fond du vallon sauvage d'Ambin, sur son verrou rocheux, le refuge d'aspect solide commande un haut bassin aux multiples ressources (randonnée familiale aux lacs, traversée sur l'Italie, escalade aux Dents d'Ambin...).",
    latitude: "45.522294 N",
    longitude: "6.53763 E",
    altitude: 2270,
    range: "Alpes",
    department: "73"
})

r12.availabilities.create!({
  start_day: '30/08/2016',
  end_day: '30/08/2020',
  capacity: 30
  })

r12.reviews.create!({
    rating: 3,
    content: "Le refuge est cool, en revanche l'accueil laisse à désirer",
    remote_photo_url: "http://www.doum.it/images/fx.jpg",
    user: u2,
    name: "Flix"
    }
  )

r12.reviews.create!({
  rating: 5,
  content: "Excellent Accueil, refuge idéalement situé, allez-y les yeux fermés!",
  remote_photo_url: "https://i.vimeocdn.com/portrait/14038520_300x300",
  user: u2,
  name: "Lusac"
  })

r12.reviews.create!( {
    rating: 5,
    content: "Refuge accueillant et confortable",
    remote_photo_url: "http://www.makertour.fr/wp-content/uploads/2016/08/mat.png",
    user: u2,
    name: "Matt"
    })

r13 = u1.refuges.create!({
    name: "L’ARGENTIÈRE",
    remote_photo_url: "http://www.chamonix-randos.com/Resources/gallery10s.jpg?278",
    capacity: 94,
    address: "Chamonix",
    day_price: 30.8,
    description: "Un refuge d'aspect inhabituel avec son niveau supérieur en encorbellement et 'réchauffé' par son bardage sapin.",
    latitude: "45.522294 N",
    longitude: "6.53763 E",
    altitude: 2769,
    range: "Alpes",
    department: "74"
})

r13.availabilities.create!({
  start_day: '30/08/2016',
  end_day: '30/08/2020',
  capacity: 94
  })

r13.reviews.create!({
    rating: 3,
    content: "Le refuge est cool, en revanche l'accueil laisse à désirer",
    remote_photo_url: "http://www.doum.it/images/fx.jpg",
    user: u2,
    name: "Flix"
    }
  )

r13.reviews.create!({
  rating: 5,
  content: "Excellent Accueil, refuge idéalement situé, allez-y les yeux fermés!",
  remote_photo_url: "https://i.vimeocdn.com/portrait/14038520_300x300",
  user: u2,
  name: "Lusac"
  })

r13.reviews.create!( {
    rating: 4,
    content: "Refuge accueillant et confortable",
    remote_photo_url: "http://www.makertour.fr/wp-content/uploads/2016/08/mat.png",
    user: u2,
    name: "Matt"
    })

r14 = u1.refuges.create!({
    name: "L’AYOUS",
    remote_photo_url: "http://www.randozone.com/pict_mont/x960/im13389.jpg",
    capacity: 47,
    address: "Gabas",
    day_price: 30.7,
    description: "Situé dans les Pyrénées Atlantiques en zone de montagne de la région du Béarn au coeur de la Vallée d'Ossau, perché sur les hauteurs du tour de l'Ossau, du GR10, et sur la variante de la HRP, le Refuge d'Ayous fait face au splendide lac Gentau et au Pic du midi d'Ossau. Sa capacité d'accueil est de 47 places en petits dortoirs. Les gardiens de ce lieu assurent un service de restauration le midi. Pour les randonneurs voulant profiter du coucher de soleil sur le lac, des demi-pensions ou des pensions complètes vous sont proposées. C'est une étape idéale pour les randonnées familiales, ainsi que pour les groupes de jeunes scolaires.",
    latitude: "42.858208 N",
    longitude: "-0.288792 E",
    altitude: 1980,
    range: "Pyrénées",
    department: "64"
})

r14.availabilities.create!({
  start_day: '30/08/2016',
  end_day: '30/08/2020',
  capacity: 47
  })

r14.reviews.create!({
    rating: 3,
    content: "Le refuge est cool, en revanche l'accueil laisse à désirer",
    remote_photo_url: "http://www.doum.it/images/fx.jpg",
    user: u2,
    name: "Flix"
    }
  )

r14.reviews.create!({
  rating: 5,
  content: "Excellent Accueil, refuge idéalement situé, allez-y les yeux fermés!",
  remote_photo_url: "https://i.vimeocdn.com/portrait/14038520_300x300",
  user: u2,
  name: "Lusac"
  })

r14.reviews.create!( {
    rating: 3,
    content: "Refuge accueillant et confortable",
    remote_photo_url: "http://www.makertour.fr/wp-content/uploads/2016/08/mat.png",
    user: u2,
    name: "Matt"
    })
r17 = u1.refuges.create!({
    name: "RIFUGIO DI GASTALDI",
    remote_photo_url: "https://www.turismovallidilanzo.it/wp-content/uploads/2014/10/profilo23.jpg",
    capacity: 99,
    address: "Charbonnel",
    day_price: 21,
    description: "Refuge de l'envers de la crête frontière franco-italienne qui s'étire de la Grande Ciamarella à l'Ouille d'Arbéron.
Etape entre le refuge des Evettes et le refuge d'Avérole sur le Tour de la Bessanèse.",
    latitude: "47.960300 N",
    longitude: "6.921700 E",
    altitude: 2659,
    range: "Alpes",
    department: "73"
})

r17.availabilities.create!({
  start_day: '30/08/2016',
  end_day: '30/08/2020',
  capacity: 99
  })

r17.reviews.create!({
    rating: 5,
    content: "Le refuge est cool, en revanche l'accueil laisse à désirer",
    remote_photo_url: "http://www.doum.it/images/fx.jpg",
    user: u2,
    name: "Flix"
    }
  )

r17.reviews.create!({
  rating: 5,
  content: "Excellent Accueil, refuge idéalement situé, allez-y les yeux fermés!",
  remote_photo_url: "https://i.vimeocdn.com/portrait/14038520_300x300",
  user: u2,
  name: "Lusac"
  })

r17.reviews.create!( {
    rating: 4,
    content: "Refuge accueillant et confortable",
    remote_photo_url: "http://www.makertour.fr/wp-content/uploads/2016/08/mat.png",
    user: u2,
    name: "Matt"
    })

r16 = u1.refuges.create!({
    name: "RIFUGIO DI CIBRARIO",
    remote_photo_url: "http://www.sitlor.fr/photos/741/741000070_4.jpg",
    capacity: 42,
    address: "Margone",
    day_price: 23,
    description: "Le Rifugio Cibrario se trouve dans une plaisante cuvette à 2600 mètres de altitude; le replat est sillonnée par petits ruisseaux du Rio Peraciaval riches d'une flore variée. La tranquillité des moraines glaciales environnantes a favorisée l'implantation des bouquetins ces dernières années. On les aperçoit presque quotidiennement en train de paître dans les alentours du Rifugio.",
    latitude: "45.246800 N",
    longitude: "7.147260 E",
    altitude: 2616,
    range: "Alpes",
    department: "73"
})

r16.availabilities.create!({
  start_day: '30/08/2016',
  end_day: '30/08/2020',
  capacity: 42
  })

r16.reviews.create!({
    rating: 3,
    content: "Le refuge est cool, en revanche l'accueil laisse à désirer",
    remote_photo_url: "http://www.doum.it/images/fx.jpg",
    user: u2,
    name: "Flix"
    }
  )

r16.reviews.create!({
  rating: 5,
  content: "Excellent Accueil, refuge idéalement situé, allez-y les yeux fermés!",
  remote_photo_url: "https://i.vimeocdn.com/portrait/14038520_300x300",
  user: u2,
  name: "Lusac"
  })

r16.reviews.create!( {
    rating: 4,
    content: "Refuge accueillant et confortable",
    remote_photo_url: "http://www.makertour.fr/wp-content/uploads/2016/08/mat.png",
    user: u2,
    name: "Matt"
    })

r15 = u1.refuges.create!({
    name: "L'AVEROLE",
    remote_photo_url: "http://media.sit.savoie-mont-blanc.com/original/437868/0-527471.jpg",
    capacity: 85,
    address: "Bessans",
    day_price: 19.7,
    description: "Le refuge est situé sur une bosse herbue au-dessus de la vallée d'Averole et du confluent de deux torrents, dans un site fleuri, calme, avec vue sur les glaciers débonnaires de la zone.",
    latitude: "45.297155 N",
    longitude: "7.084291 E",
    altitude: 2210,
    range: "Alpes",
    department: "73"
})

r15.availabilities.create!({
  start_day: '30/08/2016',
  end_day: '30/08/2020',
  capacity: 85
  })

r15.reviews.create!({
    rating: 3,
    content: "Le refuge est cool, en revanche l'accueil laisse à désirer",
    remote_photo_url: "http://www.doum.it/images/fx.jpg",
    user: u2,
    name: "Flix"
    }
  )

r15.reviews.create!({
  rating: 5,
  content: "Excellent Accueil, refuge idéalement situé, allez-y les yeux fermés!",
  remote_photo_url: "https://i.vimeocdn.com/portrait/14038520_300x300",
  user: u2,
  name: "Lusac"
  })

r15.reviews.create!( {
    rating: 4,
    content: "Refuge accueillant et confortable",
    remote_photo_url: "http://www.makertour.fr/wp-content/uploads/2016/08/mat.png",
    user: u2,
    name: "Matt"
    })

r18 = u1.refuges.create!({
    name: "LA POMBIE",
    remote_photo_url: "http://www.topopyrenees.com/wp-content/uploads/2010/06/randonnee-refuge-pombie_024.jpg",
    capacity: 45,
    address: "Pau",
    day_price: 19.6,
    description: "Le refuge est situé en plein cour du Parc national des Pyrénées en haute vallée d'Ossau au pied de la face sud-est du pic du Midi d'Ossau, entre milieu pastoral et haute montagne. Il est le point de départ classique pour l'ascension du pic du Midi d'Ossau par sa voie normale, ainsi que de nombreuses voies d'escalades et courses d'arêtes. Refuge situé sur la traversée des Pyrénées (HRP), il sert également d'étape sur le tour du pic du midi d'Ossau ainsi que sur la variante du GR10. Les gardiens, très attentifs à l'accueil des montagnards et des randonneurs vous feront goûter une cuisine de qualité.",
    latitude: "42.835504 N",
    longitude: "-0.426940 E",
    altitude: 1980,
    range: "Pyrénées",
    department: "64"
})

r18.availabilities.create!({
  start_day: '30/08/2016',
  end_day: '30/08/2020',
  capacity: 45
  })

r18.reviews.create!({
    rating: 2,
    content: "Le refuge est cool, en revanche l'accueil laisse à désirer",
    remote_photo_url: "http://www.doum.it/images/fx.jpg",
    user: u2,
    name: "Flix"
    }
  )

r18.reviews.create!({
  rating: 4,
  content: "Excellent Accueil, refuge idéalement situé, allez-y les yeux fermés!",
  remote_photo_url: "https://i.vimeocdn.com/portrait/14038520_300x300",
  user: u2,
  name: "Lusac"
  })

r18.reviews.create!( {
    rating: 4,
    content: "Refuge accueillant et confortable",
    remote_photo_url: "http://www.makertour.fr/wp-content/uploads/2016/08/mat.png",
    user: u2,
    name: "Matt"
    })

r19 = u1.refuges.create!({
    name: "L’ARRÉMOULIT",
    remote_photo_url: "http://www.caf-bagneres-bigorre.com/photos/28062010_220055_19.jpg",
    capacity: 28,
    address: "Parc National des Pyrénées",
    day_price: 17.7,
    description: "Le refuge est situé au pied de la face nord-ouest du Palas dans un magnifique site lacustre au coeur du Parc national des Pyrénées",
    latitude: "45.522294 N",
    longitude: "6.53763 E",
    altitude: 2257,
    range: "Pyrénées",
    department: "64"
})

r19.availabilities.create!({
  start_day: '30/08/2016',
  end_day: '30/08/2020',
  capacity: 28
  })

r19.reviews.create!({
    rating: 3,
    content: "Le refuge est cool, en revanche l'accueil laisse à désirer",
    remote_photo_url: "http://www.doum.it/images/fx.jpg",
    user: u2,
    name: "Flix"
    }
  )

r19.reviews.create!({
  rating: 5,
  content: "Excellent Accueil, refuge idéalement situé, allez-y les yeux fermés!",
  remote_photo_url: "https://i.vimeocdn.com/portrait/14038520_300x300",
  user: u2,
  name: "Lusac"
  })

r19.reviews.create!( {
    rating: 4,
    content: "Refuge accueillant et confortable",
    remote_photo_url: "http://www.makertour.fr/wp-content/uploads/2016/08/mat.png",
    user: u2,
    name: "Matt"
    })

r20 = u1.refuges.create!({
    name: "Les Paris",
    remote_photo_url: "http://static.sitra-tourisme.com/filestore/objets-touristiques/images/1685226-diaporama.jpg",
    capacity: 22,
    address: "St Jacques en Valgaudemar",
    day_price: 38.2,
    description: "Magnifique décor pour ce Gite, départ du tour du vieux Chaillol, 5h30 de marche jusqu'au Gite du Casset",
    latitude: "45.522294 N",
    longitude: "6.53763 E",
    altitude: 980,
    range: "Alpes",
    department: "05"
})

r20.availabilities.create!({
  start_day: '30/08/2016',
  end_day: '30/08/2020',
  capacity: 22
  })

r20.reviews.create!({
    rating: 3,
    content: "Le refuge est cool, en revanche l'accueil laisse à désirer",
    remote_photo_url: "http://www.doum.it/images/fx.jpg",
    user: u2,
    name: "Flix"
    }
  )

r20.reviews.create!({
  rating: 5,
  content: "Excellent Accueil, refuge idéalement situé, allez-y les yeux fermés!",
  remote_photo_url: "https://i.vimeocdn.com/portrait/14038520_300x300",
  user: u2,
  name: "Lusac"
  })

r20.reviews.create!( {
    rating: 4,
    content: "Refuge accueillant et confortable",
    remote_photo_url: "http://www.makertour.fr/wp-content/uploads/2016/08/mat.png",
    user: u2,
    name: "Matt"
    })

r21 = u1.refuges.create!({
    name: "Le Casset",
    remote_photo_url: "http://static.sitra-tourisme.com/filestore/objets-touristiques/images/122/39/1386362-diaporama.jpg",
    capacity: 20,
    address: "la Chapelle-en-Valgaudemar",
    day_price: 41,
    description: "Magnifique décor pour ce Gite, qui fait partie du tour du vieux Chaillol, 5h30 de marche depuis le Gîte Les Paris et 4h50 jusqu'au refuge de Vallonpierre",
    latitude: "45.522294 N",
    longitude: "6.53763 E",
    altitude: 1100,
    range: "Alpes",
    department: "64"
})

r21.availabilities.create!({
  start_day: '30/08/2016',
  end_day: '30/08/2020',
  capacity: 20
  })

r21.reviews.create!({
    rating: 3,
    content: "Le refuge est cool, en revanche l'accueil laisse à désirer",
    remote_photo_url: "http://www.doum.it/images/fx.jpg",
    user: u2,
    name: "Flix"
    }
  )

r21.reviews.create!({
  rating: 5,
  content: "Excellent Accueil, refuge idéalement situé, allez-y les yeux fermés!",
  remote_photo_url: "https://i.vimeocdn.com/portrait/14038520_300x300",
  user: u2,
  name: "Lusac"
  })

r21.reviews.create!( {
    rating: 4,
    content: "Refuge accueillant et confortable",
    remote_photo_url: "http://www.makertour.fr/wp-content/uploads/2016/08/mat.png",
    user: u2,
    name: "Matt"
    })


r22 = u1.refuges.create!({
    name: "Refuge de Vallonpierre",
    remote_photo_url: "http://usbmt.free.fr/photo/oisans/j6/369a.JPG",
    capacity: 35,
    address: "la Chapelle-en-Valgaudemar",
    day_price: 47.7,
    description: "Sur la commune de la Chapelle-en-Valgaudémar, au cœur du parc national des Ecrins, Florence, Guillaume et leurs trois enfants vous accueillent dans ce petit coin de paradis.
Venez profitez d'une belle bâtisse en bois et en pierre rénovée en 2001 au bord d'un petit lac où foisonnent têtards et grenouilles. Le matin vous pouvez découvrir les chamois gambadant dans la grande prairie proche du refuge.

Ce refuge peut être un but de randonnée en famille, à la journée ou pour séjourner. Il est une étape du fameux tour de l'Oisans (GR54) et du sympathique tour du Vieux Challiol.
C'est également le départ de belles escalades sur le Banc des Aiguilles, et des courses d'alpinisme au Sirac, ce sommet engagé qui surplombe admirablement le refuge.
  4h50 de marche depuis le Gîte Le Casset et 7h50 jusqu'au gîte Les Gondoins",
    latitude: "45.522294 N",
    longitude: "6.53763 E",
    altitude: 2273,
    range: "Alpes",
    department: "64"
})

r22.availabilities.create!({
  start_day: '30/08/2016',
  end_day: '30/08/2020',
  capacity: 35
  })

r22.reviews.create!({
  rating: 5,
  content: "Excellent Accueil, refuge idéalement situé, allez-y les yeux fermés!",
  remote_photo_url: "https://i.vimeocdn.com/portrait/14038520_300x300",
  user: u2,
  name: "Lusac"
  })

r22.reviews.create!( {
    rating: 4,
    content: "Refuge accueillant et confortable",
    remote_photo_url: "http://www.makertour.fr/wp-content/uploads/2016/08/mat.png",
    user: u2,
    name: "Matt"
    })

r22.reviews.create!({
    rating: 2,
    content: "Le refuge est cool, en revanche l'accueil laisse à désirer",
    remote_photo_url: "http://www.doum.it/images/fx.jpg",
    user: u2,
    name: "Flix"
    }
  )

r23 = u1.refuges.create!({
    name: "Les Gondoins",
    remote_photo_url: "http://www.champsaur.net/wp-content/uploads/2015/03/Restaurant-des-gondoins.jpg",
    capacity: 30,
    address: "Champoléon",
    day_price: 39,
    description: "Au fond de la vallée de Champoléon, gîte auberge composé d'un dortoir de 10 places avec sanitaires et douches communs, de 4 chambres, la plupart en sous pente, avec sanitaires et douches privatifs, cuisine en gestion libre et salle commune avec cheminée.
    7h50 de marche depuis le refuge de Vallonpierre, 7h jusqu'au gîte du Chamois",
    latitude: "45.522294 N",
    longitude: "6.53763 E",
    altitude: 1300,
    range: "Alpes",
    department: "64"
})

r23.availabilities.create!({
  start_day: '30/08/2016',
  end_day: '30/08/2020',
  capacity: 30
  })

r23.reviews.create!({
  rating: 4,
  content: "Excellent Accueil, refuge idéalement situé, allez-y les yeux fermés!",
  remote_photo_url: "https://i.vimeocdn.com/portrait/14038520_300x300",
  user: u2,
  name: "Lusac"
  })

r23.reviews.create!({
    rating: 2,
    content: "Le refuge est cool, en revanche l'accueil laisse à désirer",
    remote_photo_url: "http://www.doum.it/images/fx.jpg",
    user: u2,
    name: "Flix"
    }
  )

r23.reviews.create!( {
    rating: 4,
    content: "Refuge accueillant et confortable",
    remote_photo_url: "http://www.makertour.fr/wp-content/uploads/2016/08/mat.png",
    user: u2,
    name: "Matt"
    })



r24 = u1.refuges.create!({
    name: "Le Chamois",
    remote_photo_url: "http://www.leschamois.net/wp-content/uploads/2015/09/photo-hiver.jpg",
    capacity: 25,
    address: "Les Marrons",
    day_price: 36,
    description: "Au pied du Parc National des Écrins, dans le département des Hautes Alpes,
Au cœur de la vallée du Champsaur, dans la station de Chaillol 1600,
Brigitte et René vous accueillent toute l'année dans leur gîte d'étape.
Hospitalité, Convivialité, Gastronomie Traditionnelle,
Dans un cadre authentique et charmant.
7h de marche depuis Les Gondoins et 7h jusqu'au gîte Le Paris",
    latitude: "45.522294 N",
    longitude: "6.53763 E",
    altitude: 1425,
    range: "Alpes",
    department: "64"
})

r24.availabilities.create!({
  start_day: '30/08/2016',
  end_day: '30/08/2020',
  capacity: 25
  })

r24.reviews.create!({
  rating: 4,
  content: "Excellent Accueil, refuge idéalement situé, allez-y les yeux fermés!",
  remote_photo_url: "https://i.vimeocdn.com/portrait/14038520_300x300",
  user: u2,
  name: "Lusac"
  })

r24.reviews.create!( {
    rating: 4,
    content: "Refuge accueillant et confortable",
    remote_photo_url: "http://www.makertour.fr/wp-content/uploads/2016/08/mat.png",
    user: u2,
    name: "Matt"
    })

r24.reviews.create!({
    rating: 2,
    content: "Le refuge est cool, en revanche l'accueil laisse à désirer",
    remote_photo_url: "http://www.doum.it/images/fx.jpg",
    user: u2,
    name: "Flix"
    }
  )


h1 = Hiking.create!({
    name: "Autour du Markstein",
    difficulty: "Expert",
    range: "Vosges",
    description: "Joli pti trip dans les vosges",
    remote_photo_url: "http://medias.thurdoller.ingenie.fr/images/info_pages/multitailles/1920x1440_ballonalsace06062014adg-31bd-189.jpg"

  })

h1.reviews.create!( {
    rating: 5,
    content: "Magnifique Tour à la découverte des Vosges. Les refuges conseillés par le site sont confortables et accueillants.",
    remote_photo_url: "http://www.makertour.fr/wp-content/uploads/2016/08/mat.png",
    user: u2,
    name: "Matt"
    })

h1.reviews.create!({
    rating: 3,
    content: "Très jolie randonnée, à faire en couple ou entre amis",
    remote_photo_url: "http://www.doum.it/images/fx.jpg",
    user: u2,
    name: "Flix"
    }
  )

h1.reviews.create!({
  rating: 4,
  content: "Paysages magnifiques, refuges idéalement situés, allez-y les yeux fermés!",
  remote_photo_url: "https://i.vimeocdn.com/portrait/14038520_300x300",
  user: u2,
  name: "Lusac"
  })

h2 = Hiking.create!({
    name: "Tour de la Bessanèse",
    difficulty: "Confirmé",
    range: "Alpes",
    remote_photo_url: "http://www.tourist-destinations.net/wp-content/uploads/2014/10/vanoise-rhone-alpes-france-1920x1080.jpg",
    description: "Circuit de 4 jours et 3 nuits en refuges.,

Cet itinéraire est idéal pour les randonneurs expérimentés qui aiment découvrir des paysages sauvages, des vallées diverses, franchir des cols à plus de 3000m d’altitude.
Vous apprécierez le charme et la convivialité des 3 refuges de ce circuit Franco-Italien.
Ce circuit est entièrement balisé pour vous permettre d’apprécier le paysage sans vous soucier de l’itinéraire."
  })

h2.reviews.create!( {
    rating: 5,
    content: "Magnifique Tour à la découverte de la Bessanèse. Les refuges conseillés par le site sont confortables et accueillants.",
    remote_photo_url: "http://www.makertour.fr/wp-content/uploads/2016/08/mat.png",
    user: u2,
    name: "Matt"
    })

h2.reviews.create!({
    rating: 3,
    content: "Très jolie randonnée, à faire en couple ou entre amis",
    remote_photo_url: "http://www.doum.it/images/fx.jpg",
    user: u2,
    name: "Flix"
    }
  )

h2.reviews.create!({
  rating: 4,
  content: "Paysages magnifiques, refuges idéalement situés, allez-y les yeux fermés!",
  remote_photo_url: "https://i.vimeocdn.com/portrait/14038520_300x300",
  user: u2,
  name: "Lusac"
  })

h3 = Hiking.create!({
    name: "GR® 54 - Ecrins",
    difficulty: "Avancé",
    range: "Alpes",
    description: "Au départ du Bourg d’Oisans, le GR 54 entame son grand tour par des mains courantes pour atteindre ses petits hameaux accrochés à flanc de montagne.
    Il redescend sur le torrent de Sarenne pour remonter jusqu’au col, point de vue sur les Monts de Lans.
    Vient alors une descente sur Clavans et la vallée du Ferrand suivie d'une belle montée jusqu’à Besse-en-Oisans à la frontière du vaste plateau d’Emparis.
    Au-dessus, le col de Souchet offre une vue cinq étoiles sur la Meije.
    Près de 1000 mètres de dénivelé négatif permettent de rejoindre La Grave .
    Il faut ici continuer le long de La Romanche jusqu’à ses sources sur l’alpage de Villar d’Arène.
    Arrivé au col d’Arsine, le spectacle est saisissant.
    L’univers de haute montagne invite à rendre visite au lac glacière d’Arsine avant d’entamer une longue descente le long du torrent du Petit Tabuc jusqu’à la vallée de la Guisane et Monêtier-les-Bains.
    Objectif La Vallouise par le col de l’Eychauda et les paisibles chalets de Chambran. Huit kms de route carrossable le long du torrent de l’Onde et voici l’alpage de Jas Lacroix.
    Le passage du Col de l’Aup Martin, le plus haut de tout l’itinéraire, est toujours un moment fort de l’aventure, et la descente sur le Pré de la Chaumette est tout aussi sportive.
     Pour atteindre le lac de Vallonpierre et le Valgaudemar, pas moins de trois cols taillés dans le schiste sont à négocier avec prudence. Le long de la Séveraisse, le sentier rejoint La Chapelle en Valgaudemar et reprend de la hauteur à Villar Loubière jusqu’au refuge des Souffles et l’impressionnant col de la Vaurze.
     Tout aussi impressionnante est la descente sur le Valjouffrey sauvage. Le col de Côte Belle, bien vert, contraste avec les paysages de schiste rencontrés précédemment. Valsenestre, dans le vallon du Béranger, est une halte salvatrice avant de repartir pour les derniers méandres.
     Place au vertical col de la Muzelle, porte d’entrée pour le Vénéon. Un dernier col pour atteindre le plus grand lac de l’Oisans, le Lauvitel et revoici Le Bourg d’Oisans. La boucle est bouclée !",
    remote_photo_url: "http://www.savoie-mont-blanc.com/var/smb/storage/images/media/images/activites-et-detente/rando/randonnee-au-lac-de-cerces-a-valloire/361903-1-fre-FR/Randonnee-au-lac-de-Cerces-a-Valloire_default_format.jpg"

  })

h3.reviews.create!( {
    rating: 5,
    content: "Magnifique Tour à la découverte du parc des Ecrins. Les refuges conseillés par le site sont confortables et accueillants.",
    remote_photo_url: "http://www.makertour.fr/wp-content/uploads/2016/08/mat.png",
    user: u2,
    name: "Matt"
    })

h3.reviews.create!({
    rating: 3,
    content: "Très jolie randonnée, à faire en couple ou entre amis",
    remote_photo_url: "http://www.doum.it/images/fx.jpg",
    user: u2,
    name: "Flix"
    }
  )

h3.reviews.create!({
  rating: 4,
  content: "Paysages magnifiques, refuges idéalement situés, allez-y les yeux fermés!",
  remote_photo_url: "https://i.vimeocdn.com/portrait/14038520_300x300",
  user: u2,
  name: "Lusac"
  })

h4 = Hiking.create!({
    name: "Tour du Vieux Chaillol",
    difficulty: "Avancé",
    range: "Alpes",
    description: "Le Tour du Vieux Chaillol est un GR de pays reliant la vallée de hautes montagne du Valgaudemar aux paysages de bocage du Champsaur
Au cœur du Parc National des Ecrins, vous découvrirez la richesse de la faune et de la flore, chamois, marmottes, aigles, lys orangés...
Vous serez accueillis en gîte d'étape et en refuge où vous trouverez confort, authenticité, convivialité.
",
    remote_photo_url: "http://www.huwans-clubaventure.fr/upload_1000/1264515145alpes_tmb_05_stagexpe.jpg"

  })

h4.reviews.create!( {
    rating: 5,
    content: "Magnifique Tour à la découverte des Ecrins. Les refuges conseillés par le site sont confortables et accueillants.",
    remote_photo_url: "http://www.makertour.fr/wp-content/uploads/2016/08/mat.png",
    user: u2,
    name: "Matt"
    })

h4.reviews.create!({
    rating: 3,
    content: "Très jolie randonnée, à faire en couple ou entre amis",
    remote_photo_url: "http://www.doum.it/images/fx.jpg",
    user: u2,
    name: "Flix"
    }
  )

h4.reviews.create!({
  rating: 4,
  content: "Paysages magnifiques, refuges idéalement situés, allez-y les yeux fermés!",
  remote_photo_url: "https://i.vimeocdn.com/portrait/14038520_300x300",
  user: u2,
  name: "Lusac"
  })


h5 = Hiking.create!({
    name: "Circuit du Ventron",
    difficulty: "Expert",
    range: "Vosges",
    description: "Joli pti trip dans les vosges",
    remote_photo_url: "http://skipass.fr/p/blogs/34534/48696.jpg"

  })

h5.reviews.create!( {
    rating: 4,
    content: "Magnifique Tour à la découverte des Vosges. Les refuges conseillés par le site sont confortables et accueillants.",
    remote_photo_url: "http://www.makertour.fr/wp-content/uploads/2016/08/mat.png",
    user: u2,
    name: "Matt"
    })

h5.reviews.create!({
    rating: 3,
    content: "Très jolie randonnée, à faire en couple ou entre amis",
    remote_photo_url: "http://www.doum.it/images/fx.jpg",
    user: u2,
    name: "Flix"
    }
  )

h5.reviews.create!({
  rating: 3,
  content: "Paysages magnifiques, refuges idéalement situés, allez-y les yeux fermés!",
  remote_photo_url: "https://i.vimeocdn.com/portrait/14038520_300x300",
  user: u2,
  name: "Lusac"
  })


h6 = Hiking.create!({
    name: "Tour du ballon d'alsace",
    difficulty: "Expert",
    range: "Vosges",
    description: "Joli pti trip dans les vosges",
    remote_photo_url: "http://www.ville-thann.fr/var/thann/storage/images/mediatheque/entre-les-buissonnets-et-le-belacker-800x600/425487-1-fre-FR/entre-les-Buissonnets-et-le-Belacker-800x600_lightbox.jpg"

  })

h6.reviews.create!( {
    rating: 5,
    content: "Magnifique Tour à la découverte du ballon d'Alsace. Les refuges conseillés par le site sont confortables et accueillants.",
    remote_photo_url: "http://www.makertour.fr/wp-content/uploads/2016/08/mat.png",
    user: u2,
    name: "Matt"
    })

h6.reviews.create!({
    rating: 3,
    content: "Très jolie randonnée, à faire en couple ou entre amis",
    remote_photo_url: "http://www.doum.it/images/fx.jpg",
    user: u2,
    name: "Flix"
    }
  )

h6.reviews.create!({
  rating: 4,
  content: "Paysages magnifiques, refuges idéalement situés, allez-y les yeux fermés!",
  remote_photo_url: "https://i.vimeocdn.com/portrait/14038520_300x300",
  user: u2,
  name: "Lusac"
  })


h7 = Hiking.create!({
    name: "Le Massif du Vignemale",
    difficulty: "Expert",
    range: "Pyrénées",
    description: "Joli pti trip dans les Pyrénées",
    remote_photo_url: "http://kingofwallpapers.com/pyrenees/pyrenees-003.jpg"

  })

h7.reviews.create!( {
    rating: 5,
    content: "Magnifique Tour à la découverte des Pyrénées. Les refuges conseillés par le site sont confortables et accueillants.",
    remote_photo_url: "http://www.makertour.fr/wp-content/uploads/2016/08/mat.png",
    user: u2,
    name: "Matt"
    })

h7.reviews.create!({
    rating: 4,
    content: "Très jolie randonnée, à faire en couple ou entre amis",
    remote_photo_url: "http://www.doum.it/images/fx.jpg",
    user: u2,
    name: "Flix"
    }
  )

h7.reviews.create!({
  rating: 5,
  content: "Paysages magnifiques, refuges idéalement situés, allez-y les yeux fermés!",
  remote_photo_url: "https://i.vimeocdn.com/portrait/14038520_300x300",
  user: u2,
  name: "Lusac"
  })


h8 = Hiking.create!({
    name: "Tour du Val d'Azun",
    difficulty: "Expert",
    range: "Pyrénées",
    description: "Joli pti trip dans les Pyrénées",
    remote_photo_url: "http://www.petitfute.com/medias/photo/835_501/84/a0/006853-cauterets-voie-verte-entre-pierrefite-nestalas-et-cauterets.jpg"

  })

h8.reviews.create!( {
    rating: 5,
    content: "Magnifique Tour à la découverte des Pyrénées. Les refuges conseillés par le site sont confortables et accueillants.",
    remote_photo_url: "http://www.makertour.fr/wp-content/uploads/2016/08/mat.png",
    user: u2,
    name: "Matt"
    })

h8.reviews.create!({
    rating: 3,
    content: "Très jolie randonnée, à faire en couple ou entre amis",
    remote_photo_url: "http://www.doum.it/images/fx.jpg",
    user: u2,
    name: "Flix"
    }
  )

h8.reviews.create!({
  rating: 4,
  content: "Paysages magnifiques, refuges idéalement situés, allez-y les yeux fermés!",
  remote_photo_url: "https://i.vimeocdn.com/portrait/14038520_300x300",
  user: u2,
  name: "Lusac"
  })


h9 = Hiking.create!({
    name: "Vallée des Cauterets",
    difficulty: "Expert",
    range: "Pyrénées",
    description: "Joli pti trip dans les Pyrénées",
    remote_photo_url: "https://hd.unsplash.com/photo-1446539020262-2eb0d2f63dfb"

  })

h9.reviews.create!( {
    rating: 5,
    content: "Magnifique Tour à la découverte des Pyrénées. Les refuges conseillés par le site sont confortables et accueillants.",
    remote_photo_url: "http://www.makertour.fr/wp-content/uploads/2016/08/mat.png",
    user: u2,
    name: "Matt"
    })

h9.reviews.create!({
    rating: 3,
    content: "Très jolie randonnée, à faire en couple ou entre amis",
    remote_photo_url: "http://www.doum.it/images/fx.jpg",
    user: u2,
    name: "Flix"
    }
  )

h9.reviews.create!({
  rating: 4,
  content: "Paysages magnifiques, refuges idéalement situés, allez-y les yeux fermés!",
  remote_photo_url: "https://i.vimeocdn.com/portrait/14038520_300x300",
  user: u2,
  name: "Lusac"
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
  },
  {
    refuge: r8,
    hiking: h3
  },
    {
    refuge: r9,
    hiking: h3
  },
    {
    refuge: r11,
    hiking: h3
  },
   {
    refuge: r21,
    hiking: h4
  },
  {
    refuge: r22,
    hiking: h4
  },
  {
    refuge: r23,
    hiking: h4
  },
    {
    refuge: r24,
    hiking: h4
  },
    {
    refuge: r20,
    hiking: h4
  },
]

refuge_to_hikes_attributes.each { |params| RefugeToHike.create!(params) }




