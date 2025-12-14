.class final Lorg/chromium/on_device_model/mojom/OnDeviceModel_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/on_device_model/mojom/OnDeviceModel$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/on_device_model/mojom/OnDeviceModel_Internal;
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
.method public classifyTextSafety(Ljava/lang/String;Lorg/chromium/on_device_model/mojom/OnDeviceModel$ClassifyTextSafety_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/on_device_model/mojom/OnDeviceModel_Internal$OnDeviceModelClassifyTextSafetyParams;

    invoke-direct {v0}, Lorg/chromium/on_device_model/mojom/OnDeviceModel_Internal$OnDeviceModelClassifyTextSafetyParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/on_device_model/mojom/OnDeviceModel_Internal$OnDeviceModelClassifyTextSafetyParams;->text:Ljava/lang/String;

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

    new-instance v0, Lorg/chromium/on_device_model/mojom/OnDeviceModel_Internal$OnDeviceModelClassifyTextSafetyResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/on_device_model/mojom/OnDeviceModel_Internal$OnDeviceModelClassifyTextSafetyResponseParamsForwardToCallback;-><init>(Lorg/chromium/on_device_model/mojom/OnDeviceModel$ClassifyTextSafety_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public detectLanguage(Ljava/lang/String;Lorg/chromium/on_device_model/mojom/OnDeviceModel$DetectLanguage_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/on_device_model/mojom/OnDeviceModel_Internal$OnDeviceModelDetectLanguageParams;

    invoke-direct {v0}, Lorg/chromium/on_device_model/mojom/OnDeviceModel_Internal$OnDeviceModelDetectLanguageParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/on_device_model/mojom/OnDeviceModel_Internal$OnDeviceModelDetectLanguageParams;->text:Ljava/lang/String;

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

    new-instance v0, Lorg/chromium/on_device_model/mojom/OnDeviceModel_Internal$OnDeviceModelDetectLanguageResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/on_device_model/mojom/OnDeviceModel_Internal$OnDeviceModelDetectLanguageResponseParamsForwardToCallback;-><init>(Lorg/chromium/on_device_model/mojom/OnDeviceModel$DetectLanguage_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public loadAdaptation(Lorg/chromium/on_device_model/mojom/LoadAdaptationParams;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/on_device_model/mojom/OnDeviceModel$LoadAdaptation_Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/on_device_model/mojom/LoadAdaptationParams;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/on_device_model/mojom/OnDeviceModel;",
            ">;",
            "Lorg/chromium/on_device_model/mojom/OnDeviceModel$LoadAdaptation_Response;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/on_device_model/mojom/OnDeviceModel_Internal$OnDeviceModelLoadAdaptationParams;

    invoke-direct {v0}, Lorg/chromium/on_device_model/mojom/OnDeviceModel_Internal$OnDeviceModelLoadAdaptationParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/on_device_model/mojom/OnDeviceModel_Internal$OnDeviceModelLoadAdaptationParams;->params:Lorg/chromium/on_device_model/mojom/LoadAdaptationParams;

    iput-object p2, v0, Lorg/chromium/on_device_model/mojom/OnDeviceModel_Internal$OnDeviceModelLoadAdaptationParams;->model:Lorg/chromium/mojo/bindings/InterfaceRequest;

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

    const/4 v4, 0x3

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/on_device_model/mojom/OnDeviceModel_Internal$OnDeviceModelLoadAdaptationResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/on_device_model/mojom/OnDeviceModel_Internal$OnDeviceModelLoadAdaptationResponseParamsForwardToCallback;-><init>(Lorg/chromium/on_device_model/mojom/OnDeviceModel$LoadAdaptation_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public startSession(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/on_device_model/mojom/SessionParams;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/on_device_model/mojom/Session;",
            ">;",
            "Lorg/chromium/on_device_model/mojom/SessionParams;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/on_device_model/mojom/OnDeviceModel_Internal$OnDeviceModelStartSessionParams;

    invoke-direct {v0}, Lorg/chromium/on_device_model/mojom/OnDeviceModel_Internal$OnDeviceModelStartSessionParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/on_device_model/mojom/OnDeviceModel_Internal$OnDeviceModelStartSessionParams;->session:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iput-object p2, v0, Lorg/chromium/on_device_model/mojom/OnDeviceModel_Internal$OnDeviceModelStartSessionParams;->params:Lorg/chromium/on_device_model/mojom/SessionParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
