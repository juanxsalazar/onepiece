class CharactersController < ApplicationController
  before_action :set_character, only: [:show, :update, :destroy]

  # GET /characters
  def index
  @societies = Society.find(params[:society_id])

  @characters = @societies.characters

    render json: @characters
  end

  # GET /characters/1
  def show
    render json: @character
  end

  # POST /characters
  def create
    @societies = Society.find(params[:society_id])
    @character = @societies.characters.new(character_params)

    if @character.save
      render json: @character, status: :created, location: [@societies, @character]
    else
      render json: @character.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /characters/1
  def update
    if @character.update(character_params)
      render json: @character
    else
      render json: @character.errors, status: :unprocessable_entity
    end
  end

  # DELETE /characters/1
  def destroy
    @character.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character
      @societies = Society.find(params[:society_id])

      @character = @societies.characters.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def character_params
      params.require(:character).permit(:name, :position, :devilfruit, :haki, :society_id)
    end
end
