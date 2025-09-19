# typed: strong

module Legalesign
  module Resources
    class Groups
      # Create group
      sig do
        params(
          name: String,
          xframe_allow: T::Boolean,
          request_options: Legalesign::RequestOptions::OrHash
        ).void
      end
      def create(
        name:,
        # Set to true if you want to embed your signing page.
        xframe_allow: nil,
        request_options: {}
      )
      end

      # Get group
      sig do
        params(
          group_id: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).returns(Legalesign::Models::GroupRetrieveResponse)
      end
      def retrieve(group_id, request_options: {})
      end

      # Update group
      sig do
        params(
          group_id: String,
          public_name: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).void
      end
      def update(
        # group id
        group_id,
        public_name: nil,
        request_options: {}
      )
      end

      # List groups the api user belongs to
      sig do
        params(
          limit: Integer,
          offset: Integer,
          request_options: Legalesign::RequestOptions::OrHash
        ).returns(Legalesign::Models::GroupListResponse)
      end
      def list(
        # Length of dataset to return. Use with offset query to iterate through results.
        limit: nil,
        # Offset from start of dataset. Use with the limit query to iterate through
        # dataset.
        offset: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Legalesign::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
