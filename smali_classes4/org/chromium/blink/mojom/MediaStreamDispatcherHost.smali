.class public interface abstract Lorg/chromium/blink/mojom/MediaStreamDispatcherHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/MediaStreamDispatcherHost$KeepDeviceAliveForTransfer_Response;,
        Lorg/chromium/blink/mojom/MediaStreamDispatcherHost$GetOpenDevice_Response;,
        Lorg/chromium/blink/mojom/MediaStreamDispatcherHost$OpenDevice_Response;,
        Lorg/chromium/blink/mojom/MediaStreamDispatcherHost$GenerateStreams_Response;,
        Lorg/chromium/blink/mojom/MediaStreamDispatcherHost$Proxy;
    }
.end annotation


# virtual methods
.method public abstract cancelRequest(I)V
.end method

.method public abstract closeDevice(Ljava/lang/String;)V
.end method

.method public abstract generateStreams(ILorg/chromium/blink/mojom/StreamControls;ZLorg/chromium/blink/mojom/StreamSelectionInfo;Lorg/chromium/blink/mojom/MediaStreamDispatcherHost$GenerateStreams_Response;)V
.end method

.method public abstract getOpenDevice(ILorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/blink/mojom/MediaStreamDispatcherHost$GetOpenDevice_Response;)V
.end method

.method public abstract keepDeviceAliveForTransfer(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/blink/mojom/MediaStreamDispatcherHost$KeepDeviceAliveForTransfer_Response;)V
.end method

.method public abstract openDevice(ILjava/lang/String;ILorg/chromium/blink/mojom/MediaStreamDispatcherHost$OpenDevice_Response;)V
.end method

.method public abstract setCapturingLinkSecured(Lorg/chromium/mojo_base/mojom/UnguessableToken;IZ)V
.end method

.method public abstract stopStreamDevice(Ljava/lang/String;Lorg/chromium/mojo_base/mojom/UnguessableToken;)V
.end method
