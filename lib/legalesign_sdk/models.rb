# frozen_string_literal: true

module LegalesignSDK
  [
    LegalesignSDK::Internal::Type::BaseModel,
    *LegalesignSDK::Internal::Type::BaseModel.subclasses
  ].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, LegalesignSDK::Internal::AnyHash) } }
  end

  LegalesignSDK::Internal::Util.walk_namespaces(LegalesignSDK::Models).each do |mod|
    case mod
    in LegalesignSDK::Internal::Type::Enum | LegalesignSDK::Internal::Type::Union
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

  LegalesignSDK::Internal::Util.walk_namespaces(LegalesignSDK::Models)
                               .lazy
                               .grep(LegalesignSDK::Internal::Type::Union)
                               .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  DocumentArchiveParams = LegalesignSDK::Models::DocumentArchiveParams

  DocumentCreateParams = LegalesignSDK::Models::DocumentCreateParams

  DocumentGetFieldsParams = LegalesignSDK::Models::DocumentGetFieldsParams

  DocumentListParams = LegalesignSDK::Models::DocumentListParams

  DocumentPermanentlyDeleteParams = LegalesignSDK::Models::DocumentPermanentlyDeleteParams

  DocumentRetrieveParams = LegalesignSDK::Models::DocumentRetrieveParams

  DocumentStatusEnum = LegalesignSDK::Models::DocumentStatusEnum

  GroupCreateParams = LegalesignSDK::Models::GroupCreateParams

  GroupListParams = LegalesignSDK::Models::GroupListParams

  GroupRetrieveParams = LegalesignSDK::Models::GroupRetrieveParams

  ListMeta = LegalesignSDK::Models::ListMeta

  PdfFieldValidationEnum = LegalesignSDK::Models::PdfFieldValidationEnum

  PdfRetrieveParams = LegalesignSDK::Models::PdfRetrieveParams

  SignerGetAccessLinkParams = LegalesignSDK::Models::SignerGetAccessLinkParams

  SignerRetrieveFieldsParams = LegalesignSDK::Models::SignerRetrieveFieldsParams

  SignerRetrieveParams = LegalesignSDK::Models::SignerRetrieveParams

  SignerSendReminderParams = LegalesignSDK::Models::SignerSendReminderParams

  SignerStatusEnum = LegalesignSDK::Models::SignerStatusEnum

  StatusRetrieveParams = LegalesignSDK::Models::StatusRetrieveParams

  TemplateCreateParams = LegalesignSDK::Models::TemplateCreateParams

  TemplateListParams = LegalesignSDK::Models::TemplateListParams

  Templatepdf = LegalesignSDK::Models::Templatepdf

  TemplatePdf = LegalesignSDK::Models::TemplatePdf

  TemplatepdfCreateParams = LegalesignSDK::Models::TemplatepdfCreateParams

  TemplatepdfGetEditLinkParams = LegalesignSDK::Models::TemplatepdfGetEditLinkParams

  TemplatepdfListParams = LegalesignSDK::Models::TemplatepdfListParams

  TemplatepdfRetrieveParams = LegalesignSDK::Models::TemplatepdfRetrieveParams

  TemplateRetrieveParams = LegalesignSDK::Models::TemplateRetrieveParams

  TemplateUpdateParams = LegalesignSDK::Models::TemplateUpdateParams
end
