class CreateAlumnos < ActiveRecord::Migration
  def change
    create_table :alumnos do |t|
      t.string :rut
      t.string :nombre
      t.string :apellido

      t.timestamps null: false
    end
  end
end
