.class final Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal;
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
.method public formatInput(Lorg/chromium/mojo_base/mojom/Uuid;ILjava/util/Map;Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService$FormatInput_Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo_base/mojom/Uuid;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService$FormatInput_Response;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceFormatInputParams;

    invoke-direct {v0}, Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceFormatInputParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceFormatInputParams;->uuid:Lorg/chromium/mojo_base/mojom/Uuid;

    iput p2, v0, Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceFormatInputParams;->feature:I

    iput-object p3, v0, Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceFormatInputParams;->fields:Ljava/util/Map;

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

    const/4 v3, 0x3

    invoke-direct {p2, v3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceFormatInputResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceFormatInputResponseParamsForwardToCallback;-><init>(Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService$FormatInput_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getEstimatedPerformanceClass(Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService$GetEstimatedPerformanceClass_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceGetEstimatedPerformanceClassParams;

    invoke-direct {v0}, Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceGetEstimatedPerformanceClassParams;-><init>()V

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

    const/4 v6, 0x2

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceGetEstimatedPerformanceClassResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceGetEstimatedPerformanceClassResponseParamsForwardToCallback;-><init>(Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService$GetEstimatedPerformanceClass_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getPlatformModelState(Lorg/chromium/mojo_base/mojom/Uuid;Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService$GetPlatformModelState_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceGetPlatformModelStateParams;

    invoke-direct {v0}, Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceGetPlatformModelStateParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceGetPlatformModelStateParams;->uuid:Lorg/chromium/mojo_base/mojom/Uuid;

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

    new-instance v0, Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceGetPlatformModelStateResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceGetPlatformModelStateResponseParamsForwardToCallback;-><init>(Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService$GetPlatformModelState_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public loadPlatformModel(Lorg/chromium/mojo_base/mojom/Uuid;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/on_device_model/mojom/PlatformModelProgressObserver;Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService$LoadPlatformModel_Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo_base/mojom/Uuid;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/on_device_model/mojom/OnDeviceModel;",
            ">;",
            "Lorg/chromium/on_device_model/mojom/PlatformModelProgressObserver;",
            "Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService$LoadPlatformModel_Response;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceLoadPlatformModelParams;

    invoke-direct {v0}, Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceLoadPlatformModelParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceLoadPlatformModelParams;->uuid:Lorg/chromium/mojo_base/mojom/Uuid;

    iput-object p2, v0, Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceLoadPlatformModelParams;->model:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iput-object p3, v0, Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceLoadPlatformModelParams;->progressObserver:Lorg/chromium/on_device_model/mojom/PlatformModelProgressObserver;

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

    const/4 v3, 0x0

    invoke-direct {p2, v3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceLoadPlatformModelResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceLoadPlatformModelResponseParamsForwardToCallback;-><init>(Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService$LoadPlatformModel_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public validateSafetyResult(ILjava/lang/String;Lorg/chromium/on_device_model/mojom/SafetyInfo;Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService$ValidateSafetyResult_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceValidateSafetyResultParams;

    invoke-direct {v0}, Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceValidateSafetyResultParams;-><init>()V

    iput p1, v0, Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceValidateSafetyResultParams;->safetyFeature:I

    iput-object p2, v0, Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceValidateSafetyResultParams;->text:Ljava/lang/String;

    iput-object p3, v0, Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceValidateSafetyResultParams;->safetyInfo:Lorg/chromium/on_device_model/mojom/SafetyInfo;

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

    const/4 v3, 0x4

    invoke-direct {p2, v3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceValidateSafetyResultResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceValidateSafetyResultResponseParamsForwardToCallback;-><init>(Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService$ValidateSafetyResult_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
