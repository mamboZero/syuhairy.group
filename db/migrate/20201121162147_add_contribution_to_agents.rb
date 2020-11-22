class AddContributionToAgents < ActiveRecord::Migration[6.0]
  def change
    add_column :agents, :contribution, :string
  end
end
