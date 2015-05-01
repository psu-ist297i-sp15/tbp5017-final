class ActinfosController < ApplicationController
  before_action :set_actinfo, only: [:show, :edit, :update, :destroy]

  # GET /actinfos
  # GET /actinfos.json
  def index
    @actinfos = Actinfo.all
  end

  # GET /actinfos/1
  # GET /actinfos/1.json
  def show
  end

  # GET /actinfos/new
  def new
    @actinfo = Actinfo.new
  end

  # GET /actinfos/1/edit
  def edit
  end

  # POST /actinfos
  # POST /actinfos.json
  def create
    @actinfo = Actinfo.new(actinfo_params)

    respond_to do |format|
      if @actinfo.save
        format.html { redirect_to @actinfo, notice: 'Actinfo was successfully created.' }
        format.json { render :show, status: :created, location: @actinfo }
      else
        format.html { render :new }
        format.json { render json: @actinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actinfos/1
  # PATCH/PUT /actinfos/1.json
  def update
    respond_to do |format|
      if @actinfo.update(actinfo_params)
        format.html { redirect_to @actinfo, notice: 'Actinfo was successfully updated.' }
        format.json { render :show, status: :ok, location: @actinfo }
      else
        format.html { render :edit }
        format.json { render json: @actinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actinfos/1
  # DELETE /actinfos/1.json
  def destroy
    @actinfo.destroy
    respond_to do |format|
      format.html { redirect_to actinfos_url, notice: 'Actinfo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actinfo
      @actinfo = Actinfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actinfo_params
      params.require(:actinfo).permit(:time, :money, :info)
    end
end
