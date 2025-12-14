.class Lorg/chromium/blink/mojom/DevicePostureProvider_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/DevicePostureProvider_Internal$DevicePostureProviderDisableDevicePostureOverrideForEmulationParams;,
        Lorg/chromium/blink/mojom/DevicePostureProvider_Internal$DevicePostureProviderOverrideDevicePostureForEmulationParams;,
        Lorg/chromium/blink/mojom/DevicePostureProvider_Internal$DevicePostureProviderAddListenerAndGetCurrentPostureResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/DevicePostureProvider_Internal$DevicePostureProviderAddListenerAndGetCurrentPostureResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/DevicePostureProvider_Internal$DevicePostureProviderAddListenerAndGetCurrentPostureResponseParams;,
        Lorg/chromium/blink/mojom/DevicePostureProvider_Internal$DevicePostureProviderAddListenerAndGetCurrentPostureParams;,
        Lorg/chromium/blink/mojom/DevicePostureProvider_Internal$Stub;,
        Lorg/chromium/blink/mojom/DevicePostureProvider_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/DevicePostureProvider;",
            "Lorg/chromium/blink/mojom/DevicePostureProvider$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/DevicePostureProvider_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/DevicePostureProvider_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/DevicePostureProvider_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
