require 'csv'

class Agent < ApplicationRecord
	include GenerateCsv

	belongs_to :user
	has_many :spouses,  dependent: :destroy
	has_many :dependents,dependent: :destroy
	belongs_to :plan
	accepts_nested_attributes_for :spouses, reject_if: proc {|attributes| attributes['name'].blank?}
	accepts_nested_attributes_for :dependents,reject_if: proc {|attributes| attributes['name'].blank?}

	validates :ic_num, presence: :true

	mount_uploader :doc, DocUploader


def display_currency
	"RM #{contribution}"
end


end

