# == Schema Information
#
# Table name: client_accesses
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  token      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ClientAccess < ApplicationRecord
end
