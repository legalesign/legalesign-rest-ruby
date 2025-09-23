# frozen_string_literal: true

module LegalesignSDK
  module Models
    # @see LegalesignSDK::Resources::Document#create
    class DocumentCreateResponse < LegalesignSDK::Internal::Type::BaseModel
      # @!attribute signer_1
      #
      #   @return [String, nil]
      optional :signer_1, String

      # @!method initialize(signer_1: nil)
      #   @param signer_1 [String]
    end
  end
end
