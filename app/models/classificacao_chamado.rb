class ClassificacaoChamado < ActiveRecord::Base
  self.table_name = :tb_classificacao_chamado
  set_primary_key 'id_classificacao_chamado'

  belongs_to :chamado, :foreign_key => "id_chamado_fk"
  belongs_to :subtipo, :foreign_key => "id_subtipo_fk"
end
