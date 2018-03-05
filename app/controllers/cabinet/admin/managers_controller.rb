module Cabinet
  module Admin
    class ManagersController < Admin::BaseController
      expose_decorated :manager
      expose_decorated :managers, -> { fetch_managers }

      def index; end

      def new; end

      private

      def fetch_managers
        managers = Manager.all
      end
    end
  end
end
