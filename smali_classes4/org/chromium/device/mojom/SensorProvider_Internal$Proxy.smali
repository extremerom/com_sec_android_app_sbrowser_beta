.class final Lorg/chromium/device/mojom/SensorProvider_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/device/mojom/SensorProvider$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/mojom/SensorProvider_Internal;
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
.method public createVirtualSensor(ILorg/chromium/device/mojom/VirtualSensorMetadata;Lorg/chromium/device/mojom/SensorProvider$CreateVirtualSensor_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderCreateVirtualSensorParams;

    invoke-direct {v0}, Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderCreateVirtualSensorParams;-><init>()V

    iput p1, v0, Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderCreateVirtualSensorParams;->type:I

    iput-object p2, v0, Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderCreateVirtualSensorParams;->metadata:Lorg/chromium/device/mojom/VirtualSensorMetadata;

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

    invoke-direct {p2, v1, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderCreateVirtualSensorResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderCreateVirtualSensorResponseParamsForwardToCallback;-><init>(Lorg/chromium/device/mojom/SensorProvider$CreateVirtualSensor_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getSensor(ILorg/chromium/device/mojom/SensorProvider$GetSensor_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderGetSensorParams;

    invoke-direct {v0}, Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderGetSensorParams;-><init>()V

    iput p1, v0, Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderGetSensorParams;->type:I

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

    const/4 v5, 0x0

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderGetSensorResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderGetSensorResponseParamsForwardToCallback;-><init>(Lorg/chromium/device/mojom/SensorProvider$GetSensor_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getVirtualSensorInformation(ILorg/chromium/device/mojom/SensorProvider$GetVirtualSensorInformation_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderGetVirtualSensorInformationParams;

    invoke-direct {v0}, Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderGetVirtualSensorInformationParams;-><init>()V

    iput p1, v0, Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderGetVirtualSensorInformationParams;->type:I

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

    const/4 v5, 0x4

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderGetVirtualSensorInformationResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderGetVirtualSensorInformationResponseParamsForwardToCallback;-><init>(Lorg/chromium/device/mojom/SensorProvider$GetVirtualSensorInformation_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public removeVirtualSensor(ILorg/chromium/device/mojom/SensorProvider$RemoveVirtualSensor_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderRemoveVirtualSensorParams;

    invoke-direct {v0}, Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderRemoveVirtualSensorParams;-><init>()V

    iput p1, v0, Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderRemoveVirtualSensorParams;->type:I

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

    const/4 v5, 0x3

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderRemoveVirtualSensorResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderRemoveVirtualSensorResponseParamsForwardToCallback;-><init>(Lorg/chromium/device/mojom/SensorProvider$RemoveVirtualSensor_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public updateVirtualSensor(ILorg/chromium/device/mojom/SensorReadingRaw;Lorg/chromium/device/mojom/SensorProvider$UpdateVirtualSensor_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderUpdateVirtualSensorParams;

    invoke-direct {v0}, Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderUpdateVirtualSensorParams;-><init>()V

    iput p1, v0, Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderUpdateVirtualSensorParams;->type:I

    iput-object p2, v0, Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderUpdateVirtualSensorParams;->reading:Lorg/chromium/device/mojom/SensorReadingRaw;

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

    new-instance p2, Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderUpdateVirtualSensorResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderUpdateVirtualSensorResponseParamsForwardToCallback;-><init>(Lorg/chromium/device/mojom/SensorProvider$UpdateVirtualSensor_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
