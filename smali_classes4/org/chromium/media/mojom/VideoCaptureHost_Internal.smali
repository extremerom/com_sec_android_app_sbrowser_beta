.class Lorg/chromium/media/mojom/VideoCaptureHost_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostOnLogParams;,
        Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostGetDeviceFormatsInUseResponseParamsProxyToResponder;,
        Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostGetDeviceFormatsInUseResponseParamsForwardToCallback;,
        Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostGetDeviceFormatsInUseResponseParams;,
        Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostGetDeviceFormatsInUseParams;,
        Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostGetDeviceSupportedFormatsResponseParamsProxyToResponder;,
        Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostGetDeviceSupportedFormatsResponseParamsForwardToCallback;,
        Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostGetDeviceSupportedFormatsResponseParams;,
        Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostGetDeviceSupportedFormatsParams;,
        Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostReleaseBufferParams;,
        Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostRequestRefreshFrameParams;,
        Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostResumeParams;,
        Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostPauseParams;,
        Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostStopParams;,
        Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostStartParams;,
        Lorg/chromium/media/mojom/VideoCaptureHost_Internal$Stub;,
        Lorg/chromium/media/mojom/VideoCaptureHost_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media/mojom/VideoCaptureHost;",
            "Lorg/chromium/media/mojom/VideoCaptureHost$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/media/mojom/VideoCaptureHost_Internal$1;

    invoke-direct {v0}, Lorg/chromium/media/mojom/VideoCaptureHost_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/media/mojom/VideoCaptureHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
