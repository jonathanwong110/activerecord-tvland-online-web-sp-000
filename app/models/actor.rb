class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    "#{first_name} #{last_name}"
  end
  
  
  def list_roles
      urkel = Character.new(:name => "Steve Urkel")
    urkel.catchphrase = "Did I do that?"
    urkel.save
    "#{character.name} - #{show.name}"
  end


end