.class public interface abstract Lorg/chromium/device/mojom/SerialPortManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/mojom/SerialPortManager$OpenPort_Response;,
        Lorg/chromium/device/mojom/SerialPortManager$GetDevices_Response;,
        Lorg/chromium/device/mojom/SerialPortManager$Proxy;
    }
.end annotation


# virtual methods
.method public abstract getDevices(Lorg/chromium/device/mojom/SerialPortManager$GetDevices_Response;)V
.end method

.method public abstract openPort(Lorg/chromium/mojo_base/mojom/UnguessableToken;ZLorg/chromium/device/mojom/SerialConnectionOptions;Lorg/chromium/device/mojom/SerialPortClient;Lorg/chromium/device/mojom/SerialPortConnectionWatcher;Lorg/chromium/device/mojom/SerialPortManager$OpenPort_Response;)V
.end method

.method public abstract setClient(Lorg/chromium/device/mojom/SerialPortManagerClient;)V
.end method
