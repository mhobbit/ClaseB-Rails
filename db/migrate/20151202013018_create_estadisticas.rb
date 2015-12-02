class CreateEstadisticas < ActiveRecord::Migration
  def change
    create_table :estadisticas do |t|
      t.float :velocidad, :array => true
      t.float :tiempoVelocidad, :array => true
      t.float :velocidadMedia
      t.float :velocidadMaxima
      t.float :velocidadMinima
      t.text :ruta
      t.float :cambiosVelocidad, :array => true
      t.integer :cambiosRpm, :array => true

      t.timestamps null: false
    end
  end
end
