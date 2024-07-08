require 'time'
  
  class Event
    # On définit les variables d'instance avec attr_accessor
    attr_accessor :start_date, :duration, :title, :attendees
  
    # Méthode d'initialisation pour créer un nouvel événement avec une date de début,
    # une durée, un titre et une liste d'invités
    def initialize(start_date, duration, title, attendees)
      # On utilise Time.parse pour convertir la date de début en objet Time
      @start_date = Time.parse(start_date)
      @duration = duration
      @title = title
      @attendees = attendees
    end
  
    # Méthode pour décaler l'événement de 24 heures
    def postpone_24h
      # On ajoute 24 heures (86400 secondes) à la date de début
      @start_date += 86400
    end
  
    # Méthode pour calculer la date de fin de l'événement
    def end_date
      # On ajoute la durée (en minutes) à la date de début et on la convertit en objet Time
      Time.at(@start_date.to_i + @duration * 60)
    end
  
    # Méthode pour savoir si l'événement est passé
    def is_past?
      # On compare la date de début avec la date actuelle (Time.now)
      @start_date < Time.now
    end
  
    # Méthode pour savoir si l'événement est dans le futur
    def is_future?
      # On compare la date de début avec la date actuelle (Time.now)
      @start_date > Time.now
    end
  
    # Méthode pour savoir si l'événement est bientôt (dans moins de 30 minutes)
    def is_soon?
      # On compare la date de début avec la date actuelle (Time.now) en prenant en compte
      # une marge de 30 minutes (1800 secondes)
      @start_date - Time.now < 1800
    end
  
    # Méthode pour afficher les détails de l'événement de manière présentable
    def to_s
      ">Titre : #{@title}\n>Date de début : #{@start_date.strftime('%Y-%m-%d %H:%M')}\n>Durée : #{@duration} minutes\n>Invités : #{@attendees.join(', ')}"
    end
  end