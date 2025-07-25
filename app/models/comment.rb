# == Schema Information
# 
# Table name: comments
# id         :bigint           not null, primary key
# body       :text
# created_at :datetime         not null
# updated_at :datetime         not null 
# 

class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  validates_presence_of :post_id
  validates_presence_of :body
end
