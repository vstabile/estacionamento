class Subtipo < ActiveRecord::Base
  self.table_name = :tb_subtipo
  set_primary_key 'id_subtipo'

  has_many :chamados, :through => :classificacao_chamado, :foreign_key => "id_status_fk"
end
