class AddAgentToSpouses < ActiveRecord::Migration[6.0]
  def change
    add_reference :spouses, :agent, foreign_key: true
  end
end
