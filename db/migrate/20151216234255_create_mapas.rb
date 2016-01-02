class CreateMapas < ActiveRecord::Migration
  def change
    create_table :mapas do |t|
      t.text :mapa
      t.boolean :currentMap

      t.timestamps null: false
    end
  end
end
