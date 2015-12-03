json.array!(@alumnos) do |alumno|
  json.extract! alumno, :id, :rut, :nombre, :apellido
  json.url alumno_url(alumno, format: :json)
end
