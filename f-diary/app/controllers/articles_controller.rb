class ArticlesController < ApplicationController
  http_basic_authenticate_with name: "aaa", password: "aaaa", only: :destroy
    #스캐폴딩  컨트롤러 클래스
    def index
      @articles = Article.all
      #@템플릿 변수   로직과 디자인을 결합   erb 와 rb
      #템플릿에 넣고 싶은 데이터를 준비한다
    end
   
    def show
      @article = Article.find(params[:id]) #url 패턴
    end
   
    def new
      @article = Article.new
    end
   
    def edit
      @article = Article.find(params[:id])#매개변수 값 추출
    end
   
    def create
      @article = Article.new(article_params) #해시로 추출된값을 생성자에 넣어 객체를 생성함
   
      if @article.save# 유효성 검사 통과
        redirect_to @article #아티클로 이동
      else
        render 'new'
        #안되면 new.html 을 호출
      end
    end
   
    def update
      @article = Article.find(params[:id])
   
      if @article.update(article_params)
        redirect_to @article
      else
        render 'edit'
      end
    end
   
    def destroy
      @article = Article.find(params[:id])
      @article.destroy
   
      redirect_to articles_path
    end

    #def form_tag#범용적 입력양식 생성    푸롬테그 둘다 <from>생성하기 위한 메서드
    #  @article= Article.new
    #end

   # def form_tag#모델에 특성화된 입력 양식
    #  @article= Article.new
   # end
    private #액션으로 호출되지 않음  - 필터
      def article_params
        params.require(:article).permit(:title, :text)
      end#입력 받은데이터(post) 추출
  end