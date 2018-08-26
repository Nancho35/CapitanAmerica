json.extract! patrocinador, :id, :nombre, :nit, :descripcion, :dinero, :created_at, :updated_at
json.url patrocinador_url(patrocinador, format: :json)
