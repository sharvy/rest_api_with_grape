module Store
  class Data < Grape::API

    resource :store_datum do
      desc 'List all Stores'
      get do
        StoreDatum.all
      end

      desc 'Create a new store'
      params do
        requires :store_datum, type: Hash do
          requires :name, type: String
          requires :description, type: String
          requires :category, type: String
          requires :url, type: String
        end
      end
      post do
        StoreDatum.create!(params[:store_datum])
      end

      desc 'Delete a store'
      params do
        requires :store_datum, type: Hash do
          requires :id, type: String
        end
      end
      delete ':id' do
        StoreDatum.find(params[:store_datum]['id']).destroy!
      end

      desc 'Update a store information'
      params do
        requires :store_datum, type: Hash do
          requires :id, type: String
          optional :name, type: String
          optional :description, type: String
          optional :category, type: String
          optional :url, type: String
        end
      end
      put ':id' do
        StoreDatum.find(params[:store_datum]['id'])
        .update_attributes!(params[:store_datum])
      end
    end
  end
end