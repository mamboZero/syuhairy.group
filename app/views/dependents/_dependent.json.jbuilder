json.extract! dependent, :id, :name, :ic_num, :mail_add_1, :mail_add_2, :race, :religion, :marital_status, :profession, :height, :weight, :phone_number, :contribution_value, :agent_id, :created_at, :updated_at
json.url dependent_url(dependent, format: :json)
