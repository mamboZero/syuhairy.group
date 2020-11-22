class CreateAgents < ActiveRecord::Migration[6.0]
  def change
    create_table :agents do |t|
      t.string :name
      t.string :cert_num
      t.string :email
      t.string :ic_num
      t.text :mailing_address_1
      t.text :mailing_address_2
      t.text :employee_address_1
      t.text :employee_address_2
      t.string :race
      t.string :religion
      t.string :marital_status
      t.string :profession
      t.string :pdf_agent

      t.timestamps
    end
  end
end
