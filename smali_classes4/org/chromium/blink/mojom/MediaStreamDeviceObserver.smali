.class public interface abstract Lorg/chromium/blink/mojom/MediaStreamDeviceObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/MediaStreamDeviceObserver$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onDeviceCaptureConfigurationChange(Ljava/lang/String;Lorg/chromium/blink/mojom/MediaStreamDevice;)V
.end method

.method public abstract onDeviceCaptureHandleChange(Ljava/lang/String;Lorg/chromium/blink/mojom/MediaStreamDevice;)V
.end method

.method public abstract onDeviceChanged(Ljava/lang/String;Lorg/chromium/blink/mojom/MediaStreamDevice;Lorg/chromium/blink/mojom/MediaStreamDevice;)V
.end method

.method public abstract onDeviceRequestStateChange(Ljava/lang/String;Lorg/chromium/blink/mojom/MediaStreamDevice;I)V
.end method

.method public abstract onDeviceStopped(Ljava/lang/String;Lorg/chromium/blink/mojom/MediaStreamDevice;)V
.end method

.method public abstract onZoomLevelChange(Ljava/lang/String;Lorg/chromium/blink/mojom/MediaStreamDevice;I)V
.end method
