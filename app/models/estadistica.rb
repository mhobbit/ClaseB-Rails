class Estadistica < ActiveRecord::Base
	belongs_to :alumno

  def self.search(query)
     a = Alumno.where(:rut => query.to_s)
     unless a.nil?
     	a.first.estadisticas
     else
     	[]
     end
    #Alumno.where("rut like ?", "%#{query}%")
  end
end
