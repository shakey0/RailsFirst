class TestThingsController < ApplicationController
  before_action :set_test_thing, only: %i[ show edit update destroy ]

  # GET /test_things or /test_things.json
  def index
    @test_things = TestThing.all
  end

  # GET /test_things/1 or /test_things/1.json
  def show
  end

  # GET /test_things/new
  def new
    @test_thing = TestThing.new
  end

  # GET /test_things/1/edit
  def edit
  end

  # POST /test_things or /test_things.json
  def create
    @test_thing = TestThing.new(test_thing_params)

    respond_to do |format|
      if @test_thing.save
        format.html { redirect_to test_thing_url(@test_thing), notice: "Test thing was successfully created." }
        format.json { render :show, status: :created, location: @test_thing }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @test_thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_things/1 or /test_things/1.json
  def update
    respond_to do |format|
      if @test_thing.update(test_thing_params)
        format.html { redirect_to test_thing_url(@test_thing), notice: "Test thing was successfully updated." }
        format.json { render :show, status: :ok, location: @test_thing }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @test_thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_things/1 or /test_things/1.json
  def destroy
    @test_thing.destroy!

    respond_to do |format|
      format.html { redirect_to test_things_url, notice: "Test thing was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_thing
      @test_thing = TestThing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def test_thing_params
      params.require(:test_thing).permit(:item_1, :item_2)
    end
end
