class Page < ActiveRecord::Base
  attr_accessible :slug, :content, :name, :hidden, :seo_id, :seo_attributes, :layout
  belongs_to :seo

  accepts_nested_attributes_for :seo, :allow_destroy => true, :reject_if => :all_blank
  validates :name, presence: true
  validates :slug, presence: true, uniqueness: true

  extend FriendlyId
  friendly_id :slug

  scope :visible, -> { where(hidden: false) }
  scope :invisible, -> { where(hidden: true) }
  scope :without, (lambda do |field, values|
    return unless field.to_s.in? attribute_names
    values = [values] unless values.is_a? Array
    where("#{field} NOT IN (?)", values)
  end)
end
