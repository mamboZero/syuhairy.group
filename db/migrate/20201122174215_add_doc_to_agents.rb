class AddDocToAgents < ActiveRecord::Migration[6.0]
  def change
    add_column :agents, :doc, :string
  end
end
