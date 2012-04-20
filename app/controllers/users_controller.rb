class UsersController < ApplicationController
  # GET /users
  # GET /users.json
  def index
    franchise_set = FranchiseSet.find(params[:franchise_set_id])
    @users = franchise_set.users

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    franchise_set = FranchiseSet.find(params[:franchise_set_id])
    @user = franchise_set.users.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    franchise_set = FranchiseSet.find(params[:franchise_set_id])
    @user = franchise_set.users.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/1/edit
  def edit
    franchise_set = FranchiseSet.find(params[:franchise_set_id])
    @user = franchise_set.users.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    franchise_set = FranchiseSet.find(params[:franchise_set_id])
    @user = franchise_set.users.create(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to "/franchise_sets/#{franchise_set.id}/edit", notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    franchise_set = FranchiseSet.find(params[:franchise_set_id])
    @user = franchise_set.users.find(params[:id])

    respond_to do |format|
      franchise_set = FranchiseSet.find(params[:franchise_set_id])
      if @user.update_attributes(params[:user])
        format.html { redirect_to "/franchise_sets/#{franchise_set.id}/edit", notice: 'User was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    franchise_set = FranchiseSet.find(params[:franchise_set_id])
    @user = franchise_set.users.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to "/franchise_sets/#{franchise_set.id}/edit" }
      format.json { head :ok }
    end
  end
end