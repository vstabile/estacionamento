# encoding: UTF-8

namespace :notifications do

  desc "Generate notifications"
  task :generate => :environment do

    REGEX_PLACA = /[a-zA-Z]{3}[ \-]?[0-9]{4}/
    SUBTIPOS = [2751, 2752, 2753, 2754, 2755, 2756, 2757, 2758, 2966]
    STATUS_NAO_CONSTATADO = 14

    conditions = "tb_classificacao_chamado.id_subtipo_fk IN (#{SUBTIPOS.join(",")}) AND tb_status.id_status = #{STATUS_NAO_CONSTATADO}"

    Chamado.joins(:subtipo, :status).where(conditions).each do |chamado|
      atributos = chamado.chamado_atributos.placa
      if !atributos.empty? && !atributos.first.ds_valor.nil?
        placas = atributos.first.ds_valor.scan(REGEX_PLACA)
        placas.each do |placa|
          bairro_logradouro = chamado.bairro_logradouro

          notification = Notification.new
          notification.chamado_id = chamado.id_chamado
          notification.placa = placa.sub(/ |-/,"").upcase
          notification.logradouro = bairro_logradouro.logradouro.no_logradouro
          notification.bairro = bairro_logradouro.bairro.no_bairro.strip
          notification.numero = chamado.ds_endereco_numero
          notification.cep = chamado.ds_endereco_cep
          notification.complemento = chamado.ds_endereco_complemento
          notification.subtipo = chamado.subtipo.no_subtipo
          notification.reported_at = chamado.dt_inicio
          notification.save
        end
      end
    end

  end

end