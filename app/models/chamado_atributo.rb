class ChamadoAtributo < ActiveRecord::Base
  self.table_name = :tb_chamado_atributo
  set_primary_key 'id_chamado_atributo'

  belongs_to :chamado, :foreign_key => "id_chamado_fk"
  belongs_to :atributo, :foreign_key => "id_atributo_fk"

  scope :placa, where(:id_atributo_fk => [219, 231, 267])
end
