class AssessmentPrompt < ApplicationRecord
	belongs_to :assessable, polymorphic: true
  has_many :ratings
end
