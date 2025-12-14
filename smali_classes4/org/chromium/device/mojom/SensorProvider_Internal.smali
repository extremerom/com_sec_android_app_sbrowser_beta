.class Lorg/chromium/device/mojom/SensorProvider_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderGetVirtualSensorInformationResponseParamsProxyToResponder;,
        Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderGetVirtualSensorInformationResponseParamsForwardToCallback;,
        Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderGetVirtualSensorInformationResponseParams;,
        Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderGetVirtualSensorInformationParams;,
        Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderRemoveVirtualSensorResponseParamsProxyToResponder;,
        Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderRemoveVirtualSensorResponseParamsForwardToCallback;,
        Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderRemoveVirtualSensorResponseParams;,
        Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderRemoveVirtualSensorParams;,
        Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderUpdateVirtualSensorResponseParamsProxyToResponder;,
        Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderUpdateVirtualSensorResponseParamsForwardToCallback;,
        Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderUpdateVirtualSensorResponseParams;,
        Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderUpdateVirtualSensorParams;,
        Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderCreateVirtualSensorResponseParamsProxyToResponder;,
        Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderCreateVirtualSensorResponseParamsForwardToCallback;,
        Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderCreateVirtualSensorResponseParams;,
        Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderCreateVirtualSensorParams;,
        Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderGetSensorResponseParamsProxyToResponder;,
        Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderGetSensorResponseParamsForwardToCallback;,
        Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderGetSensorResponseParams;,
        Lorg/chromium/device/mojom/SensorProvider_Internal$SensorProviderGetSensorParams;,
        Lorg/chromium/device/mojom/SensorProvider_Internal$Stub;,
        Lorg/chromium/device/mojom/SensorProvider_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/device/mojom/SensorProvider;",
            "Lorg/chromium/device/mojom/SensorProvider$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/device/mojom/SensorProvider_Internal$1;

    invoke-direct {v0}, Lorg/chromium/device/mojom/SensorProvider_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/device/mojom/SensorProvider_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
