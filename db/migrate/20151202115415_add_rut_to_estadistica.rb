class AddRutToEstadistica < ActiveRecord::Migration
  def change
    add_column :estadisticas, :rut, :string
    add_column :estadisticas, :tiempoCarril, :integer
    add_column :estadisticas, :tiempoFueraCarril, :integer
  end
end
