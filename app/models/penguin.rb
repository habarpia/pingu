class Penguin < ActiveRecord::Base
	beak_max = 4;
	belly_max = 5;
	eyes_max = 4;
	body_max = 1;
	personalities = /(grumpy)|(downright jolly)|(serious)|(bold)|(serious)|(sassy)/
	colours = /(FF6666)|(AD85FF)/

	validates :name, length: { minimum: 3 ,maximum: 20}
	#validates_uniqueness_of :name, scope: :user_id

	validates :gender, length: {minimum:1 , maximum:1}
	validates_format_of :gender, :with=>/(f)|(m)/

	validates_format_of :personality, :with=>personalities

	validates :color_mum, length: {minimum:6 , maximum:6}
	validates_format_of :color_mum, :with=>colours
	validates :color_dad, length: {minimum:6 , maximum:6}
	validates_format_of :color_dad, :with=>colours
	validates :color_own, length: {minimum:6 , maximum:6}
	validates_format_of :color_own, :with=>colours

	validates :belly_color_mum, length: {minimum:6 , maximum:6}
	validates_format_of :belly_color_mum, :with=>colours
	validates :belly_color_dad, length: {minimum:6 , maximum:6}
	validates_format_of :belly_color_dad, :with=>colours
	validates :belly_color_own, length: {minimum:6 , maximum:6}
	validates_format_of :belly_color_own, :with=>colours

	validates :beak_mum, numericality: { greater_than_or_equal_to: 1,
                                    less_than_or_equal_to: beak_max,
                                    only_integer: true }
	validates :beak_dad, numericality: { greater_than_or_equal_to: 1,
                                    less_than_or_equal_to: beak_max,
                                    only_integer: true }
	validates :beak_own, numericality: { greater_than_or_equal_to: 1,
                                    less_than_or_equal_to: beak_max,
                                    only_integer: true }
	validates :belly_mum, numericality: { greater_than_or_equal_to: 1,
                                    less_than_or_equal_to: belly_max,
                                    only_integer: true }
	validates :belly_dad, numericality: { greater_than_or_equal_to: 1,
                                    less_than_or_equal_to: belly_max,
                                    only_integer: true }
	validates :belly_own, numericality: { greater_than_or_equal_to: 1,
                                    less_than_or_equal_to: belly_max,
                                    only_integer: true }
	validates :eyes_mum, numericality: { greater_than_or_equal_to: 1,
                                    less_than_or_equal_to: eyes_max,
                                    only_integer: true }
	validates :eyes_dad, numericality: { greater_than_or_equal_to: 1,
                                    less_than_or_equal_to: eyes_max,
                                    only_integer: true }
	validates :eyes_own, numericality: { greater_than_or_equal_to: 1,
                                    less_than_or_equal_to: eyes_max,
                                    only_integer: true }
	validates :body_mum, numericality: { greater_than_or_equal_to: 1,
                                    less_than_or_equal_to: body_max,
                                    only_integer: true }
	validates :body_dad, numericality: { greater_than_or_equal_to: 1,
                                    less_than_or_equal_to: body_max,
                                    only_integer: true }
	validates :body_own, numericality: { greater_than_or_equal_to: 1,
                                    less_than_or_equal_to: body_max,
                                    only_integer: true }
end
