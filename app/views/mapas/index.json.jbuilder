json.array!(@mapas) do |mapa|
  json.extract! mapa, :id, :mapa, :currentMap
  json.url mapa_url(mapa, format: :json)
end
