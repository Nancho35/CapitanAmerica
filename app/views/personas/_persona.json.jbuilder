json.extract! persona, :id, :nombre, :sexo, :edad, :mision, :created_at, :updated_at
json.url persona_url(persona, format: :json)
