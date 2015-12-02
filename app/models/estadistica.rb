class Estadistica < ActiveRecord::Base
  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("rut like ?", "%#{query}%") 
  end
end
