class AddIndexes < ActiveRecord::Migration
  def up
    add_index :tb_atributo, :id_atributo

    add_index :tb_chamado, :id_chamado
    add_index :tb_chamado, :id_status_fk

    add_index :tb_chamado_atributo, :id_chamado_atributo
    add_index :tb_chamado_atributo, :id_chamado_fk
    add_index :tb_chamado_atributo, :id_atributo_fk

    add_index :tb_classificacao_chamado, :id_classificacao_chamado
    add_index :tb_classificacao_chamado, :id_subtipo_fk
    add_index :tb_classificacao_chamado, :id_chamado_fk

    add_index :tb_status, :id_status

    add_index :tb_subtipo, :id_subtipo
    add_index :tb_subtipo, :id_tipo_fk
  end

  def down
    remove_index :tb_atributo, :id_atributo

    remove_index :tb_chamado, :id_chamado
    remove_index :tb_chamado, :id_status_fk

    remove_index :tb_chamado_atributo, :id_chamado_atributo
    remove_index :tb_chamado_atributo, :id_chamado_fk
    remove_index :tb_chamado_atributo, :id_atributo_fk

    remove_index :tb_classificacao_chamado, :id_classificacao_chamado
    remove_index :tb_classificacao_chamado, :id_subtipo_fk
    remove_index :tb_classificacao_chamado, :id_chamado_fk

    remove_index :tb_status, :id_status

    remove_index :tb_subtipo, :id_subtipo
    remove_index :tb_subtipo, :id_tipo_fk
  end
end
