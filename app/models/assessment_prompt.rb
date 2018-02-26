# == Schema Information
#
# Table name: assessment_prompts
#
#  id               :integer          not null, primary key
#  assessable_id    :integer
#  position         :integer
#  description      :string(255)
#  hint             :string(255)
#  assessable_type  :string(255)
#  answer_meta_data :string(255)
#  data_source_url  :string(255)
#  data_source_name :string(255)
#  creator_meta     :string(255)
#  dependency_meta  :string(255)
#  callback_meta    :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class AssessmentPrompt < ApplicationRecord
  has_many :ratings
end
