require 'spec_helper'

describe SponsorsController do

  def mock_sponsor(stubs={})
    @mock_sponsor ||= mock_model(Sponsor, stubs)
  end

  describe "GET index" do
    it "assigns all sponsors as @sponsors" do
      Sponsor.stub(:find).with(:all).and_return([mock_sponsor])
      get :index
      assigns[:sponsors].should == [mock_sponsor]
    end
  end

  describe "GET show" do
    it "assigns the requested sponsor as @sponsor" do
      Sponsor.stub(:find).with("37").and_return(mock_sponsor)
      get :show, :id => "37"
      assigns[:sponsor].should equal(mock_sponsor)
    end
  end

  describe "GET new" do
    it "assigns a new sponsor as @sponsor" do
      Sponsor.stub(:new).and_return(mock_sponsor)
      get :new
      assigns[:sponsor].should equal(mock_sponsor)
    end
  end

  describe "GET edit" do
    it "assigns the requested sponsor as @sponsor" do
      Sponsor.stub(:find).with("37").and_return(mock_sponsor)
      get :edit, :id => "37"
      assigns[:sponsor].should equal(mock_sponsor)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created sponsor as @sponsor" do
        Sponsor.stub(:new).with({'these' => 'params'}).and_return(mock_sponsor(:save => true))
        post :create, :sponsor => {:these => 'params'}
        assigns[:sponsor].should equal(mock_sponsor)
      end

      it "redirects to the created sponsor" do
        Sponsor.stub(:new).and_return(mock_sponsor(:save => true))
        post :create, :sponsor => {}
        response.should redirect_to(sponsor_url(mock_sponsor))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved sponsor as @sponsor" do
        Sponsor.stub(:new).with({'these' => 'params'}).and_return(mock_sponsor(:save => false))
        post :create, :sponsor => {:these => 'params'}
        assigns[:sponsor].should equal(mock_sponsor)
      end

      it "re-renders the 'new' template" do
        Sponsor.stub(:new).and_return(mock_sponsor(:save => false))
        post :create, :sponsor => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested sponsor" do
        Sponsor.should_receive(:find).with("37").and_return(mock_sponsor)
        mock_sponsor.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :sponsor => {:these => 'params'}
      end

      it "assigns the requested sponsor as @sponsor" do
        Sponsor.stub(:find).and_return(mock_sponsor(:update_attributes => true))
        put :update, :id => "1"
        assigns[:sponsor].should equal(mock_sponsor)
      end

      it "redirects to the sponsor" do
        Sponsor.stub(:find).and_return(mock_sponsor(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(sponsor_url(mock_sponsor))
      end
    end

    describe "with invalid params" do
      it "updates the requested sponsor" do
        Sponsor.should_receive(:find).with("37").and_return(mock_sponsor)
        mock_sponsor.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :sponsor => {:these => 'params'}
      end

      it "assigns the sponsor as @sponsor" do
        Sponsor.stub(:find).and_return(mock_sponsor(:update_attributes => false))
        put :update, :id => "1"
        assigns[:sponsor].should equal(mock_sponsor)
      end

      it "re-renders the 'edit' template" do
        Sponsor.stub(:find).and_return(mock_sponsor(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested sponsor" do
      Sponsor.should_receive(:find).with("37").and_return(mock_sponsor)
      mock_sponsor.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the sponsors list" do
      Sponsor.stub(:find).and_return(mock_sponsor(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(sponsors_url)
    end
  end

end
