class MemberController < ApplicationController
    def list
        @member = member.all
    end
end
