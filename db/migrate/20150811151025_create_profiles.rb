class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :email
      t.text :biography

      t.timestamps null: false
    end
  end
end
