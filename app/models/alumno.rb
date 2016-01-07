class Alumno < ActiveRecord::Base
	has_many :estadisticas

  def self.search(query)
     a = Alumno.where("rut LIKE ?", "%#{query}%")
     unless a.empty?
      a
     else
      []
     end
    #Alumno.where("rut like ?", "%#{query}%")
  end
end