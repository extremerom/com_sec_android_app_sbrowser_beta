.class public interface abstract Lorg/chromium/device/mojom/InputDeviceManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/mojom/InputDeviceManager$GetDevices_Response;,
        Lorg/chromium/device/mojom/InputDeviceManager$GetDevicesAndSetClient_Response;,
        Lorg/chromium/device/mojom/InputDeviceManager$Proxy;
    }
.end annotation


# virtual methods
.method public abstract getDevices(Lorg/chromium/device/mojom/InputDeviceManager$GetDevices_Response;)V
.end method

.method public abstract getDevicesAndSetClient(Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;Lorg/chromium/device/mojom/InputDeviceManager$GetDevicesAndSetClient_Response;)V
.end method
