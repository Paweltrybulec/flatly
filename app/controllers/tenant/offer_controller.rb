# frozen_string_literal: true

module Tenant
  class OfferController < TenantController
    def new
      @offer = current_tenant.offers.build
    end

    def create; end

    private

    def offer_params
      params.require(:offer).permit(
        :name,
        :status,
        :expire_at,
        flat_attributes: [
          :square_footage,
          :description,
          { address_attributes: %i[
            street
            building_number
            flat_number
            post_code
            city
            country
            lat
            lng
            description
            floor
          ] }
        ],
        price_attributes: %i[
          lent_price
          rent_price
          media_price
        ]
      )
    end
  end
end
