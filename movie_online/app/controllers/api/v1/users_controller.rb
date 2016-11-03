class Api::V1::UsersController<ApplicationController
    def create 
	@user=User.new(params_user)
    if @user.save
    	render json: {message: "succesful",data:@user,status_code:201}
     else
     	render json: {message: "unsuccesful",data:@user,status_code:404}
     end
    end
    def index

    	@user=User.all
    	render json: {message: "succesful",data:@user,status_code:201}
    end

    def update 
            @user=User.find_by_id(params[:id])
           if @user.update_attributes(params_user)
           render json: {message: "succesful",data:@user,status_code:201}  
       else
          render json: {message: "unsuccesful",data:@user,status_code:404}
      end
      end

        def destroy
          @user=User.find_by_id(params[:id])
          @user.destroy
        end
         def show
        @user=User.find_by_name(params[:name])
         render json: {message: "succesful searched",data:@user,status_code:201}
         end


    private 
    def params_user
    params.require(:user).permit(:name,:age,:role,:gender)
    end
end 