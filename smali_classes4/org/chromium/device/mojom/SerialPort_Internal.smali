.class Lorg/chromium/device/mojom/SerialPort_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/mojom/SerialPort_Internal$SerialPortCloseResponseParamsProxyToResponder;,
        Lorg/chromium/device/mojom/SerialPort_Internal$SerialPortCloseResponseParamsForwardToCallback;,
        Lorg/chromium/device/mojom/SerialPort_Internal$SerialPortCloseResponseParams;,
        Lorg/chromium/device/mojom/SerialPort_Internal$SerialPortCloseParams;,
        Lorg/chromium/device/mojom/SerialPort_Internal$SerialPortGetPortInfoResponseParamsProxyToResponder;,
        Lorg/chromium/device/mojom/SerialPort_Internal$SerialPortGetPortInfoResponseParamsForwardToCallback;,
        Lorg/chromium/device/mojom/SerialPort_Internal$SerialPortGetPortInfoResponseParams;,
        Lorg/chromium/device/mojom/SerialPort_Internal$SerialPortGetPortInfoParams;,
        Lorg/chromium/device/mojom/SerialPort_Internal$SerialPortConfigurePortResponseParamsProxyToResponder;,
        Lorg/chromium/device/mojom/SerialPort_Internal$SerialPortConfigurePortResponseParamsForwardToCallback;,
        Lorg/chromium/device/mojom/SerialPort_Internal$SerialPortConfigurePortResponseParams;,
        Lorg/chromium/device/mojom/SerialPort_Internal$SerialPortConfigurePortParams;,
        Lorg/chromium/device/mojom/SerialPort_Internal$SerialPortSetControlSignalsResponseParamsProxyToResponder;,
        Lorg/chromium/device/mojom/SerialPort_Internal$SerialPortSetControlSignalsResponseParamsForwardToCallback;,
        Lorg/chromium/device/mojom/SerialPort_Internal$SerialPortSetControlSignalsResponseParams;,
        Lorg/chromium/device/mojom/SerialPort_Internal$SerialPortSetControlSignalsParams;,
        Lorg/chromium/device/mojom/SerialPort_Internal$SerialPortGetControlSignalsResponseParamsProxyToResponder;,
        Lorg/chromium/device/mojom/SerialPort_Internal$SerialPortGetControlSignalsResponseParamsForwardToCallback;,
        Lorg/chromium/device/mojom/SerialPort_Internal$SerialPortGetControlSignalsResponseParams;,
        Lorg/chromium/device/mojom/SerialPort_Internal$SerialPortGetControlSignalsParams;,
        Lorg/chromium/device/mojom/SerialPort_Internal$SerialPortDrainResponseParamsProxyToResponder;,
        Lorg/chromium/device/mojom/SerialPort_Internal$SerialPortDrainResponseParamsForwardToCallback;,
        Lorg/chromium/device/mojom/SerialPort_Internal$SerialPortDrainResponseParams;,
        Lorg/chromium/device/mojom/SerialPort_Internal$SerialPortDrainParams;,
        Lorg/chromium/device/mojom/SerialPort_Internal$SerialPortFlushResponseParamsProxyToResponder;,
        Lorg/chromium/device/mojom/SerialPort_Internal$SerialPortFlushResponseParamsForwardToCallback;,
        Lorg/chromium/device/mojom/SerialPort_Internal$SerialPortFlushResponseParams;,
        Lorg/chromium/device/mojom/SerialPort_Internal$SerialPortFlushParams;,
        Lorg/chromium/device/mojom/SerialPort_Internal$SerialPortStartReadingParams;,
        Lorg/chromium/device/mojom/SerialPort_Internal$SerialPortStartWritingParams;,
        Lorg/chromium/device/mojom/SerialPort_Internal$Stub;,
        Lorg/chromium/device/mojom/SerialPort_Internal$Proxy;
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

    new-instance v0, Lorg/chromium/device/mojom/SerialPort_Internal$1;

    invoke-direct {v0}, Lorg/chromium/device/mojom/SerialPort_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/device/mojom/SerialPort_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
