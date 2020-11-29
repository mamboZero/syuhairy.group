class RemoveAgentFromPlans < ActiveRecord::Migration[6.0]
  def change
    remove_reference :plans, :agent, null: false, foreign_key: true
  end
end
