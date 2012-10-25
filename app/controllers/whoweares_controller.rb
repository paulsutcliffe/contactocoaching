class WhowearesController < InheritedResources::Base
  
  
  def create
    @whoweares = Whoweare.new(params[:category])

    respond_to do |format|
      if @whoweares.save
        format.html { redirect_to(:action => 'index', :notice => 'Category was successfully created.') }
        format.xml  { render :xml => @whoweares, :status => :created, :location => @category }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @whoweares.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /categories/1
  # PUT /categories/1.xml
  def update
    @whoweares = Whoweare.find(params[:id])

    respond_to do |format|
      if @whoweares.update_attributes(params[:category])
        format.html { redirect_to(:action => 'index', :notice => 'Category was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @whoweares.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  
  
end
