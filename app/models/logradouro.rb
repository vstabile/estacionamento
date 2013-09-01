class Logradouro < ActiveRecord::Base
  self.table_name = :tb_logradouro
  set_primary_key 'id_logradouro'

  has_many :bairro_logradouros, :foreign_key => "id_logradouro_fk"
  has_many :chamados, :through => :bairro_logradouros, :foreign_key => "id_logradouro_fk"
end