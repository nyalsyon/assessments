# == Schema Information
#
# Table name: ratings
#
#  id                  :integer          not null, primary key
#  score               :integer
#  source_id           :integer
#  assesment_prompt_id :integer
#  user_id             :integer
#  data_source_url     :string(255)
#  data_source_name    :string(255)
#  creator_meta        :string(255)
#  dependency_meta     :string(255)
#  callback_meta       :string(255)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Rating < ApplicationRecord
	belongs_to :assesment_prompt
end
