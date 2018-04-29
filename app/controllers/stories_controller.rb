class StoriesController < ApplicationController
  def index
    @stories = Story.all
  end
  def new
   @story = Story.new
  end
  def create
    @story = Story.new(story_params)

    respond_to do |format|
      if @story.save
        format.html { redirect_to @story, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @story }
      else
        format.html { render :new }
        format.json { render json: @story.errors, status: :unprocessable_entity }
      end
    end
  end
  def show
      @story = Story.find(params[:id])
  end
def update

end
def update

end

def destroy

end

private
def set_story
  @story = Story.find(params[:id])
end

# Never trust parameters from the scary internet, only allow the white list through.
def story_params
  params.require(:story).permit(:title, :url  )
end
end
