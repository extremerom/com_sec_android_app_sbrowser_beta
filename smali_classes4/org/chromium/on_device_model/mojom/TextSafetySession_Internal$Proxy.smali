.class final Lorg/chromium/on_device_model/mojom/TextSafetySession_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/on_device_model/mojom/TextSafetySession$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/on_device_model/mojom/TextSafetySession_Internal;
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
.method public classifyTextSafety(Ljava/lang/String;Lorg/chromium/on_device_model/mojom/TextSafetySession$ClassifyTextSafety_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/on_device_model/mojom/TextSafetySession_Internal$TextSafetySessionClassifyTextSafetyParams;

    invoke-direct {v0}, Lorg/chromium/on_device_model/mojom/TextSafetySession_Internal$TextSafetySessionClassifyTextSafetyParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/on_device_model/mojom/TextSafetySession_Internal$TextSafetySessionClassifyTextSafetyParams;->text:Ljava/lang/String;

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

    new-instance v0, Lorg/chromium/on_device_model/mojom/TextSafetySession_Internal$TextSafetySessionClassifyTextSafetyResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/on_device_model/mojom/TextSafetySession_Internal$TextSafetySessionClassifyTextSafetyResponseParamsForwardToCallback;-><init>(Lorg/chromium/on_device_model/mojom/TextSafetySession$ClassifyTextSafety_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public detectLanguage(Ljava/lang/String;Lorg/chromium/on_device_model/mojom/TextSafetySession$DetectLanguage_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/on_device_model/mojom/TextSafetySession_Internal$TextSafetySessionDetectLanguageParams;

    invoke-direct {v0}, Lorg/chromium/on_device_model/mojom/TextSafetySession_Internal$TextSafetySessionDetectLanguageParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/on_device_model/mojom/TextSafetySession_Internal$TextSafetySessionDetectLanguageParams;->text:Ljava/lang/String;

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

    const/4 v5, 0x2

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/on_device_model/mojom/TextSafetySession_Internal$TextSafetySessionDetectLanguageResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/on_device_model/mojom/TextSafetySession_Internal$TextSafetySessionDetectLanguageResponseParamsForwardToCallback;-><init>(Lorg/chromium/on_device_model/mojom/TextSafetySession$DetectLanguage_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
