.class public interface abstract Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost$SelectAudioOutput_Response;,
        Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost$SetPreferredSinkId_Response;,
        Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost$GetAudioInputCapabilities_Response;,
        Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost$GetAvailableVideoInputDeviceFormats_Response;,
        Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost$GetAllVideoInputDeviceFormats_Response;,
        Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost$GetVideoInputCapabilities_Response;,
        Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost$EnumerateDevices_Response;,
        Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost$Proxy;
    }
.end annotation


# virtual methods
.method public abstract addMediaDevicesListener(ZZZLorg/chromium/blink/mojom/MediaDevicesListener;)V
.end method

.method public abstract enumerateDevices(ZZZZZLorg/chromium/blink/mojom/MediaDevicesDispatcherHost$EnumerateDevices_Response;)V
.end method

.method public abstract getAllVideoInputDeviceFormats(Ljava/lang/String;Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost$GetAllVideoInputDeviceFormats_Response;)V
.end method

.method public abstract getAudioInputCapabilities(Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost$GetAudioInputCapabilities_Response;)V
.end method

.method public abstract getAvailableVideoInputDeviceFormats(Ljava/lang/String;Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost$GetAvailableVideoInputDeviceFormats_Response;)V
.end method

.method public abstract getVideoInputCapabilities(Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost$GetVideoInputCapabilities_Response;)V
.end method

.method public abstract selectAudioOutput(Ljava/lang/String;Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost$SelectAudioOutput_Response;)V
.end method

.method public abstract setCaptureHandleConfig(Lorg/chromium/blink/mojom/CaptureHandleConfig;)V
.end method

.method public abstract setPreferredSinkId(Ljava/lang/String;Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost$SetPreferredSinkId_Response;)V
.end method
