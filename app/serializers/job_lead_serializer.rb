class JobLeadSerializer < ActiveModel::Serializer
  attributes :id, :company, :link, :date, :contact_method, :referral, :title
  belongs_to :user
  has_many :notes
  has_one :contact
  has_one :checklist
end

# t.bigint "user_id", null: false
#     t.string "company"
#     t.string "link"
#     t.date "date"
#     t.string "contact_method"
#     t.string "referral"
#     t.string "title"