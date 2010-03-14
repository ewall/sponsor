require 'spec_helper'

describe FamiliesController do

  def mock_family(stubs={})
    @mock_family ||= mock_model(Family, stubs)
  end

  describe "GET index" do
    it "assigns all families as @families" do
      Family.stub(:find).with(:all).and_return([mock_family])
      get :index
      assigns[:families].should == [mock_family]
    end
  end

  describe "GET show" do
    it "assigns the requested family as @family" do
      Family.stub(:find).with("37").and_return(mock_family)
      get :show, :id => "37"
      assigns[:family].should equal(mock_family)
    end
  end

  describe "GET new" do
    it "assigns a new family as @family" do
      Family.stub(:new).and_return(mock_family)
      get :new
      assigns[:family].should equal(mock_family)
    end
  end

  describe "GET edit" do
    it "assigns the requested family as @family" do
      Family.stub(:find).with("37").and_return(mock_family)
      get :edit, :id => "37"
      assigns[:family].should equal(mock_family)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created family as @family" do
        Family.stub(:new).with({'these' => 'params'}).and_return(mock_family(:save => true))
        post :create, :family => {:these => 'params'}
        assigns[:family].should equal(mock_family)
      end

      it "redirects to the created family" do
        Family.stub(:new).and_return(mock_family(:save => true))
        post :create, :family => {}
        response.should redirect_to(family_url(mock_family))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved family as @family" do
        Family.stub(:new).with({'these' => 'params'}).and_return(mock_family(:save => false))
        post :create, :family => {:these => 'params'}
        assigns[:family].should equal(mock_family)
      end

      it "re-renders the 'new' template" do
        Family.stub(:new).and_return(mock_family(:save => false))
        post :create, :family => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested family" do
        Family.should_receive(:find).with("37").and_return(mock_family)
        mock_family.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :family => {:these => 'params'}
      end

      it "assigns the requested family as @family" do
        Family.stub(:find).and_return(mock_family(:update_attributes => true))
        put :update, :id => "1"
        assigns[:family].should equal(mock_family)
      end

      it "redirects to the family" do
        Family.stub(:find).and_return(mock_family(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(family_url(mock_family))
      end
    end

    describe "with invalid params" do
      it "updates the requested family" do
        Family.should_receive(:find).with("37").and_return(mock_family)
        mock_family.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :family => {:these => 'params'}
      end

      it "assigns the family as @family" do
        Family.stub(:find).and_return(mock_family(:update_attributes => false))
        put :update, :id => "1"
        assigns[:family].should equal(mock_family)
      end

      it "re-renders the 'edit' template" do
        Family.stub(:find).and_return(mock_family(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested family" do
      Family.should_receive(:find).with("37").and_return(mock_family)
      mock_family.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the families list" do
      Family.stub(:find).and_return(mock_family(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(families_url)
    end
  end

end
