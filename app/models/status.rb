class Status < ActiveRecord::Base
  self.table_name = :tb_status
  set_primary_key 'id_status'

  has_many :chamados, :foreign_key => "id_status_fk"
end
