class MemberController < ApplicationController
    def index
        @member = Member.all
    end

    def show
        @member = Member.find(params[:id])
    end

    def new
        @member = Member.new
    end

    def create

    end

    def edit
        @member = Member.find(params[:id])
    end

    def update

    end
  
    def destroy
        @member = Member.find(params[:id])
        @member.destroy
   
      redirect_to member_path
    end

end
