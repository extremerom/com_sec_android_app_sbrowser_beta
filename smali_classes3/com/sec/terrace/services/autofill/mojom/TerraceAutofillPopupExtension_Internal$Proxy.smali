.class final Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    return-void
.end method


# virtual methods
.method public onAcceptSuggestion(Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;)V
    .locals 5

    new-instance v0, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension_Internal$TerraceAutofillPopupExtensionOnAcceptSuggestionParams;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension_Internal$TerraceAutofillPopupExtensionOnAcceptSuggestionParams;-><init>()V

    iput-object p1, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension_Internal$TerraceAutofillPopupExtensionOnAcceptSuggestionParams;->suggestion:Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    invoke-direct {v1, v2, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension_Internal$TerraceAutofillPopupExtensionOnAcceptSuggestionResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension_Internal$TerraceAutofillPopupExtensionOnAcceptSuggestionResponseParamsForwardToCallback;-><init>(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public onShow(I[Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;ZLjava/lang/String;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnShow_Response;)V
    .locals 3

    new-instance v0, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension_Internal$TerraceAutofillPopupExtensionOnShowParams;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension_Internal$TerraceAutofillPopupExtensionOnShowParams;-><init>()V

    iput p1, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension_Internal$TerraceAutofillPopupExtensionOnShowParams;->type:I

    iput-object p2, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension_Internal$TerraceAutofillPopupExtensionOnShowParams;->suggestions:[Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;

    iput-boolean p3, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension_Internal$TerraceAutofillPopupExtensionOnShowParams;->shouldSuggestToActivatePasswordStore:Z

    iput-object p4, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension_Internal$TerraceAutofillPopupExtensionOnShowParams;->urlHost:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x1

    const-wide/16 v1, 0x0

    const/4 p4, 0x0

    invoke-direct {p2, p4, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension_Internal$TerraceAutofillPopupExtensionOnShowResponseParamsForwardToCallback;

    invoke-direct {p2, p5}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension_Internal$TerraceAutofillPopupExtensionOnShowResponseParamsForwardToCallback;-><init>(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnShow_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
