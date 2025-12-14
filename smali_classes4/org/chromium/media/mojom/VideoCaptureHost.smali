.class public interface abstract Lorg/chromium/media/mojom/VideoCaptureHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/VideoCaptureHost$GetDeviceFormatsInUse_Response;,
        Lorg/chromium/media/mojom/VideoCaptureHost$GetDeviceSupportedFormats_Response;,
        Lorg/chromium/media/mojom/VideoCaptureHost$Proxy;
    }
.end annotation


# virtual methods
.method public abstract getDeviceFormatsInUse(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/media/mojom/VideoCaptureHost$GetDeviceFormatsInUse_Response;)V
.end method

.method public abstract getDeviceSupportedFormats(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/media/mojom/VideoCaptureHost$GetDeviceSupportedFormats_Response;)V
.end method

.method public abstract onLog(Lorg/chromium/mojo_base/mojom/UnguessableToken;Ljava/lang/String;)V
.end method

.method public abstract pause(Lorg/chromium/mojo_base/mojom/UnguessableToken;)V
.end method

.method public abstract releaseBuffer(Lorg/chromium/mojo_base/mojom/UnguessableToken;ILorg/chromium/media/mojom/VideoCaptureFeedback;)V
.end method

.method public abstract requestRefreshFrame(Lorg/chromium/mojo_base/mojom/UnguessableToken;)V
.end method

.method public abstract resume(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/media/mojom/VideoCaptureParams;)V
.end method

.method public abstract start(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/media/mojom/VideoCaptureParams;Lorg/chromium/media/mojom/VideoCaptureObserver;)V
.end method

.method public abstract stop(Lorg/chromium/mojo_base/mojom/UnguessableToken;)V
.end method
