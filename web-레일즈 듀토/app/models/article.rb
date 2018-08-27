class Article < ActiveRecord::Base
    has_many :comments, dependent: :destroy
    validates :title, presence: true,  #유효성 검사        값이 비어있는지 검사함
                      length: { minimum: 5 }
  end
  #테이블 조작하는 모델 클래스