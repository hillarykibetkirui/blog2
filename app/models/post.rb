# == Schema Information
# Table name: posts
# id         :bigint           not null, primary key
#  title      :string
# body       :text
# created_at :datetime         not null
# updated_at :datetime         not null


class Post < ActiveRecord::Base
    has_many :comments, dependent: :destroy
    belongs_to :user
    validates_presence_of :title
    validates_presence_of :body
end
