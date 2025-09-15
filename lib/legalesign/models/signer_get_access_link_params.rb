# frozen_string_literal: true

module Legalesign
  module Models
    # @see Legalesign::Resources::Signer#get_access_link
    class SignerGetAccessLinkParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
