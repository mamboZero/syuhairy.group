class CreateDependents < ActiveRecord::Migration[6.0]
  def change
    create_table :dependents do |t|
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
      t.string :phone_number
      t.string :contribution_value
      t.references :agent, null: false, foreign_key: true

      t.timestamps
    end
  end
end
