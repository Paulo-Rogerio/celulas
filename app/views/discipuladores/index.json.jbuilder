json.array!(@discipuladores) do |discipulador|
  json.extract! discipulador, :id, :nome, :cpf, :fone_residencial, :fone_celular, :endereco, :bairro, :cidade, :estado
  json.url discipulador_url(discipulador, format: :json)
end
