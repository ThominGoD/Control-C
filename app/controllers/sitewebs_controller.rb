class SitewebsController < ApplicationController
  before_action :set_siteweb, only: %i[ show edit update destroy ]

  # GET /sitewebs or /sitewebs.json
  def index
    @sitewebs = Siteweb.all
  end

  # GET /sitewebs/1 or /sitewebs/1.json
  def show
  end

  # GET /sitewebs/new
  def new
    @siteweb = Siteweb.new
  end

  # GET /sitewebs/1/edit
  def edit
  end

  # POST /sitewebs or /sitewebs.json
  def create
    @siteweb = Siteweb.new(siteweb_params)

    respond_to do |format|
      if @siteweb.save
        format.html { redirect_to siteweb_url(@siteweb), notice: "Siteweb was successfully created." }
        format.json { render :show, status: :created, location: @siteweb }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @siteweb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sitewebs/1 or /sitewebs/1.json
  def update
    respond_to do |format|
      if @siteweb.update(siteweb_params)
        format.html { redirect_to siteweb_url(@siteweb), notice: "Siteweb was successfully updated." }
        format.json { render :show, status: :ok, location: @siteweb }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @siteweb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sitewebs/1 or /sitewebs/1.json
  def destroy
    @siteweb.destroy

    respond_to do |format|
      format.html { redirect_to sitewebs_url, notice: "Siteweb was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_siteweb
      @siteweb = Siteweb.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def siteweb_params
      params.require(:siteweb).permit(:image, :name, :tag, :url, :description)
    end
end
