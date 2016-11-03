class Api::V1::MoviesController < ApplicationController
  def create 
    @movie=Movie.new(params_user)
    if @movie.save
      render json: {message: "succesful",data:@movie,status_code:201}
    else
      render json: {message: "unsuccesful",data:@movie,status_code:404}
    end
  end
  def index

    @movie=Movie.all
    render json: {message: "succesful",data:@movie,status_code:201}
  end
  def update 
    @movie=Movie.find_by_id(params[:id])
    if @user.update_attributes(params_user)
      render json: {message: "succesful",data:@movie,status_code:201}  
    else
      render json: {message: "unsuccesful",data:@movie,status_code:404}
    end
  end

  def destroy
    @movie=Movie.find_by_id(params[:title])
    @movie.destroy
  end
  def show
    @movie=Movie.find_by_title(params[:title])
    render json: {message: "succesful searched",data:@movie,status_code:201}


  end 
  private 
  def params_user
    params.require(:movie).permit(:title,:year,:rating,:language,:actor,:director,:producer)
  end
end 