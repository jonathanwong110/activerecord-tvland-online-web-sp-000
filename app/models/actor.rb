class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    "#{first_name} #{last_name}"
  end
  
  
  def list_roles
    emilia = Actor.new(:first_name => "Emilia", :last_name => "Clarke")
    khaleesi = Character.new(:name => "Khaleesi")
    khaleesi.actor = emilia
    got = Show.new(:name => "Game of Thrones")
    khaleesi.show = got
    khaleesi.save
    
  end


end