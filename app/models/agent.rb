class Agent < ApplicationRecord
	has_many :spouses,  dependent: :destroy
	has_many :dependents,dependent: :destroy
	belongs_to :plan
	accepts_nested_attributes_for :spouses
	accepts_nested_attributes_for :dependents

	validates :ic_num, presence: :true

	mount_uploader :doc, DocUploader


def display_currency
	"RM #{contribution}"
end


end

