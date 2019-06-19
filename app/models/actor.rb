class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    "#{first_name} #{last_name}"
  end
  
  def characters
    actor = Actor.new(first_name: "Emilia", last_name: "Clarke")
    character = Character.new(name: "Khaleesi")
    character.actor = character
    character.save
  end
  
  def list_roles
    "#{character.name} - #{show.name}"
  end


end