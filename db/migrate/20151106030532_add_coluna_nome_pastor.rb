class AddColunaNomePastor < ActiveRecord::Migration
  def self.up
    #add_column :products, :part_number, :string
    remove_column :lideres, :discipulador
  end

  def self.down
    remove_column :lideres, :discipulador
  end
end
