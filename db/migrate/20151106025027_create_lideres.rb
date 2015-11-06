class CreateLideres < ActiveRecord::Migration
  def change
    create_table :lideres do |t|
      t.string :nome
      t.integer :cpf
      t.string :discipulador
      t.integer :telefone
      t.string :residencial
      t.integer :celular
      t.string :Endereco
      t.string :Bairro
      t.string :Cidade
      t.string :Estado

      t.timestamps null: false
    end
  end
end
