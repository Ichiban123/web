class Article < ActiveRecord::Base
    has_many :comments, dependent: :destroy
    validates :title, presence: true,
                      length: { minimum: 5 }
  end
  #테이블 조작하는 모델 클래스