json.extract! funcionario, :id, :nome, :cpf, :telefone, :endereco, :email, :created_at, :updated_at
json.url funcionario_url(funcionario, format: :json)
