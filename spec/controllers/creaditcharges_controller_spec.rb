require 'rails_helper'

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

RSpec.describe CreaditchargesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Creaditcharge. As you add validations to Creaditcharge, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CreaditchargesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all creaditcharges as @creaditcharges" do
      creaditcharge = Creaditcharge.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:creaditcharges)).to eq([creaditcharge])
    end
  end

  describe "GET #show" do
    it "assigns the requested creaditcharge as @creaditcharge" do
      creaditcharge = Creaditcharge.create! valid_attributes
      get :show, {:id => creaditcharge.to_param}, valid_session
      expect(assigns(:creaditcharge)).to eq(creaditcharge)
    end
  end

  describe "GET #new" do
    it "assigns a new creaditcharge as @creaditcharge" do
      get :new, {}, valid_session
      expect(assigns(:creaditcharge)).to be_a_new(Creaditcharge)
    end
  end

  describe "GET #edit" do
    it "assigns the requested creaditcharge as @creaditcharge" do
      creaditcharge = Creaditcharge.create! valid_attributes
      get :edit, {:id => creaditcharge.to_param}, valid_session
      expect(assigns(:creaditcharge)).to eq(creaditcharge)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Creaditcharge" do
        expect {
          post :create, {:creaditcharge => valid_attributes}, valid_session
        }.to change(Creaditcharge, :count).by(1)
      end

      it "assigns a newly created creaditcharge as @creaditcharge" do
        post :create, {:creaditcharge => valid_attributes}, valid_session
        expect(assigns(:creaditcharge)).to be_a(Creaditcharge)
        expect(assigns(:creaditcharge)).to be_persisted
      end

      it "redirects to the created creaditcharge" do
        post :create, {:creaditcharge => valid_attributes}, valid_session
        expect(response).to redirect_to(Creaditcharge.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved creaditcharge as @creaditcharge" do
        post :create, {:creaditcharge => invalid_attributes}, valid_session
        expect(assigns(:creaditcharge)).to be_a_new(Creaditcharge)
      end

      it "re-renders the 'new' template" do
        post :create, {:creaditcharge => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested creaditcharge" do
        creaditcharge = Creaditcharge.create! valid_attributes
        put :update, {:id => creaditcharge.to_param, :creaditcharge => new_attributes}, valid_session
        creaditcharge.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested creaditcharge as @creaditcharge" do
        creaditcharge = Creaditcharge.create! valid_attributes
        put :update, {:id => creaditcharge.to_param, :creaditcharge => valid_attributes}, valid_session
        expect(assigns(:creaditcharge)).to eq(creaditcharge)
      end

      it "redirects to the creaditcharge" do
        creaditcharge = Creaditcharge.create! valid_attributes
        put :update, {:id => creaditcharge.to_param, :creaditcharge => valid_attributes}, valid_session
        expect(response).to redirect_to(creaditcharge)
      end
    end

    context "with invalid params" do
      it "assigns the creaditcharge as @creaditcharge" do
        creaditcharge = Creaditcharge.create! valid_attributes
        put :update, {:id => creaditcharge.to_param, :creaditcharge => invalid_attributes}, valid_session
        expect(assigns(:creaditcharge)).to eq(creaditcharge)
      end

      it "re-renders the 'edit' template" do
        creaditcharge = Creaditcharge.create! valid_attributes
        put :update, {:id => creaditcharge.to_param, :creaditcharge => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested creaditcharge" do
      creaditcharge = Creaditcharge.create! valid_attributes
      expect {
        delete :destroy, {:id => creaditcharge.to_param}, valid_session
      }.to change(Creaditcharge, :count).by(-1)
    end

    it "redirects to the creaditcharges list" do
      creaditcharge = Creaditcharge.create! valid_attributes
      delete :destroy, {:id => creaditcharge.to_param}, valid_session
      expect(response).to redirect_to(creaditcharges_url)
    end
  end

end
