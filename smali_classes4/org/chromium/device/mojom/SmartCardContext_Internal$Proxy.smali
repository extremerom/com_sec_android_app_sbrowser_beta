.class final Lorg/chromium/device/mojom/SmartCardContext_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/device/mojom/SmartCardContext$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/mojom/SmartCardContext_Internal;
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
.method public cancel(Lorg/chromium/device/mojom/SmartCardContext$Cancel_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/device/mojom/SmartCardContext_Internal$SmartCardContextCancelParams;

    invoke-direct {v0}, Lorg/chromium/device/mojom/SmartCardContext_Internal$SmartCardContextCancelParams;-><init>()V

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

    const/4 v6, 0x2

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/device/mojom/SmartCardContext_Internal$SmartCardContextCancelResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/device/mojom/SmartCardContext_Internal$SmartCardContextCancelResponseParamsForwardToCallback;-><init>(Lorg/chromium/device/mojom/SmartCardContext$Cancel_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public connect(Ljava/lang/String;ILorg/chromium/device/mojom/SmartCardProtocols;Lorg/chromium/device/mojom/SmartCardConnectionWatcher;Lorg/chromium/device/mojom/SmartCardContext$Connect_Response;)V
    .locals 3

    new-instance v0, Lorg/chromium/device/mojom/SmartCardContext_Internal$SmartCardContextConnectParams;

    invoke-direct {v0}, Lorg/chromium/device/mojom/SmartCardContext_Internal$SmartCardContextConnectParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/device/mojom/SmartCardContext_Internal$SmartCardContextConnectParams;->reader:Ljava/lang/String;

    iput p2, v0, Lorg/chromium/device/mojom/SmartCardContext_Internal$SmartCardContextConnectParams;->shareMode:I

    iput-object p3, v0, Lorg/chromium/device/mojom/SmartCardContext_Internal$SmartCardContextConnectParams;->preferredProtocols:Lorg/chromium/device/mojom/SmartCardProtocols;

    iput-object p4, v0, Lorg/chromium/device/mojom/SmartCardContext_Internal$SmartCardContextConnectParams;->connectionWatcher:Lorg/chromium/device/mojom/SmartCardConnectionWatcher;

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

    const-wide/16 v1, 0x0

    const/4 p4, 0x3

    invoke-direct {p2, p4, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/device/mojom/SmartCardContext_Internal$SmartCardContextConnectResponseParamsForwardToCallback;

    invoke-direct {p2, p5}, Lorg/chromium/device/mojom/SmartCardContext_Internal$SmartCardContextConnectResponseParamsForwardToCallback;-><init>(Lorg/chromium/device/mojom/SmartCardContext$Connect_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getStatusChange(Lorg/chromium/mojo_base/mojom/TimeDelta;[Lorg/chromium/device/mojom/SmartCardReaderStateIn;Lorg/chromium/device/mojom/SmartCardContext$GetStatusChange_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/device/mojom/SmartCardContext_Internal$SmartCardContextGetStatusChangeParams;

    invoke-direct {v0}, Lorg/chromium/device/mojom/SmartCardContext_Internal$SmartCardContextGetStatusChangeParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/device/mojom/SmartCardContext_Internal$SmartCardContextGetStatusChangeParams;->timeout:Lorg/chromium/mojo_base/mojom/TimeDelta;

    iput-object p2, v0, Lorg/chromium/device/mojom/SmartCardContext_Internal$SmartCardContextGetStatusChangeParams;->readerStates:[Lorg/chromium/device/mojom/SmartCardReaderStateIn;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-direct {p2, v1, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/device/mojom/SmartCardContext_Internal$SmartCardContextGetStatusChangeResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/device/mojom/SmartCardContext_Internal$SmartCardContextGetStatusChangeResponseParamsForwardToCallback;-><init>(Lorg/chromium/device/mojom/SmartCardContext$GetStatusChange_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public listReaders(Lorg/chromium/device/mojom/SmartCardContext$ListReaders_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/device/mojom/SmartCardContext_Internal$SmartCardContextListReadersParams;

    invoke-direct {v0}, Lorg/chromium/device/mojom/SmartCardContext_Internal$SmartCardContextListReadersParams;-><init>()V

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

    const/4 v6, 0x0

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/device/mojom/SmartCardContext_Internal$SmartCardContextListReadersResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/device/mojom/SmartCardContext_Internal$SmartCardContextListReadersResponseParamsForwardToCallback;-><init>(Lorg/chromium/device/mojom/SmartCardContext$ListReaders_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
