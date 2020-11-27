class AddPlanIdToAgents < ActiveRecord::Migration[6.0]
  def change
    add_column :agents, :plan_id, :string
  end
end
