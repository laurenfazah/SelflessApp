class Contribution < ActiveRecord::Base
	belongs_to :user

	delegate :content, to: :contribution, allow_nil: true, prefix: true

end
