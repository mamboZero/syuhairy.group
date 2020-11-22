class CreateSpouses < ActiveRecord::Migration[6.0]
  def change
    create_table :spouses do |t|
      t.string :status
      t.string :email
      t.string :name
      t.string :ic_num
      t.text :mail_add_1
      t.text :mail_add_2
      t.string :race
      t.string :religion
      t.string :marital_status
      t.string :profession
      t.string :height
      t.string :weight
      t.string :hp_number
      t.string :gross_income
      t.string :employee_phone_number

      t.timestamps
    end
  end
end
