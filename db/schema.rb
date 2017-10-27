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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171018145824) do

  create_table "categoris", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diagnosticos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "fecha"
    t.string "hora"
    t.string "axilaRectal"
    t.string "presionArterial"
    t.string "pulso"
    t.string "freCardiaca"
    t.string "freRespi"
    t.string "peso"
    t.string "talla"
    t.string "perimeCefalico"
    t.string "masaCorpo"
    t.string "circuAbdomi"
    t.string "estadNutricional"
    t.string "alimentacion"
    t.string "desarrolloMadura"
    t.string "tanner"
    t.string "vacucacionVigente"
    t.string "areaTecEspecialidades"
    t.string "nuevo"
    t.text "motivoConsul"
    t.text "diagnostico"
    t.text "examenFisico"
    t.text "otroDiagnos"
    t.text "tratamiento"
    t.integer "ficha_medica_id"
    t.index ["ficha_medica_id"], name: "index_diagnosticos_on_ficha_medica_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ficha_medicas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "numero"
    t.string "especialidad"
    t.string "nombre"
    t.string "apellido"
    t.integer "edad"
    t.integer "nacionalidad"
    t.integer "ci"
    t.string "fechaNacimiento", limit: 100, null: false
    t.string "etnia"
    t.string "sexo"
    t.string "estadoCivil"
    t.string "lugarNacimiento"
    t.integer "telefono"
    t.integer "nCasa"
    t.string "email"
    t.string "direccionActual"
    t.string "departamentoActual"
    t.string "distritoActual"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "puesto_salud_id"
    t.bigint "categori_id"
    t.bigint "diagnostico_id"
    t.index ["categori_id"], name: "index_ficha_medicas_on_categori_id"
    t.index ["diagnostico_id"], name: "index_ficha_medicas_on_diagnostico_id"
    t.index ["puesto_salud_id"], name: "index_ficha_medicas_on_puesto_salud_id"
  end

  create_table "ficha_nums", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "numero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "categoria_id"
    t.integer "puesto_salud_id"
    t.integer "paciente_id"
    t.integer "categori_id"
    t.index ["categori_id"], name: "index_ficha_nums_on_categori_id"
    t.index ["categoria_id"], name: "index_ficha_nums_on_categoria_id"
    t.index ["paciente_id"], name: "index_ficha_nums_on_paciente_id"
    t.index ["puesto_salud_id"], name: "index_ficha_nums_on_puesto_salud_id"
  end

  create_table "fichas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "fichaNum"
    t.string "especialidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "models", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_models_on_email", unique: true
    t.index ["reset_password_token"], name: "index_models_on_reset_password_token", unique: true
  end

  create_table "pacientes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "ci"
    t.string "sexo"
    t.string "edad"
    t.string "lugarNacimiento"
    t.string "nacionalidad"
    t.string "etnia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "ficha_num_id"
    t.index ["ficha_num_id"], name: "index_pacientes_on_ficha_num_id"
  end

  create_table "puesto_saluds", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "nombre"
    t.string "contacto"
    t.string "localidad"
    t.string "distrito"
    t.string "direccion"
    t.string "regionSanitaria"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stocks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "nombreMedicamento"
    t.string "fechaEntrada"
    t.string "fechaVencimiento"
    t.text "descrip"
    t.integer "cantidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
