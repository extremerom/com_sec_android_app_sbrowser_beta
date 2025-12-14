.class Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostSelectAudioOutputResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostSelectAudioOutputResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostSelectAudioOutputResponseParams;,
        Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostSelectAudioOutputParams;,
        Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostSetPreferredSinkIdResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostSetPreferredSinkIdResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostSetPreferredSinkIdResponseParams;,
        Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostSetPreferredSinkIdParams;,
        Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostSetCaptureHandleConfigParams;,
        Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostAddMediaDevicesListenerParams;,
        Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetAudioInputCapabilitiesResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetAudioInputCapabilitiesResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetAudioInputCapabilitiesResponseParams;,
        Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetAudioInputCapabilitiesParams;,
        Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetAvailableVideoInputDeviceFormatsResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetAvailableVideoInputDeviceFormatsResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetAvailableVideoInputDeviceFormatsResponseParams;,
        Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetAvailableVideoInputDeviceFormatsParams;,
        Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetAllVideoInputDeviceFormatsResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetAllVideoInputDeviceFormatsResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetAllVideoInputDeviceFormatsResponseParams;,
        Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetAllVideoInputDeviceFormatsParams;,
        Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetVideoInputCapabilitiesResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetVideoInputCapabilitiesResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetVideoInputCapabilitiesResponseParams;,
        Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetVideoInputCapabilitiesParams;,
        Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesResponseParams;,
        Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesParams;,
        Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$Stub;,
        Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost;",
            "Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
