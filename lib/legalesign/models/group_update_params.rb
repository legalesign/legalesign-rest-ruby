# frozen_string_literal: true

module Legalesign
  module Models
    # @see Legalesign::Resources::Group#update
    class GroupUpdateParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      # @!attribute public_name
      #
      #   @return [String, nil]
      optional :public_name, String

      # @!method initialize(public_name: nil, request_options: {})
      #   @param public_name [String]
      #   @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
