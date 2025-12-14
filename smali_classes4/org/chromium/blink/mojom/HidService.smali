.class public interface abstract Lorg/chromium/blink/mojom/HidService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/HidService$Forget_Response;,
        Lorg/chromium/blink/mojom/HidService$Connect_Response;,
        Lorg/chromium/blink/mojom/HidService$RequestDevice_Response;,
        Lorg/chromium/blink/mojom/HidService$GetDevices_Response;,
        Lorg/chromium/blink/mojom/HidService$Proxy;
    }
.end annotation


# virtual methods
.method public abstract connect(Ljava/lang/String;Lorg/chromium/device/mojom/HidConnectionClient;Lorg/chromium/blink/mojom/HidService$Connect_Response;)V
.end method

.method public abstract forget(Lorg/chromium/device/mojom/HidDeviceInfo;Lorg/chromium/blink/mojom/HidService$Forget_Response;)V
.end method

.method public abstract getDevices(Lorg/chromium/blink/mojom/HidService$GetDevices_Response;)V
.end method

.method public abstract registerClient(Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;)V
.end method

.method public abstract requestDevice([Lorg/chromium/blink/mojom/HidDeviceFilter;[Lorg/chromium/blink/mojom/HidDeviceFilter;Lorg/chromium/blink/mojom/HidService$RequestDevice_Response;)V
.end method
