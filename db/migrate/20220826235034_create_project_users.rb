class CreateProjectUsers < ActiveRecord::Migration[7.0]
  def change
    enable_extension "pgcrypto"

    create_table :project_users, id: :uuid do |t|

      t.timestamps
    end
  end
end
