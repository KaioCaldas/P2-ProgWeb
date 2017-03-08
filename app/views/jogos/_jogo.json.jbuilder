json.extract! jogo, :id, :titulo, :genero, :desenvolvedora, :ano, :plataforma, :preco, :qtdEstoque, :created_at, :updated_at
json.url jogo_url(jogo, format: :json)
