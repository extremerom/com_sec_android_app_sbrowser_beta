.class Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceValidateSafetyResultResponseParamsProxyToResponder;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceValidateSafetyResultResponseParamsForwardToCallback;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceValidateSafetyResultResponseParams;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceValidateSafetyResultParams;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceFormatInputResponseParamsProxyToResponder;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceFormatInputResponseParamsForwardToCallback;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceFormatInputResponseParams;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceFormatInputParams;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceGetEstimatedPerformanceClassResponseParamsProxyToResponder;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceGetEstimatedPerformanceClassResponseParamsForwardToCallback;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceGetEstimatedPerformanceClassResponseParams;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceGetEstimatedPerformanceClassParams;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceGetPlatformModelStateResponseParamsProxyToResponder;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceGetPlatformModelStateResponseParamsForwardToCallback;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceGetPlatformModelStateResponseParams;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceGetPlatformModelStateParams;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceLoadPlatformModelResponseParamsProxyToResponder;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceLoadPlatformModelResponseParamsForwardToCallback;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceLoadPlatformModelResponseParams;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$OnDeviceModelPlatformServiceLoadPlatformModelParams;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$Stub;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService;",
            "Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$1;

    invoke-direct {v0}, Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/on_device_model/mojom/OnDeviceModelPlatformService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
