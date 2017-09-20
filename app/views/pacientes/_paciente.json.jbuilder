json.extract! paciente, :id, :nombre, :apellido, :ci, :sexo, :edad, :lugarNacimiento, :nacionalidad, :etnia, :created_at, :updated_at
json.url paciente_url(paciente, format: :json)
