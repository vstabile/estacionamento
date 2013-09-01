class BairroLogradouro < ActiveRecord::Base
  self.table_name = :tb_bairro_logradouro
  set_primary_key 'id_bairro_logradouro'

  has_many :chamado, :foreign_key => "id_bairro_logradouro_fk"
  belongs_to :bairro, :foreign_key => "id_bairro_fk"
  belongs_to :logradouro, :foreign_key => "id_logradouro_fk"

  default_scope includes(:bairro, :logradouro)
end
