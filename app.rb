require_relative 'lib/user'
require_relative 'lib/event'
  
# On crée des utilisateurs
julie = User.new('julie@email.com', 32)
jean = User.new('jean@email.com', 25)
  
# On crée un événement avec ces utilisateurs en tant qu'invités
event = Event.new('2019-01-13 09:00', 10, 'standup quotidien', [julie.email, jean.email])
  
# On affiche les détails de l'événement
puts event.to_s
  
# Décalage de l'événement de 24 heures
event.postpone_24h

# Affichage des nouveaux détails de l'événement
puts event.to_s

# Récupération d'un utilisateur par son email
user = User.find_by_email('julie@email.com')

# Affichage de l'âge de l'utilisateur
puts "Voici l'âge de l'utilisateur : #{user.age}"
  