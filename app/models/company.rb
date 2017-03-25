class Company < ActiveRecord::Base
	has_many :galeries
	has_many :activities
	has_one :about

	validates_presence_of :name, :message => "tidak boleh kosong"
end
