class ListsController < ApplicationController
  before_action :set_list, only: [:show, :destroy]

  def index
    @lists = List.all
  end

  def show
    @bookmark = Bookmark.new
    # @review = Review.new(list: @list)
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def destroy
    @list.destroy
    redirect_to lists_path
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name)
  end
end

# class ListsController < ApplicationController
#   before_action :set_list, only: [ :show, :edit]
#   def index
#     @lists = List.all
#   end

#   def show
#     # @list = List.find(params[:id])
#   end
#   def new
#     @list = List.new
#   end

#   def create
#     @list = List.new(list_params)

#     if @list.save
#       redirect_to list_path(@list), notice: 'List was successfully created.'
#     else
#       render :new
#     end
#   end

#   def destroy
#     @list.destroy
#     redirect_to lists_url, notice: 'List was successfully destroyed.'
#   end

#   private
#     # Use callbacks to share common setup or constraints between actions.
#     def set_list
#       @list = List.find(params[:id])
#     end

#     # Only allow a list of trusted parameters through.
#     def list_params
#       params.require(:list).permit(:title, :overview, :poster_url, :rating)
#     end
# end
