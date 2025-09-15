# frozen_string_literal: true

module Legalesign
  module Models
    # @see Legalesign::Resources::Document#create
    class DocumentCreateResponse < Legalesign::Internal::Type::BaseModel
      # @!attribute signer_1
      #
      #   @return [String, nil]
      optional :signer_1, String

      # @!method initialize(signer_1: nil)
      #   @param signer_1 [String]
    end
  end
end
