class FeedsController < ApplicationController
  before_action :set_feed, only: %i[ show edit update destroy ]

  # GET /feeds or /feeds.json
  def index
    @feeds = Feed.all
  end

  # GET /feeds/1 or /feeds/1.json
  def show
  end

  # GET /feeds/new
  def new
    byebug
    @feed = Feed.new
    # @feed = Feed.new(feed_params)
  end
  
  # GET /feeds/1/edit
  def edit

  end
  
  # POST /feeds or /feeds.json
  def create
    @feed = Feed.new(feed_params)
    @feed.save
    redirect_to images_path
    
    
    # respond_to do |format|
      # if @feed.save
        # render confirm_feeds_path
        # format.html { redirect_to feed_url(@feed), notice: "Feed was successfully created." }
        # format.json { render :show, status: :created, location: @feed }
      # else
        # format.html { render :new, status: :unprocessable_entity }
        # format.json { render json: @feed.errors, status: :unprocessable_entity }
      # end
    # end
  end

  def confirm
    byebug
    @feed = Feed.new(feed_params)
    byebug
  end

  # PATCH/PUT /feeds/1 or /feeds/1.json
  def update
    byebug
    respond_to do |format|
      if @feed.update(feed_params)
        format.html { redirect_to feed_url(@feed), notice: "Feed was successfully updated." }
        format.json { render :show, status: :ok, location: @feed }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @feed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feeds/1 or /feeds/1.json
  def destroy
    @feed.destroy

    respond_to do |format|
      format.html { redirect_to images_path, notice: "Feed was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feed
      @feed = Feed.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def feed_params
      byebug
      params.require(:feed).permit(:image, :image_cache, :coment)
    end
end
