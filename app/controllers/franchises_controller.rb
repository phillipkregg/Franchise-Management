class FranchisesController < ApplicationController
  # GET /franchises
  # GET /franchises.json
  
  skip_before_filter  :verify_authenticity_token
  
  before_filter :get_franchise_set
  
  respond_to :html, :json
      
  def index    
    @franchises = @franchise_set.franchises.all

    respond_with(@franchise_set, @franchises)
  end

  # GET /franchises/1
  # GET /franchises/1.json
  def show    
    @franchise = @franchise_set.franchises.find(params[:id])

   respond_with(@franchise_set, @franchise)
  end

  # GET /franchises/new
  # GET /franchises/new.json
  def new    
    @franchise_set = @franchise_set.franchises.new
    @franchise = @franchise_set.franchises.build

    respond_with(@franchise_set, @franchise)
  end

  # GET /franchises/1/edit
  def edit    
    @franchise = @franchise_set.franchises.find(params[:id])
  end

  # POST /franchises
  # POST /franchises.json
  def create       
    @franchise = @franchise_set.franchises.new(params[:franchise])

    respond_to do |format|
      if @franchise.save        
        format.html { redirect_to "/franchise_sets/#{@franchise_set.id}/edit", :franchise_set_id => franchise_set.id, notice: 'Franchise was successfully created.' }
        format.json { render json: @franchise}
      else
        format.html { render action: "new" }
        format.json { render json: @franchise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /franchises/1
  # PUT /franchises/1.json
  def update    
    @franchise = @franchise_set.franchises.find(params[:id])

    respond_to do |format|
      franchise_set = FranchiseSet.find(params[:franchise_set_id])
      if @franchise.update_attributes(params[:franchise])
        format.html { redirect_to "/franchise_sets/#{franchise_set.id}/edit" , notice: 'Franchise was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @franchise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /franchises/1
  # DELETE /franchises/1.json
  def destroy    
    @franchise = @franchise_set.franchises.find(params[:id])
    @franchise.destroy

    # respond_to do |format|      
      # format.html { redirect_to "/franchise_sets/#{franchise_set.id}/edit" }
      # format.json { head :ok }
    # end
    
    respond_to do |format|
      format.json {head :ok}
    end
    
  end
  
  
  private
  
  def get_franchise_set
    @franchise_set = FranchiseSet.find(params[:franchise_set_id])    
    
  end
  
  
end
