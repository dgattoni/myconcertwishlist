class Band < ActiveRecord::Base
	validates_presence_of :name, :fanlevel, :description, :image
	validates :fanlevel, :inclusion => { :in => 1..7}
end
