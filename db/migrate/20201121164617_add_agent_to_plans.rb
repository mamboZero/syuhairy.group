class AddAgentToPlans < ActiveRecord::Migration[6.0]
  def change
    add_reference :plans, :agent, foreign_key: true
  end
end
