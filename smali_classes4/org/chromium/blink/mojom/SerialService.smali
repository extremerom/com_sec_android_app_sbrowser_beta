.class public interface abstract Lorg/chromium/blink/mojom/SerialService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/SerialService$ForgetPort_Response;,
        Lorg/chromium/blink/mojom/SerialService$OpenPort_Response;,
        Lorg/chromium/blink/mojom/SerialService$RequestPort_Response;,
        Lorg/chromium/blink/mojom/SerialService$GetPorts_Response;,
        Lorg/chromium/blink/mojom/SerialService$Proxy;
    }
.end annotation


# virtual methods
.method public abstract forgetPort(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/blink/mojom/SerialService$ForgetPort_Response;)V
.end method

.method public abstract getPorts(Lorg/chromium/blink/mojom/SerialService$GetPorts_Response;)V
.end method

.method public abstract openPort(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/device/mojom/SerialConnectionOptions;Lorg/chromium/device/mojom/SerialPortClient;Lorg/chromium/blink/mojom/SerialService$OpenPort_Response;)V
.end method

.method public abstract requestPort([Lorg/chromium/blink/mojom/SerialPortFilter;[Lorg/chromium/bluetooth/mojom/Uuid;Lorg/chromium/blink/mojom/SerialService$RequestPort_Response;)V
.end method

.method public abstract setClient(Lorg/chromium/blink/mojom/SerialServiceClient;)V
.end method
