.class Lorg/chromium/on_device_model/mojom/OnDeviceModelService_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/on_device_model/mojom/OnDeviceModelService_Internal$OnDeviceModelServiceGetEstimatedPerformanceClassResponseParamsProxyToResponder;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModelService_Internal$OnDeviceModelServiceGetEstimatedPerformanceClassResponseParamsForwardToCallback;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModelService_Internal$OnDeviceModelServiceGetEstimatedPerformanceClassResponseParams;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModelService_Internal$OnDeviceModelServiceGetEstimatedPerformanceClassParams;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModelService_Internal$OnDeviceModelServiceLoadTextSafetyModelParams;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModelService_Internal$OnDeviceModelServiceGetCapabilitiesResponseParamsProxyToResponder;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModelService_Internal$OnDeviceModelServiceGetCapabilitiesResponseParamsForwardToCallback;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModelService_Internal$OnDeviceModelServiceGetCapabilitiesResponseParams;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModelService_Internal$OnDeviceModelServiceGetCapabilitiesParams;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModelService_Internal$OnDeviceModelServiceLoadModelResponseParamsProxyToResponder;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModelService_Internal$OnDeviceModelServiceLoadModelResponseParamsForwardToCallback;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModelService_Internal$OnDeviceModelServiceLoadModelResponseParams;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModelService_Internal$OnDeviceModelServiceLoadModelParams;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModelService_Internal$Stub;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModelService_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/on_device_model/mojom/OnDeviceModelService;",
            "Lorg/chromium/on_device_model/mojom/OnDeviceModelService$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/on_device_model/mojom/OnDeviceModelService_Internal$1;

    invoke-direct {v0}, Lorg/chromium/on_device_model/mojom/OnDeviceModelService_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/on_device_model/mojom/OnDeviceModelService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
