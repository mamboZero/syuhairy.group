class Dependent < ApplicationRecord
  belongs_to :agent, optional: true
end
