json.array!(@hombres) do |hombre|
  json.extract! hombre, :id, :nombre, :apellido, :cedula
  json.url hombre_url(hombre, format: :json)
end
