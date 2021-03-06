require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe SquadsController do

  # This should return the minimal set of attributes required to create a valid
  # Squad. As you add validations to Squad, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SquadsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all squads as @squads" do
      squad = Squad.create! valid_attributes
      get :index, {}, valid_session
      assigns(:squads).should eq([squad])
    end
  end

  describe "GET show" do
    it "assigns the requested squad as @squad" do
      squad = Squad.create! valid_attributes
      get :show, {:id => squad.to_param}, valid_session
      assigns(:squad).should eq(squad)
    end
  end

  describe "GET new" do
    it "assigns a new squad as @squad" do
      get :new, {}, valid_session
      assigns(:squad).should be_a_new(Squad)
    end
  end

  describe "GET edit" do
    it "assigns the requested squad as @squad" do
      squad = Squad.create! valid_attributes
      get :edit, {:id => squad.to_param}, valid_session
      assigns(:squad).should eq(squad)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Squad" do
        expect {
          post :create, {:squad => valid_attributes}, valid_session
        }.to change(Squad, :count).by(1)
      end

      it "assigns a newly created squad as @squad" do
        post :create, {:squad => valid_attributes}, valid_session
        assigns(:squad).should be_a(Squad)
        assigns(:squad).should be_persisted
      end

      it "redirects to the created squad" do
        post :create, {:squad => valid_attributes}, valid_session
        response.should redirect_to(Squad.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved squad as @squad" do
        # Trigger the behavior that occurs when invalid params are submitted
        Squad.any_instance.stub(:save).and_return(false)
        post :create, {:squad => {}}, valid_session
        assigns(:squad).should be_a_new(Squad)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Squad.any_instance.stub(:save).and_return(false)
        post :create, {:squad => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested squad" do
        squad = Squad.create! valid_attributes
        # Assuming there are no other squads in the database, this
        # specifies that the Squad created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Squad.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => squad.to_param, :squad => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested squad as @squad" do
        squad = Squad.create! valid_attributes
        put :update, {:id => squad.to_param, :squad => valid_attributes}, valid_session
        assigns(:squad).should eq(squad)
      end

      it "redirects to the squad" do
        squad = Squad.create! valid_attributes
        put :update, {:id => squad.to_param, :squad => valid_attributes}, valid_session
        response.should redirect_to(squad)
      end
    end

    describe "with invalid params" do
      it "assigns the squad as @squad" do
        squad = Squad.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Squad.any_instance.stub(:save).and_return(false)
        put :update, {:id => squad.to_param, :squad => {}}, valid_session
        assigns(:squad).should eq(squad)
      end

      it "re-renders the 'edit' template" do
        squad = Squad.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Squad.any_instance.stub(:save).and_return(false)
        put :update, {:id => squad.to_param, :squad => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested squad" do
      squad = Squad.create! valid_attributes
      expect {
        delete :destroy, {:id => squad.to_param}, valid_session
      }.to change(Squad, :count).by(-1)
    end

    it "redirects to the squads list" do
      squad = Squad.create! valid_attributes
      delete :destroy, {:id => squad.to_param}, valid_session
      response.should redirect_to(squads_url)
    end
  end

end
