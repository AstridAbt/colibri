require "open-uri"

CarbonePrint.destroy_all
Participation.destroy_all
Quest.destroy_all
User.destroy_all

puts 'Creating users...'

user_1 = User.new(email: "astrid@gmail.com", password: "Astrid", username: "Astro DeLaVega")
user_2 = User.new(email: "thomas@gmail.com", password: "Thomas", username: "StreichI2")
user_3 = User.new(email: "jeremy@gmail.com", password: "Jeremy", username: "Strad")

user_1.save!
user_2.save!
user_3.save!

puts 'Finished users creation !'

puts 'Creating quests...'

file_1_1 = URI.open('https://res.cloudinary.com/ddaiy1lcj/image/upload/v1582800585/2-j_%C3%A9teins_la_lumi%C3%A8re_dke3ku.jpg')
file_1_2 = URI.open('https://res.cloudinary.com/ddaiy1lcj/image/upload/v1582795670/1_J_utilise_un_shampoing_solide_bio_qnxlpb.jpg')
file_1_3 = URI.open('https://res.cloudinary.com/ddaiy1lcj/image/upload/v1582795670/1_Je_fais_pipi_sous_la_douche_rvyvuh.jpg')
file_1_4 = URI.open('https://res.cloudinary.com/ddaiy1lcj/image/upload/v1582795670/1_Je_priviligie_les_escaliers_qbwq8v.jpg')
file_1_5 = URI.open('https://res.cloudinary.com/ddaiy1lcj/image/upload/v1582795670/1_J_utilise_un_moteur_de_recherche_%C3%A9co-responsable_temmat.jpg')
file_1_6 = URI.open('https://res.cloudinary.com/ddaiy1lcj/image/upload/v1582795669/1_J_utilise_une_boule_%C3%A0_th%C3%A9_brwmq1.jpg')
file_2_1 = URI.open('https://res.cloudinary.com/ddaiy1lcj/image/upload/v1582795670/2_J_ach%C3%A8te_mes_fruits_et_l%C3%A9gumes_circuit_court_xlyrdv.jpg')
file_2_2 = URI.open('https://res.cloudinary.com/ddaiy1lcj/image/upload/v1582795670/2_Je_r%C3%A9duis_ma_garde_robe_hbmfjp.jpg')
file_2_3 = URI.open('https://res.cloudinary.com/ddaiy1lcj/image/upload/v1582795670/2_Je_fabrique_une_%C3%A9ponge_z%C3%A9ro_d%C3%A9chet_a0zqy7.jpg')
file_2_4 = URI.open('https://res.cloudinary.com/ddaiy1lcj/image/upload/v1582795670/2_Je_fais_des_cadeaux_r%C3%A9utilis%C3%A9s_zlcl6u.jpg')
file_2_5 = URI.open('https://res.cloudinary.com/ddaiy1lcj/image/upload/v1582795671/2_Je_privil%C3%A9gie_le_v%C3%A9lo_nlrlvs.jpg')
file_2_6 = URI.open('https://res.cloudinary.com/ddaiy1lcj/image/upload/v1582795670/2_J_arr%C3%AAte_de_manger_au_fast-food_bgbbr3.jpg')
file_3_1 = URI.open('https://res.cloudinary.com/ddaiy1lcj/image/upload/v1582795671/3_Je_fais_mes_courses_en_vrac_evjy3y.jpg')
file_3_2 = URI.open('https://res.cloudinary.com/ddaiy1lcj/image/upload/v1582795671/3_Je_m_habille_dans_les_friperies_ck426p.jpg')
file_3_3 = URI.open('https://res.cloudinary.com/ddaiy1lcj/image/upload/v1582795670/3_J_ach%C3%A8te_mes_produits_high-tech_reconditionn%C3%A9s_oanpjs.jpg')
file_3_4 = URI.open('https://res.cloudinary.com/ddaiy1lcj/image/upload/v1582795671/3_Je_pr%C3%A9f%C3%A8re_le_train_%C3%A0_l_avion_i2yrgc.jpg')
file_3_5 = URI.open('https://res.cloudinary.com/ddaiy1lcj/image/upload/v1582795671/3_Je_participe_%C3%A0_nettoyer_les_espaces_sauvages_fodbes.jpg')
file_3_6 = URI.open('https://res.cloudinary.com/ddaiy1lcj/image/upload/v1582795670/3_Je_fais_mon_propre_dentifrice_hommuo.jpg')

