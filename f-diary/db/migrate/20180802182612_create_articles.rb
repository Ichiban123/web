class CreateArticles < ActiveRecord::Migration
  def change#마이그레이션파일(스키마 변경)
    create_table :articles do |t|
      t.string :name
      t.text :food        #필드
      t.text :calorie
      #데이터형 필드이름 필드플래그
      t.timestamps null: false
    end
  end
end   #테이블은 아티클과 코멘트 생성됨