json.array!(@lideres) do |lider|
  json.extract! lider, :id, :nome, :cpf, :discipulador, :telefone, :residencial, :celular, :Endereco, :Bairro, :Cidade, :Estado
  json.url lider_url(lider, format: :json)
end
