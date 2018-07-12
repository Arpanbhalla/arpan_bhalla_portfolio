class Portfolio < ApplicationRecord
  validates_presence_of :title, :subtitle, :body, :main_image
  include Placeholder
  has_many :technologies
  accepts_nested_attributes_for :technologies,
                                           reject_if: lambda { |attr| attr['name'].blank? }

  scope :react_scope, -> { where(subtitle: 'React') }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
  end
end