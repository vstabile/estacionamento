class AddIndexToBairroAndLogradouro < ActiveRecord::Migration
  def up
    add_index :tb_bairro_logradouro, :id_bairro_logradouro
    add_index :tb_bairro_logradouro, :id_bairro_fk
    add_index :tb_bairro_logradouro, :id_logradouro_fk

    add_index :tb_bairro, :id_bairro

    add_index :tb_logradouro, :id_logradouro
  end

  def down
    remove_index :tb_bairro_logradouro, :id_bairro_logradouro
    remove_index :tb_bairro_logradouro, :id_bairro_fk
    remove_index :tb_bairro_logradouro, :id_logradouro_fk

    remove_index :tb_bairro, :id_bairro

    remove_index :tb_logradouro, :id_logradouro
  end
end
