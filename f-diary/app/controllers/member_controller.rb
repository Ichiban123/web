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
        @member = Member.new(member_params)

        if @member.save
            redirect_to @member 
          else
            render 'new'
        end
    end

    def edit
        @member = Member.find(params[:id])
    end

    def update
        @member = Member.find(params[:id])
   
      if @member.update(member_params)
        redirect_to @member
      else
        render 'edit'
      end
    end
  
    def destroy
        @member = Member.find(params[:id])
        @member.destroy
   
      redirect_to member_path
    end
    private 
    def member_params
      params.require(:member).permit(:id, :password ,:food,:calorie,:date,:bld)
    end
end
