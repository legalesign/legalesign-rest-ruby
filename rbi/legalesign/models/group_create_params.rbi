# typed: strong

module Legalesign
  module Models
    class GroupCreateParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Legalesign::GroupCreateParams, Legalesign::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :name

      # Set to true if you want to embed your signing page.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :xframe_allow

      sig { params(xframe_allow: T::Boolean).void }
      attr_writer :xframe_allow

      sig do
        params(
          name: String,
          xframe_allow: T::Boolean,
          request_options: Legalesign::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        name:,
        # Set to true if you want to embed your signing page.
        xframe_allow: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            name: String,
            xframe_allow: T::Boolean,
            request_options: Legalesign::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
