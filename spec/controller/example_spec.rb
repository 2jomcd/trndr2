require 'rails_helper'

RSpec.describe RecipesController, type: :controller do
  describe '#new' do
    before { get :new }

    it 'returns 200' do
      expect(response).to be_success
    end

    it 'renders recipes/new' do
      expect(response).to render_template 'recipes/new'
    end

    it 'assigns @recipe' do
      # assigns(:recipe) evaluates to @recipe
      expect(assigns(:recipe)).to be_a Recipe
      expect(assigns(:recipe)).not_to be_persisted
    end
  end

  describe '#create' do
    context 'valid params' do
      before do
        # You can pass in params to post
        post :create, recipe: {
          title: 'foo', instructions: 'bar'
        }
      end

      it 'assigns @recipe' do
        expect(assigns(:recipe)).to be_a Recipe
      end

      it 'persists the recipe' do
        expect(assigns(:recipe)).to be_persisted
      end

      it 'redirects to the recipe' do
        expect(response).to redirect_to recipe_path(Recipe.last)
      end
    end

    context 'invalid params' do
      before do
        post :create, recipe: {
          # These params are invalid because they are blank,
          # so the recipe will not be created
          title: '', instructions: ''
        }
      end

      it 'assigns @recipe' do
        expect(assigns(:recipe)).to be_a Recipe
      end

      it 'does not persist the recipe' do
        expect(assigns(:recipe)).not_to be_persisted
      end

      it 'renders recipes/new' do
        expect(response).to render_template 'recipes/new'
      end
    end
  end

  describe '#show' do
    # Make variable called 'recipe'
    let!(:recipe) { FactoryGirl.create(:recipe) }

    before { get :show, id: recipe.id }

    it 'returns 200' do
      expect(response).to be_success
    end

    it 'assigns @recipe' do
      expect(assigns(:recipe)).to eq recipe
      expect(assigns(:recipe)).to be_persisted
    end

    it 'renders recipes/show' do
      expect(response).to render_template 'recipes/show'
    end
  end

  describe '#index' do
    before(:example) do
      get :index
    end

    before(:context) do
      FactoryGirl.create(:recipe)
    end

    it 'returns 200' do
      expect(response).to be_success
    end

    it 'renders recipes/index' do
      expect(response).to render_template 'recipes/index'
    end

    it 'assigns @recipes' do
      expect(assigns(:recipes)).to eq Recipe.all
    end
  end

  describe '#edit' do
    let!(:recipe) { FactoryGirl.create(:recipe) }

    before { get :edit, id: recipe.id }

    it 'returns 200' do
      expect(response).to be_success
    end

    it 'assigns @recipe' do
      expect(assigns(:recipe)).to eq recipe
    end

    it 'renders recipes/edit' do
      expect(response).to render_template 'recipes/edit'
    end
  end

  describe '#update' do
    let!(:recipe) { FactoryGirl.create(:recipe) }

    context 'valid params' do
      before do
        patch :update, id: recipe.id, recipe: {
          title: 'new title', instructions: 'new instructions'
        }
      end

      it 'updates the recipe' do
        recipe = assigns(:recipe).reload
        expect(recipe.title).to eq 'new title'
        expect(recipe.instructions).to eq 'new instructions'
      end

      it 'assigns @recipe' do
        expect(assigns(:recipe)).to eq recipe
      end

      it 'redirects to the recipe' do
        expect(response).to redirect_to recipe_path(recipe)
      end
    end

    context 'invalid params' do
      before do
        patch :update, id: recipe.id, recipe: {
          # These params are invalid because they are blank,
          # so the validations will fail and the recipe will
          # not be updated
          title: '', instructions: ''
        }
      end

      it 'does not update the recipe' do
        recipe = assigns(:recipe).reload
        expect(recipe.title).not_to eq ''
        expect(recipe.instructions).not_to eq ''
      end

      it 'assigns @recipe' do
        expect(assigns(:recipe)).to eq recipe
      end

      it 'renders recipes/edit' do
        expect(response).to render_template 'recipes/edit'
      end
    end
  end

  describe '#destroy' do
    let!(:recipe) { FactoryGirl.create(:recipe) }

    it 'destroys a recipe' do
      expect {
        delete :destroy, id: recipe.id
      }.to change(Recipe, :count).by(-1)
    end

    it 'redirects to #index' do
      delete :destroy, id: recipe.id
      expect(response).to redirect_to recipes_path
    end
  end
end
