module API
  module V1
    class Audits < Grape::API
      include API::VI::Defaults

      resource :audits do
        desc "Return all Audits"
        get " ", root: :audits do
          Audit.all
        end

        desc "Return an Audit"
        params do
          requires :id, type: String, desc: "Audit ID"
        end
        get ":id", root: "audit" do
          Audit.where(id: permitted_params[:id]).first!
        end
      end
    end
  end
end
