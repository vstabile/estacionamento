class Bairro < ActiveRecord::Base
  self.table_name = :tb_bairro
  set_primary_key 'id_bairro'

  has_many :bairro_logradouros, :foreign_key => "id_bairro_fk"
  has_many :chamados, :through => :bairro_logradouros, :foreign_key => "id_bairro_fk"
end
