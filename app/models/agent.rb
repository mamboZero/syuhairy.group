class Agent < ApplicationRecord
	has_many :spouses,  dependent: :destroy
	has_many :dependents,dependent: :destroy
	has_many :plans,dependent: :destroy
	accepts_nested_attributes_for :spouses
	accepts_nested_attributes_for :dependents
	accepts_nested_attributes_for :plans

	mount_uploader :doc, DocUploader
end
