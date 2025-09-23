# typed: strong

module LegalesignSDK
  module Resources
    class Template
      # Create a new html/text template. This probably isn't the method you are looking
      # for. You can use the 'text' attribute in /document/ to create and send your HTML
      # as a signing document in one call.
      sig do
        params(
          group: String,
          latest_text: String,
          title: String,
          user: String,
          request_options: LegalesignSDK::RequestOptions::OrHash
        ).void
      end
      def create(
        group:,
        # text/html for template
        latest_text:,
        title:,
        # assign to a user if not api user
        user: nil,
        request_options: {}
      )
      end

      # Get text template
      sig do
        params(
          template_id: String,
          request_options: LegalesignSDK::RequestOptions::OrHash
        ).returns(LegalesignSDK::Models::TemplateRetrieveResponse)
      end
      def retrieve(
        # saved html template id
        template_id,
        request_options: {}
      )
      end

      # Update text template
      sig do
        params(
          template_id: String,
          body: String,
          request_options: LegalesignSDK::RequestOptions::OrHash
        ).void
      end
      def update(
        # saved html template id
        template_id,
        # json with any fields to update
        body:,
        request_options: {}
      )
      end

      # Get text templates
      sig do
        params(
          archive: String,
          group: String,
          limit: Integer,
          offset: Integer,
          request_options: LegalesignSDK::RequestOptions::OrHash
        ).returns(LegalesignSDK::Models::TemplateListResponse)
      end
      def list(
        archive: nil,
        # can be full resource_uri or only id
        group: nil,
        # Length of dataset to return. Use with offset query to iterate through results.
        limit: nil,
        # Offset from start of dataset. Use with the limit query to iterate through
        # dataset.
        offset: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: LegalesignSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
