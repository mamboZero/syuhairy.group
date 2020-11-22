class Plan < ApplicationRecord
	belongs_to :agent, optional: true
end