quest_1_1 = Quest.create!(
  points: 100,
  title: "J'éteins la lumière dès que possible",
  content: "
     Participer à un mouvement planétaire de sensibilisation aux enjeux écologiques",
  content_2: "
     Sentir qu'on est pas seul à se préoccuper de l'urgence climatique",
  content_3: "
     Il est nécessaire d'aller beaucoup plus loin que les événements classiques de sensibilisation"
)
quest_1_1.photo.attach(io: file_1_1, filename: 'nes.png', content_type: 'image/png')

quest_1_2 = Quest.create!(
  points: 100,
  title: "J'utilise un shampoing solide bio",
  content: "
     Le client peut être remis au coeur du circuit de l'alimentation zéro déchet",
  content_2: "
     Acheter sans emballage permet de lutter contre le gaspillage en achetant des quantités justes",
  content_3: "
     Les boutiques en vrac permettent de rendre une nourriture de qualité accessible à un prix mesuré"
)
quest_1_2.photo.attach(io: file_1_2, filename: 'nes.png', content_type: 'image/png')

quest_1_3 = Quest.create!(
    points: 100,
    title: "Je fais pipi sous la douche",
    content: "
       Il n'y a pas de petits gestes dans la lutte pour préserver nos ressources",
    content_2: "
       Chaque moment du quotidien est une occasion d'agir et d'optimiser son mode de vie",
    content_3: "
       L'eau potable est une ressource précieuse qu'il faut économiser"
)
quest_1_3.photo.attach(io: file_1_3, filename: 'nes.png', content_type: 'image/png')

quest_1_4 = Quest.create!(
    points: 100,
    title: "Je privilégie les escaliers",
    content: "
         Il n'y a pas de petits gestes pour réduire son empreinte écologique",
    content_2: "
         Marcher davantage permet de moins émettre de CO2",
    content_3: "
         Plus de mobilité douce, c'est aussi bon pour la santé"
)
quest_1_4.photo.attach(io: file_1_4, filename: 'nes.png', content_type: 'image/png')

quest_1_5 = Quest.create!(
    points: 100,
    title: "J'utilise un moteur de recherche éco-responsable",
    content: "
         Je surfe sur Internet en réduisant mon impact écologique",
    content_2: "
         Je maitrise l'utilisation de mes données",
    content_3: "
         Je soutiens des projets éco-responsables grâce à mes recherches"
)
quest_1_5.photo.attach(io: file_1_5, filename: 'nes.png', content_type: 'image/png')

quest_1_6 = Quest.create!(
    points: 100,
    title: "J'utilise une boule à thé",
    content: "
       Le thé en sachet individuel contient des microparticules de plastique",
    content_2: "
       Acheter du thé en vrac permet de réduire ses déchets"
)
quest_1_6.photo.attach(io: file_1_6, filename: 'nes.png', content_type: 'image/png')

quest_2_1 = Quest.create!(
  points: 200,
  title: 'J\'achète mes fruits et légumes en circuit court',
  content: "
     Le client peut être remis au coeur du circuit de l’alimentation",
  content_2: "
     Valoriser les producteurs, favoriser les produits durables et créer du lien social : c’est possible",
  content_3: "
     Le modèle coopératif permet de rendre une nourriture de qualité accessible à un prix mesuré"
)
quest_2_1.photo.attach(io: file_2_1, filename: 'nes.png', content_type: 'image/png')

quest_2_2 = Quest.create!(
  points: 200,
  title: 'Je réduis ma garde robe',
  content: "
     L’industrie textile est l’une des plus polluantes au monde",
  content_2: "
     Faire le vide dans ses placards, c’est aussi faire le vide dans sa tête",
  content_3: "
     Nous achetons trop de vêtements, trop souvent"
)
quest_2_2.photo.attach(io: file_2_2, filename: 'nes.png', content_type: 'image/png')

quest_2_3 = Quest.create!(
  points: 200,
  title: 'Je fabrique une éponge zéro déchet',
  content: "
     On peut revaloriser ses anciens vêtements en éponges zéro déchet",
  content_2: "
     C’est facile de mettre sa cuisine au diapason du zéro déchet",
  content_3: "
     Réduire son empreinte écologique, c’est souvent économique"
)
quest_2_3.photo.attach(io: file_2_3, filename: 'nes.png', content_type: 'image/png')

