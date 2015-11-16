class Campaign < ActiveRecord::Base
	belongs_to :user

	GOAL = %w[inspire entertain educate custom]

end
