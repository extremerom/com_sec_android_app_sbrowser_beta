.class final Lorg/chromium/blink/mojom/TranslationManager_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/TranslationManager$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/TranslationManager_Internal;
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
.method public canCreateTranslator(Lorg/chromium/blink/mojom/TranslatorLanguageCode;Lorg/chromium/blink/mojom/TranslatorLanguageCode;Lorg/chromium/blink/mojom/TranslationManager$CanCreateTranslator_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/TranslationManager_Internal$TranslationManagerCanCreateTranslatorParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/TranslationManager_Internal$TranslationManagerCanCreateTranslatorParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/TranslationManager_Internal$TranslationManagerCanCreateTranslatorParams;->sourceLang:Lorg/chromium/blink/mojom/TranslatorLanguageCode;

    iput-object p2, v0, Lorg/chromium/blink/mojom/TranslationManager_Internal$TranslationManagerCanCreateTranslatorParams;->targetLang:Lorg/chromium/blink/mojom/TranslatorLanguageCode;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/TranslationManager_Internal$TranslationManagerCanCreateTranslatorResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/TranslationManager_Internal$TranslationManagerCanCreateTranslatorResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/TranslationManager$CanCreateTranslator_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public createTranslator(Lorg/chromium/blink/mojom/TranslationManagerCreateTranslatorClient;Lorg/chromium/blink/mojom/TranslatorCreateOptions;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/TranslationManager_Internal$TranslationManagerCreateTranslatorParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/TranslationManager_Internal$TranslationManagerCreateTranslatorParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/TranslationManager_Internal$TranslationManagerCreateTranslatorParams;->client:Lorg/chromium/blink/mojom/TranslationManagerCreateTranslatorClient;

    iput-object p2, v0, Lorg/chromium/blink/mojom/TranslationManager_Internal$TranslationManagerCreateTranslatorParams;->options:Lorg/chromium/blink/mojom/TranslatorCreateOptions;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x1

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public translationAvailable(Lorg/chromium/blink/mojom/TranslatorLanguageCode;Lorg/chromium/blink/mojom/TranslatorLanguageCode;Lorg/chromium/blink/mojom/TranslationManager$TranslationAvailable_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/TranslationManager_Internal$TranslationManagerTranslationAvailableParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/TranslationManager_Internal$TranslationManagerTranslationAvailableParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/TranslationManager_Internal$TranslationManagerTranslationAvailableParams;->sourceLang:Lorg/chromium/blink/mojom/TranslatorLanguageCode;

    iput-object p2, v0, Lorg/chromium/blink/mojom/TranslationManager_Internal$TranslationManagerTranslationAvailableParams;->targetLang:Lorg/chromium/blink/mojom/TranslatorLanguageCode;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/TranslationManager_Internal$TranslationManagerTranslationAvailableResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/TranslationManager_Internal$TranslationManagerTranslationAvailableResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/TranslationManager$TranslationAvailable_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
