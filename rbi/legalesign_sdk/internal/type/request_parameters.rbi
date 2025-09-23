# typed: strong

module LegalesignSDK
  module Internal
    module Type
      # @api private
      module RequestParameters
        # Options to specify HTTP behaviour for this request.
        sig { returns(LegalesignSDK::RequestOptions) }
        attr_reader :request_options

        sig do
          params(request_options: LegalesignSDK::RequestOptions::OrHash).void
        end
        attr_writer :request_options

        # @api private
        module Converter
          # @api private
          sig do
            params(params: T.anything).returns(
              [T.anything, LegalesignSDK::Internal::AnyHash]
            )
          end
          def dump_request(params)
          end
        end
      end
    end
  end
end
