class FranchisesController < ApplicationController
  # GET /franchises
  # GET /franchises.json
      
  def index
    franchise_set = FranchiseSet.find(params[:franchise_set_id])
    @franchises = franchise_set.franchises

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @franchises }
    end
  end

  # GET /franchises/1
  # GET /franchises/1.json
  def show
    franchise_set = FranchiseSet.find(params[:franchise_set_id])
    @franchise = franchise_set.franchises.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @franchise }
    end
  end

  # GET /franchises/new
  # GET /franchises/new.json
  def new
    franchise_set = FranchiseSet.find(params[:franchise_set_id])
    @franchise = franchise_set.franchises.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @franchise }
    end
  end

  # GET /franchises/1/edit
  def edit
    franchise_set = FranchiseSet.find(params[:franchise_set_id])
    @franchise = franchise_set.franchises.find(params[:id])
  end

  # POST /franchises
  # POST /franchises.json
  def create
    franchise_set = FranchiseSet.find(params[:franchise_set_id])
    @franchise = franchise_set.franchises.create(params[:franchise])

    respond_to do |format|
      if @franchise.save
        format.html { redirect_to "/franchise_sets/#{franchise_set.id}/edit", notice: 'Franchise was successfully created.' }
        format.json { render json: @franchise, status: :created, location: @franchise }
      else
        format.html { render action: "new" }
        format.json { render json: @franchise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /franchises/1
  # PUT /franchises/1.json
  def update
    franchise_set = FranchiseSet.find(params[:franchise_set_id])
    @franchise = franchise_set.franchises.find(params[:id])

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
    franchise_set = FranchiseSet.find(params[:franchise_set_id])
    @franchise = franchise_set.franchises.find(params[:id])
    @franchise.destroy

    respond_to do |format|
      format.html { redirect_to "/franchise_sets/#{franchise_set.id}/edit" }
      format.json { head :ok }
    end
  end
end
