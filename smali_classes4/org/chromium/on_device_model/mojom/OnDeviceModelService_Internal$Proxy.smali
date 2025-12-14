.class final Lorg/chromium/on_device_model/mojom/OnDeviceModelService_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/on_device_model/mojom/OnDeviceModelService$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/on_device_model/mojom/OnDeviceModelService_Internal;
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
.method public getCapabilities(Lorg/chromium/on_device_model/mojom/ModelAssets;Lorg/chromium/on_device_model/mojom/OnDeviceModelService$GetCapabilities_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/on_device_model/mojom/OnDeviceModelService_Internal$OnDeviceModelServiceGetCapabilitiesParams;

    invoke-direct {v0}, Lorg/chromium/on_device_model/mojom/OnDeviceModelService_Internal$OnDeviceModelServiceGetCapabilitiesParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/on_device_model/mojom/OnDeviceModelService_Internal$OnDeviceModelServiceGetCapabilitiesParams;->assets:Lorg/chromium/on_device_model/mojom/ModelAssets;

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

    new-instance v0, Lorg/chromium/on_device_model/mojom/OnDeviceModelService_Internal$OnDeviceModelServiceGetCapabilitiesResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/on_device_model/mojom/OnDeviceModelService_Internal$OnDeviceModelServiceGetCapabilitiesResponseParamsForwardToCallback;-><init>(Lorg/chromium/on_device_model/mojom/OnDeviceModelService$GetCapabilities_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getEstimatedPerformanceClass(Lorg/chromium/on_device_model/mojom/OnDeviceModelService$GetEstimatedPerformanceClass_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/on_device_model/mojom/OnDeviceModelService_Internal$OnDeviceModelServiceGetEstimatedPerformanceClassParams;

    invoke-direct {v0}, Lorg/chromium/on_device_model/mojom/OnDeviceModelService_Internal$OnDeviceModelServiceGetEstimatedPerformanceClassParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x3

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/on_device_model/mojom/OnDeviceModelService_Internal$OnDeviceModelServiceGetEstimatedPerformanceClassResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/on_device_model/mojom/OnDeviceModelService_Internal$OnDeviceModelServiceGetEstimatedPerformanceClassResponseParamsForwardToCallback;-><init>(Lorg/chromium/on_device_model/mojom/OnDeviceModelService$GetEstimatedPerformanceClass_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public loadModel(Lorg/chromium/on_device_model/mojom/LoadModelParams;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/on_device_model/mojom/OnDeviceModelService$LoadModel_Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/on_device_model/mojom/LoadModelParams;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/on_device_model/mojom/OnDeviceModel;",
            ">;",
            "Lorg/chromium/on_device_model/mojom/OnDeviceModelService$LoadModel_Response;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/on_device_model/mojom/OnDeviceModelService_Internal$OnDeviceModelServiceLoadModelParams;

    invoke-direct {v0}, Lorg/chromium/on_device_model/mojom/OnDeviceModelService_Internal$OnDeviceModelServiceLoadModelParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/on_device_model/mojom/OnDeviceModelService_Internal$OnDeviceModelServiceLoadModelParams;->params:Lorg/chromium/on_device_model/mojom/LoadModelParams;

    iput-object p2, v0, Lorg/chromium/on_device_model/mojom/OnDeviceModelService_Internal$OnDeviceModelServiceLoadModelParams;->model:Lorg/chromium/mojo/bindings/InterfaceRequest;

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

    new-instance p2, Lorg/chromium/on_device_model/mojom/OnDeviceModelService_Internal$OnDeviceModelServiceLoadModelResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/on_device_model/mojom/OnDeviceModelService_Internal$OnDeviceModelServiceLoadModelResponseParamsForwardToCallback;-><init>(Lorg/chromium/on_device_model/mojom/OnDeviceModelService$LoadModel_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public loadTextSafetyModel(Lorg/chromium/on_device_model/mojom/TextSafetyModelParams;Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/on_device_model/mojom/TextSafetyModelParams;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/on_device_model/mojom/TextSafetyModel;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/on_device_model/mojom/OnDeviceModelService_Internal$OnDeviceModelServiceLoadTextSafetyModelParams;

    invoke-direct {v0}, Lorg/chromium/on_device_model/mojom/OnDeviceModelService_Internal$OnDeviceModelServiceLoadTextSafetyModelParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/on_device_model/mojom/OnDeviceModelService_Internal$OnDeviceModelServiceLoadTextSafetyModelParams;->params:Lorg/chromium/on_device_model/mojom/TextSafetyModelParams;

    iput-object p2, v0, Lorg/chromium/on_device_model/mojom/OnDeviceModelService_Internal$OnDeviceModelServiceLoadTextSafetyModelParams;->model:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x2

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
