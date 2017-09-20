json.extract! stock, :id, :nombreMedicamento, :fechaEntrada, :fechaVencimiento, :descrip, :cantidad, :created_at, :updated_at
json.url stock_url(stock, format: :json)
