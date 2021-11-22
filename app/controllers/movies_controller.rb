# class MoviesController < ApplicationController
#   before_action :set_movie, only: [ :show, :edit, :update, :destroy]
#   def show
#   end

#   def index
#   end

#   def edit
#   end

#   def new
#     @movies = Movie.new
#   end

#   def create
#     @movie = Movie.new(movie_params)

#     if @movie.save
#       redirect_to movie_path(@movie), notice: 'Movie was successfully created.'
#     else
#       render "new"
#     end
#   end

#   # PATCH/PUT /movies/1
#   def update
#     if @movie.update(movie_params)
#       redirect_to @movie, notice: 'Movie was successfully updated.'
#     else
#       render :edit
#     end
#   end

#   def destroy
#     @movie.destroy
#     redirect_to movies_url, notice: 'Movie was successfully destroyed.'
#   end

#   private
#     # Use callbacks to share common setup or constraints between actions.
#     def set_movie
#       @movie = Movie.find(params[:id])
#     end
#   end
#     # Only allow a list of trusted parameters through.
#     def movie_params
#       params.require(:movie).permit(:title, :overview, :poster_url, :rating)
#     end
# end
