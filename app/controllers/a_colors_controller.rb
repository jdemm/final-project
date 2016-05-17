class AColorsController < ApplicationController
  before_action :set_a_color, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  # GET /a_colors
  # GET /a_colors.json
  def index
    @a_colors =  AColor.all
  end

  # GET /a_colors/1
  # GET /a_colors/1.json
  def show
  end

  # GET /colors/new
  def new
    @a_color  = AColor.new
  end

  # GET /a_colors/1/edit
  def edit
  end

  # POST /a_colors
  # POST /a_colors.json
  def create
    @a_color = current_user.a_colors.new(a_color_params)

    respond_to do |format|
      if @a_color.save
        format.html { redirect_to @a_color, notice: 'Color was successfully created.' }
        format.json { render :show, status: :created, location: @a_color }
      else
        format.html { render :new }
        format.json { render json: @a_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /colors/1
  # PATCH/PUT /colors/1.json
  def update
    respond_to do |format|
      if @a_color.update(a_color_params)
        format.html { redirect_to @a_color, notice: 'Color was successfully updated.' }
        format.json { render :show, status: :ok, location: @a_color }
      else
        format.html { render :edit }
        format.json { render json: @a_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /colors/1
  # DELETE /colors/1.json
  def destroy
    @a_color.destroy
    respond_to do |format|
      format.html { redirect_to a_colors_url, notice: 'Color was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_a_color
      @a_color = AColor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def a_color_params
      params.require(:a_color).permit(:r, :g, :b)
    end
end
