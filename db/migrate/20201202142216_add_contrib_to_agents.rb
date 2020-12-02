class AddContribToAgents < ActiveRecord::Migration[6.0]
  def change
    add_column :agents, :contrib, :integer
  end
end
