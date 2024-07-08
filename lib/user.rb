class User
    # On définit les variables d'instance @email et @age avec attr_accessor
    # pour pouvoir les lire et les modifier facilement
    attr_accessor :email, :age
  
    # On définit la variable de classe @@all pour stocker tous les utilisateurs créés
    @@all = []
  
    # Méthode d'initialisation pour créer un nouvel utilisateur avec un email et un âge
    def initialize(email, age)
      @email = email
      @age = age
      # On ajoute le nouvel utilisateur à la variable de classe @@all
      @@all << self
    end
  
    # Méthode de classe pour récupérer tous les utilisateurs créés
    def self.all
      @@all
    end
  
    # Méthode de classe pour trouver un utilisateur par son email
    def self.find_by_email(email)
      # On parcourt tous les utilisateurs et on renvoie le premier qui a l'email correspondant
      @@all.find { |user| user.email == email }
    end
  end