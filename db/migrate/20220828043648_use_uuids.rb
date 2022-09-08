class UseUuids < ActiveRecord::Migration[7.0]
  def change
    enable_extension 'pgcrypto'

    remove_column :users, :id
    remove_column :projects, :id

    add_column :users, :id, :uuid, default: "gen_random_uuid()", null: false, primary_key: true
    add_column :projects, :id, :uuid, default: "gen_random_uuid()", null: false, primary_key: true
  end
end
