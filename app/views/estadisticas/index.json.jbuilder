json.array!(@estadisticas) do |estadistica|
  json.extract! estadistica, :id, :velocidad, :tiempoVelocidad, :velocidadMedia, :velocidadMaxima, :velocidadMinima, :ruta, :cambiosVelocidad, :cambiosRpm, :rut, :tiempoCarril, :tiempoFueraCarril
  json.url estadistica_url(estadistica, format: :json)
end
