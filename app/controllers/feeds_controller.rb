class FeedsController < ApplicationController
  before_action :set_picture, only: %i[ show edit update destroy ]

  # GET /pictures or /pictures.json
  def index
    @pictures = Feed.all
  end

  # GET /pictures/1 or /pictures/1.json
  def show
  end

  # GET /pictures/new
  def new
    
    @picture = Feed.new
    # @picture = Feed.new(picture_params)
  end
  
  # GET /pictures/1/edit
  def edit
  end
  
  # POST /pictures or /pictures.json
  def create
    # @picture = Feed.new(picture_params)
    # @picture.user_id = @current_user.id
    
    @picture = current_user.pictures.build(picture_params)
    @picture.save
    redirect_to images_path
    
    
    # respond_to do |format|
      # if @picture.save
        # render confirm_pictures_path
        # format.html { redirect_to picture_url(@picture), notice: "Feed was successfully created." }
        # format.json { render :show, status: :created, location: @picture }
      # else
        # format.html { render :new, status: :unprocessable_entity }
        # format.json { render json: @picture.errors, status: :unprocessable_entity }
      # end
    # end
  end

  def confirm
    @picture = Feed.new(picture_params)
  end

  # PATCH/PUT /pictures/1 or /pictures/1.json
  def update
    respond_to do |format|
      if @picture.update(picture_params)
        format.html { redirect_to picture_url(@picture), notice: "Feed was successfully updated." }
        format.json { render :show, status: :ok, location: @picture }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pictures/1 or /pictures/1.json
  def destroy
    @picture.destroy

    respond_to do |format|
      format.html { redirect_to images_path, notice: "Feed was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  def set_picture
    @picture = Feed.find(params[:id])
  end

  def picture_params
    params.require(:picture).permit(:image, :image_cache, :coment)
  end
end
