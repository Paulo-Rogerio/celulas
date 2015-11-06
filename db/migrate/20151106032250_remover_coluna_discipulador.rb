class RemoverColunaDiscipulador < ActiveRecord::Migration
  def self.up
    remove_column :lideres, :discipulador
  end

  def self.down
  end
end
