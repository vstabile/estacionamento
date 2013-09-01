class Chamado < ActiveRecord::Base
  self.table_name = :tb_chamado
  set_primary_key 'id_chamado'

  has_many :atributos, :through => :chamado_atributos, :foreign_key => "id_chamado_fk"
  has_many :chamado_atributos, :foreign_key => "id_chamado_fk"
  has_one :subtipo, :through => :classificacao_chamado, :foreign_key => "id_chamado_fk"
  has_one :classificacao_chamado, :foreign_key => "id_chamado_fk"
  belongs_to :status, :foreign_key => "id_status_fk"
  belongs_to :bairro_logradouro, :foreign_key => "id_bairro_logradouro_fk"
end
