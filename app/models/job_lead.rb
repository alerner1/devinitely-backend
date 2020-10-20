class JobLead < ApplicationRecord
  belongs_to :user
  has_one :checklist
  has_one :contact
  has_many :notes
  accepts_nested_attributes_for :checklist
  accepts_nested_attributes_for :contact
  accepts_nested_attributes_for :notes
end