quest_2_4 = Quest.create!(
  points: 200,
  title: 'Je fais des cadeaux réutilisés',
  content: "
     Questionner notre modèle de surconsommation",
  content_2: "
     Revaloriser des objets de seconde-main et recréer du lien social",
  content_3: "
     Redonner à Noël son vrai sens et privilégier la qualité à la quantité"
)
quest_2_4.photo.attach(io: file_2_4, filename: 'nes.png', content_type: 'image/png')

quest_2_5 = Quest.create!(
  points: 200,
  title: 'Je privilégie le vélo pour mes déplacements courts',
  content:"
     Je décide de rompre avec mes habitudes",
  content_2: "
     J’opte pour une solution de mobilité douce pour les petites distances",
  content_3: "
     Je retrouve le sens des distances et le goût de la vie à l’air libre"
)
quest_2_5.photo.attach(io: file_2_5, filename: 'nes.png', content_type: 'image/png')

quest_2_6 = Quest.create!(
  points: 200,
  title: 'J\'arrête de manger au fast-food',
  content:"
     Je diminue mon utilisation de nourriture suremballée",
  content_2: "
     Je dis stop à l’industrie agroalimentaire et à ses pratiques désastreuses",
  content_3: "
     Je retrouve le goût des bonnes choses et je favorise les commerces de proximité"
)
quest_2_6.photo.attach(io: file_2_6, filename: 'nes.png', content_type: 'image/png')

quest_3_1 = Quest.create!(
  points: 400,
  title: 'Je fais mes courses en vrac',
  content: "
     Le client peut être remis au coeur du circuit de l’alimentation zéro déchet",
  content_2: "
     Acheter sans emballage permet de lutter contre le gaspillage en achetant des quantités justes",
  content_3: "
     Les boutiques en vrac permettent de rendre une nourriture de qualité accessible à un prix mesuré"
)
quest_3_1.photo.attach(io: file_3_1, filename: 'nes.png', content_type: 'image/png')

quest_3_2 = Quest.create!(
  points: 400,
  title: 'Je m\'habille dans les friperies',
  content: "
     L'industrie textile est l’une des plus polluantes au monde",
  content_2: "
     Il y a des millions de vêtements d’occasion qui méritent d’être reportés",
  content_3: "
     Nous achetons trop de vêtements, trop souvent"
)
quest_3_2.photo.attach(io: file_3_2, filename: 'nes.png', content_type: 'image/png')

quest_3_3 = Quest.create!(
  points: 400,
  title: 'J\'achète mes produits high-tech reconditionnés',
  content: "
     Les produits high-tech demandent beaucoup de matières premières",
  content_2: "
     Le reconditionnement permet de limiter l\'empreinte écologique de nos iBidules",
  content_3: "
     La démarche éco-citoyenne permet aussi de faire des économies d’argent "
)
quest_3_3.photo.attach(io: file_3_3, filename: 'nes.png', content_type: 'image/png')

quest_3_4 = Quest.create!(
  points: 400,
  title: 'Je préfère le train à l\'avion pour les trajets continentaux',
  content: "
     Je me rends compte de l’impact écologique considérable des trajets en avion",
  content_2: "
     Je prends le temps de voyager autrement et de reprendre le goût des distances",
  content_3: "
     Je diminue considérablement mon empreinte écologique en préférant les déplacements en train"
)
quest_3_4.photo.attach(io: file_3_4, filename: 'nes.png', content_type: 'image/png')

quest_3_5 = Quest.create!(
  points: 400,
  title: 'Je participe à nettoyer les espaces publics',
  content: "
     Tout le plastique produit dans le monde existe encore",
  content_2: "
     L’enjeu du traitement des déchets sauvages est important pour la protection de l’environnement",
  content_3: "
     Chacun peut contribuer à nettoyer les espaces sauvages"
)
quest_3_5.photo.attach(io: file_3_5, filename: 'nes.png', content_type: 'image/png')

quest_3_6 = Quest.create!(
  points: 400,
  title: 'Je fais mon propre dentifrice',
  content: "
     Les dentifrices classiques sont polluants et mauvais pour la santé",
  content_2: "
     On peut fabriquer facilement ses propres produits d’hygiène",
  content_3: "
     Le zéro déchet permet de se ressaisir de son pouvoir de faire soi-même "
)
quest_3_6.photo.attach(io: file_3_6, filename: 'nes.png', content_type: 'image/png')

puts 'Finished quests creation'
