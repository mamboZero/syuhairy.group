class Spouse < ApplicationRecord
	belongs_to :agent, optional: true
end
