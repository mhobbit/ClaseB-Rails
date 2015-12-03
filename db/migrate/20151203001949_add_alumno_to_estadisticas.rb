class AddAlumnoToEstadisticas < ActiveRecord::Migration
  def change
    add_reference :estadisticas, :alumno, index: true, foreign_key: true
    remove_column :estadisticas, :rut
  end
end
