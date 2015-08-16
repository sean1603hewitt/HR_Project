class CreateHolidays < ActiveRecord::Migration
  def change
    create_table :holidays do |t|
      t.string :name
      t.string :email
      t.date :start_date
      t.date :end_date
      t.text :Special_Circumstances
      t.boolean :approved
      t.text :Reasons_for_Refusal

      t.timestamps null: false
    end
  end
end
