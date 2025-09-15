# frozen_string_literal: true

module Legalesign
  module Models
    # @see Legalesign::Resources::Status#retrieve_all
    class StatusRetrieveAllResponse < Legalesign::Internal::Type::BaseModel
      # @!attribute meta
      #
      #   @return [Legalesign::Models::ListMeta, nil]
      optional :meta, -> { Legalesign::ListMeta }

      # @!attribute objects
      #
      #   @return [Array<Legalesign::Models::StatusResponse>, nil]
      optional :objects, -> { Legalesign::Internal::Type::ArrayOf[Legalesign::StatusResponse] }

      # @!method initialize(meta: nil, objects: nil)
      #   @param meta [Legalesign::Models::ListMeta]
      #   @param objects [Array<Legalesign::Models::StatusResponse>]
    end
  end
end
