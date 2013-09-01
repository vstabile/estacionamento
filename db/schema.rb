# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130901003914) do

  create_table "notifications", :force => true do |t|
    t.integer  "chamado_id",  :null => false
    t.string   "placa",       :null => false
    t.string   "logradouro"
    t.string   "bairro"
    t.string   "numero"
    t.string   "cep"
    t.string   "complemento"
    t.string   "subtipo"
    t.datetime "reported_at", :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "notifications", ["chamado_id"], :name => "index_notifications_on_chamado_id"

  create_table "tb_atributo", :id => false, :force => true do |t|
    t.integer "id_atributo",           :limit => 8
    t.string  "no_amigavel",           :limit => 100
    t.string  "ds_expressao",          :limit => 500
    t.string  "ds_instrucao",          :limit => 100
    t.boolean "fl_ativo"
    t.binary  "ds_valores"
    t.string  "ic_tipo_atributo",      :limit => 1
    t.string  "cd_atributo_comum",     :limit => 50
    t.string  "ic_interface_atributo", :limit => 1
    t.boolean "fl_reposta_numerica"
  end

  add_index "tb_atributo", ["id_atributo"], :name => "index_tb_atributo_on_id_atributo"

  create_table "tb_bairro", :id => false, :force => true do |t|
    t.integer "id_bairro", :limit => 8
    t.string  "no_bairro", :limit => 100
    t.boolean "fl_ativo"
  end

  add_index "tb_bairro", ["id_bairro"], :name => "index_tb_bairro_on_id_bairro"

  create_table "tb_bairro_logradouro", :id => false, :force => true do |t|
    t.integer "id_bairro_logradouro", :limit => 8
    t.integer "id_bairro_fk",         :limit => 8
    t.integer "id_logradouro_fk",     :limit => 8
    t.boolean "fl_ativo"
  end

  add_index "tb_bairro_logradouro", ["id_bairro_fk"], :name => "index_tb_bairro_logradouro_on_id_bairro_fk"
  add_index "tb_bairro_logradouro", ["id_bairro_logradouro"], :name => "index_tb_bairro_logradouro_on_id_bairro_logradouro"
  add_index "tb_bairro_logradouro", ["id_logradouro_fk"], :name => "index_tb_bairro_logradouro_on_id_logradouro_fk"

  create_table "tb_chamado", :id => false, :force => true do |t|
    t.integer  "id_chamado",                     :limit => 8
    t.binary   "ds_chamado"
    t.integer  "id_categoria_fk",                :limit => 8
    t.integer  "id_origem_ocorrencia_fk",        :limit => 8
    t.integer  "id_tipo_solicitante_fk",         :limit => 8
    t.datetime "dt_inicio"
    t.datetime "dt_fim"
    t.integer  "id_bairro_logradouro_fk",        :limit => 8
    t.string   "ds_endereco_numero",             :limit => 50
    t.string   "ds_endereco_cep",                :limit => 20
    t.string   "ds_endereco_complemento",        :limit => 200
    t.string   "ds_endereco_referencia",         :limit => 400
    t.integer  "id_pessoa_fk",                   :limit => 8
    t.integer  "id_solicitacao_cancelamento_fk", :limit => 8
    t.float    "nu_coord_x"
    t.float    "nu_coord_y"
    t.integer  "id_status_fk",                   :limit => 8
    t.string   "ic_grau_prioridade",             :limit => 1
    t.boolean  "fl_solicitar_cancelamento"
    t.boolean  "fl_cancelamento_solicitado"
    t.boolean  "fl_lido"
    t.boolean  "fl_resolvido"
    t.integer  "id_responsavel_chamado_fk",      :limit => 8
    t.datetime "dt_fim_departamental"
    t.boolean  "fl_prazo_nao_util"
    t.string   "ic_prazo_tipo",                  :limit => 1
    t.string   "ic_prazo_unidade_tempo",         :limit => 1
    t.integer  "nu_prazo",                       :limit => 2
    t.boolean  "fl_pendente_reclassificacao"
    t.boolean  "fl_prazo_nao_util_bonus"
    t.string   "ic_prazo_tipo_bonus",            :limit => 1
    t.string   "ic_prazo_unidade_tempo_bonus",   :limit => 1
    t.integer  "nu_prazo_bonus",                 :limit => 2
    t.boolean  "fl_incompleto"
    t.datetime "dt_atualizacao"
    t.boolean  "fl_composto"
    t.boolean  "fl_logradouro_inexistente"
    t.boolean  "fl_define_status_chamado_pai"
    t.string   "ic_motivo_nao_integravel",       :limit => 1
    t.boolean  "fl_coord_pesquisada"
    t.integer  "id_tipo_endereco_fk",            :limit => 8
  end

  add_index "tb_chamado", ["id_chamado"], :name => "index_tb_chamado_on_id_chamado"
  add_index "tb_chamado", ["id_status_fk"], :name => "index_tb_chamado_on_id_status_fk"

  create_table "tb_chamado_atributo", :id => false, :force => true do |t|
    t.integer "id_chamado_fk",                :limit => 8
    t.integer "id_atributo_fk",               :limit => 8
    t.string  "ds_valor",                     :limit => 500
    t.integer "id_chamado_atributo",          :limit => 8
    t.boolean "fl_ativo"
    t.integer "id_unidade_organizacional_fk", :limit => 8
  end

  add_index "tb_chamado_atributo", ["id_atributo_fk"], :name => "index_tb_chamado_atributo_on_id_atributo_fk"
  add_index "tb_chamado_atributo", ["id_chamado_atributo"], :name => "index_tb_chamado_atributo_on_id_chamado_atributo"
  add_index "tb_chamado_atributo", ["id_chamado_fk"], :name => "index_tb_chamado_atributo_on_id_chamado_fk"

  create_table "tb_classificacao_chamado", :id => false, :force => true do |t|
    t.integer  "id_classificacao_chamado",     :limit => 8
    t.datetime "dt_prevista_atendimento"
    t.datetime "dt_real_diagnostico"
    t.datetime "dt_classificacao"
    t.integer  "id_subtipo_fk",                :limit => 8
    t.integer  "id_chamado_fk",                :limit => 8
    t.boolean  "fl_publico"
    t.binary   "ds_diagnostico_moderado"
    t.integer  "id_pessoa_fk",                 :limit => 8
    t.integer  "id_pessoa_diagnostico_fk",     :limit => 8
    t.integer  "id_pessoa_moderador_fk",       :limit => 8
    t.integer  "id_pessoa_programacao_fk",     :limit => 8
    t.string   "no_status_especifico",         :limit => 100
    t.integer  "id_motivo_justificativas_fk",  :limit => 8
    t.datetime "dt_info_sistema"
    t.datetime "dt_envio"
    t.integer  "id_status_especifico_fk",      :limit => 8
    t.integer  "id_cenario_fk",                :limit => 8
    t.boolean  "fl_enviado"
    t.boolean  "fl_aceito"
    t.integer  "id_unidade_organizacional_fk", :limit => 8
  end

  add_index "tb_classificacao_chamado", ["id_chamado_fk"], :name => "index_tb_classificacao_chamado_on_id_chamado_fk"
  add_index "tb_classificacao_chamado", ["id_classificacao_chamado"], :name => "index_tb_classificacao_chamado_on_id_classificacao_chamado"
  add_index "tb_classificacao_chamado", ["id_subtipo_fk"], :name => "index_tb_classificacao_chamado_on_id_subtipo_fk"

  create_table "tb_logradouro", :id => false, :force => true do |t|
    t.integer "id_logradouro",           :limit => 8
    t.string  "no_logradouro",           :limit => 100
    t.string  "no_logradouro_invertido", :limit => 100
    t.boolean "fl_ativo"
  end

  add_index "tb_logradouro", ["id_logradouro"], :name => "index_tb_logradouro_on_id_logradouro"

  create_table "tb_status", :id => false, :force => true do |t|
    t.integer "id_status",           :limit => 8
    t.string  "no_status",           :limit => 100
    t.boolean "fl_ativo"
    t.boolean "fl_encerramento"
    t.boolean "fl_solucao"
    t.boolean "fl_nao_conta_sla"
    t.boolean "fl_falha_integracao"
    t.string  "ds_sms",              :limit => 50
  end

  add_index "tb_status", ["id_status"], :name => "index_tb_status_on_id_status"

  create_table "tb_subtipo", :id => false, :force => true do |t|
    t.integer "id_subtipo",                      :limit => 8
    t.integer "id_tipo_fk",                      :limit => 8
    t.string  "no_subtipo",                      :limit => 200
    t.binary  "ds_script_atendimento"
    t.string  "ic_grau_prioridade",              :limit => 1
    t.boolean "fl_ativo"
    t.boolean "fl_nao_selecionavel_atendimento"
    t.binary  "ds_palavra_chave"
  end

  add_index "tb_subtipo", ["id_subtipo"], :name => "index_tb_subtipo_on_id_subtipo"
  add_index "tb_subtipo", ["id_tipo_fk"], :name => "index_tb_subtipo_on_id_tipo_fk"

end
