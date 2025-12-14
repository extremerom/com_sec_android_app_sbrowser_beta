.class Lorg/chromium/blink/mojom/MediaStreamDeviceObserver_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/MediaStreamDeviceObserver_Internal$MediaStreamDeviceObserverOnZoomLevelChangeParams;,
        Lorg/chromium/blink/mojom/MediaStreamDeviceObserver_Internal$MediaStreamDeviceObserverOnDeviceCaptureHandleChangeParams;,
        Lorg/chromium/blink/mojom/MediaStreamDeviceObserver_Internal$MediaStreamDeviceObserverOnDeviceCaptureConfigurationChangeParams;,
        Lorg/chromium/blink/mojom/MediaStreamDeviceObserver_Internal$MediaStreamDeviceObserverOnDeviceRequestStateChangeParams;,
        Lorg/chromium/blink/mojom/MediaStreamDeviceObserver_Internal$MediaStreamDeviceObserverOnDeviceChangedParams;,
        Lorg/chromium/blink/mojom/MediaStreamDeviceObserver_Internal$MediaStreamDeviceObserverOnDeviceStoppedParams;,
        Lorg/chromium/blink/mojom/MediaStreamDeviceObserver_Internal$Stub;,
        Lorg/chromium/blink/mojom/MediaStreamDeviceObserver_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/MediaStreamDeviceObserver;",
            "Lorg/chromium/blink/mojom/MediaStreamDeviceObserver$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/MediaStreamDeviceObserver_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/MediaStreamDeviceObserver_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/MediaStreamDeviceObserver_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
