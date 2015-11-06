class CreateDiscipuladores < ActiveRecord::Migration
  def change
    create_table :discipuladores do |t|
      t.string :nome
      t.integer :cpf
      t.integer :fone_residencial
      t.integer :fone_celular
      t.string :endereco
      t.string :bairro
      t.string :cidade
      t.string :estado

      t.timestamps null: false
    end
  end
end
