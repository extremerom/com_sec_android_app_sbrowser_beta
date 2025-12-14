.class public interface abstract Lorg/chromium/device/mojom/SerialPort;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/mojom/SerialPort$Close_Response;,
        Lorg/chromium/device/mojom/SerialPort$GetPortInfo_Response;,
        Lorg/chromium/device/mojom/SerialPort$ConfigurePort_Response;,
        Lorg/chromium/device/mojom/SerialPort$SetControlSignals_Response;,
        Lorg/chromium/device/mojom/SerialPort$GetControlSignals_Response;,
        Lorg/chromium/device/mojom/SerialPort$Drain_Response;,
        Lorg/chromium/device/mojom/SerialPort$Flush_Response;,
        Lorg/chromium/device/mojom/SerialPort$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/device/mojom/SerialPort;",
            "Lorg/chromium/device/mojom/SerialPort$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/device/mojom/SerialPort_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/device/mojom/SerialPort;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract close(ZLorg/chromium/device/mojom/SerialPort$Close_Response;)V
.end method

.method public abstract configurePort(Lorg/chromium/device/mojom/SerialConnectionOptions;Lorg/chromium/device/mojom/SerialPort$ConfigurePort_Response;)V
.end method

.method public abstract drain(Lorg/chromium/device/mojom/SerialPort$Drain_Response;)V
.end method

.method public abstract flush(ILorg/chromium/device/mojom/SerialPort$Flush_Response;)V
.end method

.method public abstract getControlSignals(Lorg/chromium/device/mojom/SerialPort$GetControlSignals_Response;)V
.end method

.method public abstract getPortInfo(Lorg/chromium/device/mojom/SerialPort$GetPortInfo_Response;)V
.end method

.method public abstract setControlSignals(Lorg/chromium/device/mojom/SerialHostControlSignals;Lorg/chromium/device/mojom/SerialPort$SetControlSignals_Response;)V
.end method

.method public abstract startReading(Lorg/chromium/mojo/system/DataPipe$ProducerHandle;)V
.end method

.method public abstract startWriting(Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;)V
.end method
