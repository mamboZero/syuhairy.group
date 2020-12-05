class AddUserIdToAgents < ActiveRecord::Migration[6.0]
  def change
    add_column :agents, :user_id, :integer
  end
end
