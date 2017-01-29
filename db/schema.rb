#
ActiveRecord::Schema.define(version: 20_170_127_134_859) do
  enable_extension 'plpgsql'

  create_table 'feeds', force: :cascade do |t|
    t.string   'title'
    t.string   'autor'
    t.string   'url'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
end
