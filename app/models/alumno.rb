class Alumno < ActiveRecord::Base
	has_many :estadisticas

  def self.search(query)
     a = Alumno.where(:rut => query.to_s)
     unless a.nil?
      a.first
     else
      nil
     end
    #Alumno.where("rut like ?", "%#{query}%")
  end
end