class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network
  has_many :actors, through: :characters

  def actors_list
    actors_array = []
    self.actors.each {|actor| actors_array << actor.full_name}
    actors_array
  end
  
end