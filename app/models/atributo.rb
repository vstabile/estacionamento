class Atributo < ActiveRecord::Base
  self.table_name = :tb_atributo
  set_primary_key 'id_atributo'

  has_many :chamados, :through => :chamado_atributo, :foreign_key => "id_atributo_fk"

  scope :placa, where(:id_atributo => [219, 231, 267])
end
