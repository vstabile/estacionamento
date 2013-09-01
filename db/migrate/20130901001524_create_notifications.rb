class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.integer :chamado_id, :null => false, :unique => true
      t.string :placa, :null => false
      t.string :logradouro
      t.string :bairro
      t.string :numero
      t.string :cep
      t.string :complemento
      t.string :subtipo
      t.datetime :reported_at, :null => false

      t.timestamps
    end

    add_index :notifications, :chamado_id
  end
end
