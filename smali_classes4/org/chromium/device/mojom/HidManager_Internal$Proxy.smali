.class final Lorg/chromium/device/mojom/HidManager_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/device/mojom/HidManager$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/mojom/HidManager_Internal;
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
.method public addReceiver(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/device/mojom/HidManager;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/device/mojom/HidManager_Internal$HidManagerAddReceiverParams;

    invoke-direct {v0}, Lorg/chromium/device/mojom/HidManager_Internal$HidManagerAddReceiverParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/device/mojom/HidManager_Internal$HidManagerAddReceiverParams;->receiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public connect(Ljava/lang/String;Lorg/chromium/device/mojom/HidConnectionClient;Lorg/chromium/device/mojom/HidConnectionWatcher;ZZLorg/chromium/device/mojom/HidManager$Connect_Response;)V
    .locals 2

    new-instance v0, Lorg/chromium/device/mojom/HidManager_Internal$HidManagerConnectParams;

    invoke-direct {v0}, Lorg/chromium/device/mojom/HidManager_Internal$HidManagerConnectParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/device/mojom/HidManager_Internal$HidManagerConnectParams;->deviceGuid:Ljava/lang/String;

    iput-object p2, v0, Lorg/chromium/device/mojom/HidManager_Internal$HidManagerConnectParams;->connectionClient:Lorg/chromium/device/mojom/HidConnectionClient;

    iput-object p3, v0, Lorg/chromium/device/mojom/HidManager_Internal$HidManagerConnectParams;->watcher:Lorg/chromium/device/mojom/HidConnectionWatcher;

    iput-boolean p4, v0, Lorg/chromium/device/mojom/HidManager_Internal$HidManagerConnectParams;->allowProtectedReports:Z

    iput-boolean p5, v0, Lorg/chromium/device/mojom/HidManager_Internal$HidManagerConnectParams;->allowFidoReports:Z

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

    new-instance p2, Lorg/chromium/device/mojom/HidManager_Internal$HidManagerConnectResponseParamsForwardToCallback;

    invoke-direct {p2, p6}, Lorg/chromium/device/mojom/HidManager_Internal$HidManagerConnectResponseParamsForwardToCallback;-><init>(Lorg/chromium/device/mojom/HidManager$Connect_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getDevices(Lorg/chromium/device/mojom/HidManager$GetDevices_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/device/mojom/HidManager_Internal$HidManagerGetDevicesParams;

    invoke-direct {v0}, Lorg/chromium/device/mojom/HidManager_Internal$HidManagerGetDevicesParams;-><init>()V

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

    new-instance v0, Lorg/chromium/device/mojom/HidManager_Internal$HidManagerGetDevicesResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/device/mojom/HidManager_Internal$HidManagerGetDevicesResponseParamsForwardToCallback;-><init>(Lorg/chromium/device/mojom/HidManager$GetDevices_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getDevicesAndSetClient(Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;Lorg/chromium/device/mojom/HidManager$GetDevicesAndSetClient_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/device/mojom/HidManager_Internal$HidManagerGetDevicesAndSetClientParams;

    invoke-direct {v0}, Lorg/chromium/device/mojom/HidManager_Internal$HidManagerGetDevicesAndSetClientParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/device/mojom/HidManager_Internal$HidManagerGetDevicesAndSetClientParams;->client:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/device/mojom/HidManager_Internal$HidManagerGetDevicesAndSetClientResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/device/mojom/HidManager_Internal$HidManagerGetDevicesAndSetClientResponseParamsForwardToCallback;-><init>(Lorg/chromium/device/mojom/HidManager$GetDevicesAndSetClient_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
