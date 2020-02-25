require "open-uri"

Participation.destroy_all
Quest.destroy_all
User.destroy_all

puts 'Creating users...'

user_1 = User.new(email: "astrid@gmail.com", password: "Astrid")
user_2 = User.new(email: "thomas@gmail.com", password: "Thomas")
user_3 = User.new(email: "jeremy@gmail.com", password: "Jeremy")

user_1.save!
user_2.save!
user_3.save!

puts 'Finished users creation !'

puts 'Creating quests...'

file_1_1 = URI.open('https://images.unsplash.com/photo-1525680996651-0222228be6f0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
file_1_2 = URI.open('https://images.unsplash.com/photo-1525680996651-0222228be6f0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
file_1_3 = URI.open('https://images.unsplash.com/photo-1525680996651-0222228be6f0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
file_1_4 = URI.open('https://images.unsplash.com/photo-1525680996651-0222228be6f0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
file_1_5 = URI.open('https://images.unsplash.com/photo-1525680996651-0222228be6f0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
file_1_6 = URI.open('https://images.unsplash.com/photo-1525680996651-0222228be6f0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
file_2_1 = URI.open('https://images.unsplash.com/photo-1525680996651-0222228be6f0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
file_2_2 = URI.open('https://images.unsplash.com/photo-1525680996651-0222228be6f0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
file_2_3 = URI.open('https://images.unsplash.com/photo-1525680996651-0222228be6f0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
file_2_4 = URI.open('https://images.unsplash.com/photo-1525680996651-0222228be6f0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
file_2_5 = URI.open('https://images.unsplash.com/photo-1525680996651-0222228be6f0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
file_2_6 = URI.open('https://images.unsplash.com/photo-1525680996651-0222228be6f0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
file_3_1 = URI.open('https://images.unsplash.com/photo-1525680996651-0222228be6f0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
file_3_2 = URI.open('https://images.unsplash.com/photo-1525680996651-0222228be6f0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
file_3_3 = URI.open('https://images.unsplash.com/photo-1525680996651-0222228be6f0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
file_3_4 = URI.open('https://images.unsplash.com/photo-1525680996651-0222228be6f0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
file_3_5 = URI.open('https://images.unsplash.com/photo-1525680996651-0222228be6f0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
file_3_6 = URI.open('https://images.unsplash.com/photo-1525680996651-0222228be6f0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')

quest_1_1 = Quest.create(
  points: 100,
  title: "J'éteins la lumière dès que possible",
  content: "
    › Participer à un mouvement planétaire de sensibilisation aux enjeux écologiques
    › Sentir qu'on est pas seul à se préoccuper de l'urgence climatique
    › Il est nécessaire d'aller beaucoup plus loin que les événements classiques de sensibilisation",
)
quest_1_1.photo.attach(io: file_1_1, filename: 'nes.png', content_type: 'image/png')

quest_1_2 = Quest.create(
  points: 100,
  title: "J'utilise un shampoing solide bio",
  content: "
    › Le client peut être remis au coeur du circuit de l'alimentation zéro déchet
    › Acheter sans emballage permet de lutter contre le gaspillage en achetant des quantités justes
    › Les boutiques en vrac permettent de rendre une nourriture de qualité accessible à un prix mesuré",
)
quest_1_2.photo.attach(io: file_1_2, filename: 'nes.png', content_type: 'image/png')

quest_1_3 = Quest.create(
    points: 100,
    title: "Je fais pipi sous la douche",
    content: "
      › Il n'y a pas de petits gestes dans la lutte pour préserver nos ressources
      › Chaque moment du quotidien est une occasion d'agir et d'optimiser son mode de vie
      › L'eau potable est une ressource précieuse qu'il faut économiser",
)
quest_1_3.photo.attach(io: file_1_3, filename: 'nes.png', content_type: 'image/png')

quest_1_4 = Quest.create(
    points: 100,
    title: "Je privilégie les escaliers",
    content: "
        › Il n'y a pas de petits gestes pour réduire son empreinte écologique
        › Marcher davantage permet de moins émettre de CO2
        › Plus de mobilité douce, c'est aussi bon pour la santé",
)
quest_1_4.photo.attach(io: file_1_4, filename: 'nes.png', content_type: 'image/png')

quest_1_5 = Quest.create(
    points: 100,
    title: "J'utilise un moteur de recherche éco-responsable",
    content: "
        › Je surfe sur Internet en réduisant mon impact écologique
        › Je maitrise l'utilisation de mes données
        › Je soutiens des projets éco-responsables grâce à mes recherches",
)
quest_1_5.photo.attach(io: file_1_5, filename: 'nes.png', content_type: 'image/png')

quest_1_6 = Quest.create(
    points: 100,
    title: "J'utilise une boule à thé",
    content: "
      › Le thé en sachet individuel contient des microparticules de plastique
      › Acheter du thé en vrac permet de réduire ses déchets",
)
quest_1_5.photo.attach(io: file_1_6, filename: 'nes.png', content_type: 'image/png')

quest_2_1 = Quest.create(
  points: 200,
  title: 'J\'achète mes fruits et légumes en circuit court',
  content: '
    › Le client peut être remis au coeur du circuit de l’alimentation
    › Valoriser les producteurs, favoriser les produits durables et créer du lien social : c’est possible
    › Le modèle coopératif permet de rendre une nourriture de qualité accessible à un prix mesuré',
)
quest_2_1.photo.attach(io: file_2_1, filename: 'nes.png', content_type: 'image/png')

quest_2_2 = Quest.create(
  points: 200,
  title: 'Je réduis ma garde robe',
  content: '
    › L’industrie textile est l’une des plus polluantes au monde
    › Faire le vide dans ses placards, c’est aussi faire le vide dans sa tête
    › Nous achetons trop de vêtements, trop souvent',
)
quest_2_2.photo.attach(io: file_2_2, filename: 'nes.png', content_type: 'image/png')

quest_2_3 = Quest.create(
  points: 200,
  title: 'Je fabrique une éponge zéro déchet',
  content: '
    › On peut revaloriser ses anciens vêtements en éponges zéro déchet
    › C’est facile de mettre sa cuisine au diapason du zéro déchet
    › Réduire son empreinte écologique, c’est souvent économique',
)
quest_2_3.photo.attach(io: file_2_3, filename: 'nes.png', content_type: 'image/png')

quest_2_4 = Quest.create(
  points: 200,
  title: 'Je fais des cadeaux réutilisés',
  content: '
    › Questionner notre modèle de surconsommation
    › Revaloriser des objets de seconde-main et recréer du lien social
    › Redonner à Noël son vrai sens et privilégier la qualité à la quantité',
)
quest_2_4.photo.attach(io: file_2_4, filename: 'nes.png', content_type: 'image/png')

quest_2_5 = Quest.create(
  points: 200,
  title: 'Je participe à nettoyer les espaces publics',
  content: '
    › Tout le plastique produit dans le monde existe encore
    › L’enjeu du traitement des déchets sauvages est important pour la protection de l’environnement
    › Chacun peut contribuer à nettoyer les espaces sauvages',
)
quest_2_5.photo.attach(io: file_2_5, filename: 'nes.png', content_type: 'image/png')

quest_2_6 = Quest.create(
  points: 200,
  title: 'J\'arrête de manger au fast-food',
  content: '
    › Je diminue mon utilisation de nourriture suremballée
    › Je dis stop à l’industrie agroalimentaire et à ses pratiques désastreuses
    › Je retrouve le goût des bonnes choses et je favorise les commerces de proximité',
)
quest_2_6.photo.attach(io: file_2_6, filename: 'nes.png', content_type: 'image/png')

quest_3_1 = Quest.create(
  points: 400,
  title: 'Je fais mes courses en vrac',
  content: "
    › Le client peut être remis au coeur du circuit de l’alimentation zéro déchet
    › Acheter sans emballage permet de lutter contre le gaspillage en achetant des quantités justes
    › Les boutiques en vrac permettent de rendre une nourriture de qualité accessible à un prix mesuré",
)
quest_3_1.photo.attach(io: file_3_1, filename: 'nes.png', content_type: 'image/png')

quest_3_2 = Quest.create(
  points: 400,
  title: 'Je m\'habille dans les friperies',
  content: "
    › L'industrie textile est l’une des plus polluantes au monde
    › Il y a des millions de vêtements d’occasion qui méritent d’être reportés
    › Nous achetons trop de vêtements, trop souvent",
)
quest_3_2.photo.attach(io: file_3_2, filename: 'nes.png', content_type: 'image/png')

quest_3_3 = Quest.create(
  points: 400,
  title: 'J\'achète mes produits high-tech reconditionnés',
  content: "
    › Les produits high-tech demandent beaucoup de matières premières
    › Le reconditionnement permet de limiter l\'empreinte écologique de nos iBidules
    › La démarche éco-citoyenne permet aussi de faire des économies d’argent ",
)
quest_3_3.photo.attach(io: file_3_3, filename: 'nes.png', content_type: 'image/png')

quest_3_4 = Quest.create(
  points: 400,
  title: 'Je préfère le train à l\'avion pour les trajets continentaux',
  content: "
    › Je me rends compte de l’impact écologique considérable des trajets en avion
    › Je prends le temps de voyager autrement et de reprendre le goût des distances
    › Je diminue considérablement mon empreinte écologique en préférant les déplacements en train
    ",
)
quest_3_4.photo.attach(io: file_3_4, filename: 'nes.png', content_type: 'image/png')

quest_3_5 = Quest.create(
  points: 400,
  title: 'Je participe à nettoyer les espaces publics',
  content: "
    › Tout le plastique produit dans le monde existe encore
    › L’enjeu du traitement des déchets sauvages est important pour la protection de l’environnement
    › Chacun peut contribuer à nettoyer les espaces sauvages",
)
quest_3_5.photo.attach(io: file_3_5, filename: 'nes.png', content_type: 'image/png')

quest_3_6 = Quest.create(
  points: 400,
  title: 'Je fais mon propre dentifrice',
  content: "
    › Les dentifrices classiques sont polluants et mauvais pour la santé
    › On peut fabriquer facilement ses propres produits d’hygiène
    › Le zéro déchet permet de se ressaisir de son pouvoir de faire soi-même ",
)
quest_3_6.photo.attach(io: file_3_6, filename: 'nes.png', content_type: 'image/png')

puts 'Finished quests creation'
