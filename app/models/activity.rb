class Activity < ActiveRecord::Base
	has_many :actinfos, dependent: :destroy
end
