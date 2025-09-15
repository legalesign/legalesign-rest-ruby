# typed: strong

module Legalesign
  module Models
    class InvitedListParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Legalesign::InvitedListParams, Legalesign::Internal::AnyHash)
        end

      # filter list by a given group
      sig { returns(T.nilable(String)) }
      attr_reader :group

      sig { params(group: String).void }
      attr_writer :group

      sig do
        params(
          group: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # filter list by a given group
        group: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { group: String, request_options: Legalesign::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
