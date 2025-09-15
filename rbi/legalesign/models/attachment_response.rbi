# typed: strong

module Legalesign
  module Models
    class AttachmentResponse < Legalesign::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Legalesign::AttachmentResponse, Legalesign::Internal::AnyHash)
        end

      sig { returns(T.nilable(Time)) }
      attr_reader :created

      sig { params(created: Time).void }
      attr_writer :created

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      sig { returns(T.nilable(String)) }
      attr_reader :filename

      sig { params(filename: String).void }
      attr_writer :filename

      sig { returns(T.nilable(String)) }
      attr_reader :group

      sig { params(group: String).void }
      attr_writer :group

      sig { returns(T.nilable(String)) }
      attr_reader :resource_uri

      sig { params(resource_uri: String).void }
      attr_writer :resource_uri

      # resource_uri for user
      sig { returns(T.nilable(String)) }
      attr_reader :user

      sig { params(user: String).void }
      attr_writer :user

      # id for attachment object
      sig { returns(T.nilable(String)) }
      attr_reader :uuid

      sig { params(uuid: String).void }
      attr_writer :uuid

      sig do
        params(
          created: Time,
          description: String,
          filename: String,
          group: String,
          resource_uri: String,
          user: String,
          uuid: String
        ).returns(T.attached_class)
      end
      def self.new(
        created: nil,
        description: nil,
        filename: nil,
        group: nil,
        resource_uri: nil,
        # resource_uri for user
        user: nil,
        # id for attachment object
        uuid: nil
      )
      end

      sig do
        override.returns(
          {
            created: Time,
            description: String,
            filename: String,
            group: String,
            resource_uri: String,
            user: String,
            uuid: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
