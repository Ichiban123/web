class ArticlesController < ApplicationController
 
    http_basic_authenticate_with name: "asdfasdf", password: "asdfasdf", except: [:index, :show]
    
    def index
      @articles = Article.all
      #@템플릿 변수   로직과 디자인을 결합   erb 와 rb
      #템플릿에 넣고 싶은 데이터를 준비한다
    end
   
    def show
      @article = Article.find(params[:id])
    end
   
    def new
      @article = Article.new
    end
   
    def edit
      @article = Article.find(params[:id])
    end
   
    def create
      @article = Article.new(article_params)
   
      if @article.save
        redirect_to @article
      else
        render 'new'
        #new.html 을 호출
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
   
    private
      def article_params
        params.require(:article).permit(:title, :text)
      end
  end