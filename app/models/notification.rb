class Notification < ActiveRecord::Base
  attr_accessible :bairro, :cep, :chamado_id, :complemento, :logradouro, :numero, :placa, :reported_at, :subtipo

  belongs_to :chamado
end
