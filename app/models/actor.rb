class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    roles_array = []
    self.characters.each {|char| roles_array << "#{char.name} - #{char.show.name}"}
    roles_array
  end
  
end