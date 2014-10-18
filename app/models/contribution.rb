class Contribution < ActiveRecord::Base

	delegate :content, to: :contribution, allow_nil: true, prefix: true

end
