json.extract! ficha_medica, :id, :numero, :especialidad, :nombre, :apellido, :edad, :ci, :etnia, :sexo, :estadoCivil, :lugarNacimiento, :telefono, :nCasa, :email, :direccionActual, :departamentoActual, :distritoActual, :created_at, :updated_at
json.url ficha_medica_url(ficha_medica, format: :json)
