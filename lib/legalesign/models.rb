# frozen_string_literal: true

module Legalesign
  [Legalesign::Internal::Type::BaseModel, *Legalesign::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, Legalesign::Internal::AnyHash) } }
  end

  Legalesign::Internal::Util.walk_namespaces(Legalesign::Models).each do |mod|
    case mod
    in Legalesign::Internal::Type::Enum | Legalesign::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  Legalesign::Internal::Util.walk_namespaces(Legalesign::Models)
                            .lazy
                            .grep(Legalesign::Internal::Type::Union)
                            .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  AttachmentDeleteParams = Legalesign::Models::AttachmentDeleteParams

  AttachmentListParams = Legalesign::Models::AttachmentListParams

  AttachmentResponse = Legalesign::Models::AttachmentResponse

  AttachmentRetrieveParams = Legalesign::Models::AttachmentRetrieveParams

  AttachmentUploadParams = Legalesign::Models::AttachmentUploadParams

  DocumentArchiveParams = Legalesign::Models::DocumentArchiveParams

  DocumentCreateParams = Legalesign::Models::DocumentCreateParams

  DocumentDeletePermanentlyParams = Legalesign::Models::DocumentDeletePermanentlyParams

  DocumentDownloadAuditLogParams = Legalesign::Models::DocumentDownloadAuditLogParams

  DocumentGetFieldsParams = Legalesign::Models::DocumentGetFieldsParams

  DocumentListParams = Legalesign::Models::DocumentListParams

  DocumentPreviewParams = Legalesign::Models::DocumentPreviewParams

  DocumentRetrieveParams = Legalesign::Models::DocumentRetrieveParams

  DocumentStatusEnum = Legalesign::Models::DocumentStatusEnum

  GroupCreateParams = Legalesign::Models::GroupCreateParams

  GroupListParams = Legalesign::Models::GroupListParams

  GroupRetrieveParams = Legalesign::Models::GroupRetrieveParams

  GroupUpdateParams = Legalesign::Models::GroupUpdateParams

  InvitedDeleteParams = Legalesign::Models::InvitedDeleteParams

  InvitedListParams = Legalesign::Models::InvitedListParams

  ListMeta = Legalesign::Models::ListMeta

  MemberCreateParams = Legalesign::Models::MemberCreateParams

  MemberDeleteParams = Legalesign::Models::MemberDeleteParams

  MemberListParams = Legalesign::Models::MemberListParams

  MemberResponse = Legalesign::Models::MemberResponse

  MemberRetrieveParams = Legalesign::Models::MemberRetrieveParams

  NotificationListParams = Legalesign::Models::NotificationListParams

  PdfCreatePreviewParams = Legalesign::Models::PdfCreatePreviewParams

  PdfFieldValidationEnum = Legalesign::Models::PdfFieldValidationEnum

  PdfRetrieveParams = Legalesign::Models::PdfRetrieveParams

  PermissionsEnum = Legalesign::Models::PermissionsEnum

  SignerGetAccessLinkParams = Legalesign::Models::SignerGetAccessLinkParams

  SignerGetRejectionReasonParams = Legalesign::Models::SignerGetRejectionReasonParams

  SignerResetParams = Legalesign::Models::SignerResetParams

  SignerRetrieveFieldsParams = Legalesign::Models::SignerRetrieveFieldsParams

  SignerRetrieveParams = Legalesign::Models::SignerRetrieveParams

  SignerSendReminderParams = Legalesign::Models::SignerSendReminderParams

  SignerStatusEnum = Legalesign::Models::SignerStatusEnum

  StatusResponse = Legalesign::Models::StatusResponse

  StatusRetrieveAllParams = Legalesign::Models::StatusRetrieveAllParams

  StatusRetrieveParams = Legalesign::Models::StatusRetrieveParams

  SubscribeCreateWebhookParams = Legalesign::Models::SubscribeCreateWebhookParams

  TemplateArchiveParams = Legalesign::Models::TemplateArchiveParams

  TemplateCreateParams = Legalesign::Models::TemplateCreateParams

  TemplateListParams = Legalesign::Models::TemplateListParams

  Templatepdf = Legalesign::Models::Templatepdf

  TemplatePdf = Legalesign::Models::TemplatePdf

  TemplatepdfArchiveParams = Legalesign::Models::TemplatepdfArchiveParams

  TemplatepdfConvertTagsParams = Legalesign::Models::TemplatepdfConvertTagsParams

  TemplatepdfCreateParams = Legalesign::Models::TemplatepdfCreateParams

  TemplatepdfGetEditLinkParams = Legalesign::Models::TemplatepdfGetEditLinkParams

  TemplatepdfListParams = Legalesign::Models::TemplatepdfListParams

  TemplatepdfRetrieveParams = Legalesign::Models::TemplatepdfRetrieveParams

  TemplateRetrieveParams = Legalesign::Models::TemplateRetrieveParams

  TemplateUpdateParams = Legalesign::Models::TemplateUpdateParams

  TimezoneEnum = Legalesign::Models::TimezoneEnum

  UnsubscribeDeleteWebhookParams = Legalesign::Models::UnsubscribeDeleteWebhookParams

  UserCreateParams = Legalesign::Models::UserCreateParams

  UserRetrieveParams = Legalesign::Models::UserRetrieveParams

  UserUpdateParams = Legalesign::Models::UserUpdateParams

  WebhookEventFilterEnum = Legalesign::Models::WebhookEventFilterEnum
end
