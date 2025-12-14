.class final Lorg/chromium/device/mojom/SerialPortManager_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/device/mojom/SerialPortManager$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/mojom/SerialPortManager_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    return-void
.end method


# virtual methods
.method public getDevices(Lorg/chromium/device/mojom/SerialPortManager$GetDevices_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/device/mojom/SerialPortManager_Internal$SerialPortManagerGetDevicesParams;

    invoke-direct {v0}, Lorg/chromium/device/mojom/SerialPortManager_Internal$SerialPortManagerGetDevicesParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    invoke-direct {v2, v3, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/device/mojom/SerialPortManager_Internal$SerialPortManagerGetDevicesResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/device/mojom/SerialPortManager_Internal$SerialPortManagerGetDevicesResponseParamsForwardToCallback;-><init>(Lorg/chromium/device/mojom/SerialPortManager$GetDevices_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public openPort(Lorg/chromium/mojo_base/mojom/UnguessableToken;ZLorg/chromium/device/mojom/SerialConnectionOptions;Lorg/chromium/device/mojom/SerialPortClient;Lorg/chromium/device/mojom/SerialPortConnectionWatcher;Lorg/chromium/device/mojom/SerialPortManager$OpenPort_Response;)V
    .locals 2

    new-instance v0, Lorg/chromium/device/mojom/SerialPortManager_Internal$SerialPortManagerOpenPortParams;

    invoke-direct {v0}, Lorg/chromium/device/mojom/SerialPortManager_Internal$SerialPortManagerOpenPortParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/device/mojom/SerialPortManager_Internal$SerialPortManagerOpenPortParams;->token:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iput-boolean p2, v0, Lorg/chromium/device/mojom/SerialPortManager_Internal$SerialPortManagerOpenPortParams;->useAlternatePath:Z

    iput-object p3, v0, Lorg/chromium/device/mojom/SerialPortManager_Internal$SerialPortManagerOpenPortParams;->options:Lorg/chromium/device/mojom/SerialConnectionOptions;

    iput-object p4, v0, Lorg/chromium/device/mojom/SerialPortManager_Internal$SerialPortManagerOpenPortParams;->client:Lorg/chromium/device/mojom/SerialPortClient;

    iput-object p5, v0, Lorg/chromium/device/mojom/SerialPortManager_Internal$SerialPortManagerOpenPortParams;->watcher:Lorg/chromium/device/mojom/SerialPortConnectionWatcher;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x1

    const-wide/16 p4, 0x0

    const/4 v1, 0x2

    invoke-direct {p2, v1, p3, p4, p5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/device/mojom/SerialPortManager_Internal$SerialPortManagerOpenPortResponseParamsForwardToCallback;

    invoke-direct {p2, p6}, Lorg/chromium/device/mojom/SerialPortManager_Internal$SerialPortManagerOpenPortResponseParamsForwardToCallback;-><init>(Lorg/chromium/device/mojom/SerialPortManager$OpenPort_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public setClient(Lorg/chromium/device/mojom/SerialPortManagerClient;)V
    .locals 3

    new-instance v0, Lorg/chromium/device/mojom/SerialPortManager_Internal$SerialPortManagerSetClientParams;

    invoke-direct {v0}, Lorg/chromium/device/mojom/SerialPortManager_Internal$SerialPortManagerSetClientParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/device/mojom/SerialPortManager_Internal$SerialPortManagerSetClientParams;->client:Lorg/chromium/device/mojom/SerialPortManagerClient;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
