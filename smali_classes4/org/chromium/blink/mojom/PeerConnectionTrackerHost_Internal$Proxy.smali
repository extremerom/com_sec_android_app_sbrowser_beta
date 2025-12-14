.class final Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/PeerConnectionTrackerHost$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal;
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
.method public addPeerConnection(Lorg/chromium/blink/mojom/PeerConnectionInfo;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostAddPeerConnectionParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostAddPeerConnectionParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostAddPeerConnectionParams;->info:Lorg/chromium/blink/mojom/PeerConnectionInfo;

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

.method public addStandardStats(ILorg/chromium/mojo_base/mojom/ListValue;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostAddStandardStatsParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostAddStandardStatsParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostAddStandardStatsParams;->lid:I

    iput-object p2, v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostAddStandardStatsParams;->value:Lorg/chromium/mojo_base/mojom/ListValue;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0xb

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public getDisplayMedia(IZZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetDisplayMediaParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetDisplayMediaParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetDisplayMediaParams;->requestId:I

    iput-boolean p2, v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetDisplayMediaParams;->audio:Z

    iput-boolean p3, v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetDisplayMediaParams;->video:Z

    iput-object p4, v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetDisplayMediaParams;->audioConstraints:Ljava/lang/String;

    iput-object p5, v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetDisplayMediaParams;->videoConstraints:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x7

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public getDisplayMediaFailure(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetDisplayMediaFailureParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetDisplayMediaFailureParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetDisplayMediaFailureParams;->requestId:I

    iput-object p2, v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetDisplayMediaFailureParams;->error:Ljava/lang/String;

    iput-object p3, v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetDisplayMediaFailureParams;->errorMessage:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 p3, 0x9

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public getDisplayMediaSuccess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetDisplayMediaSuccessParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetDisplayMediaSuccessParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetDisplayMediaSuccessParams;->requestId:I

    iput-object p2, v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetDisplayMediaSuccessParams;->streamId:Ljava/lang/String;

    iput-object p3, v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetDisplayMediaSuccessParams;->audioTrackInfo:Ljava/lang/String;

    iput-object p4, v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetDisplayMediaSuccessParams;->videoTrackInfo:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 p3, 0x8

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public getUserMedia(IZZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetUserMediaParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetUserMediaParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetUserMediaParams;->requestId:I

    iput-boolean p2, v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetUserMediaParams;->audio:Z

    iput-boolean p3, v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetUserMediaParams;->video:Z

    iput-object p4, v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetUserMediaParams;->audioConstraints:Ljava/lang/String;

    iput-object p5, v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetUserMediaParams;->videoConstraints:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x4

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public getUserMediaFailure(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetUserMediaFailureParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetUserMediaFailureParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetUserMediaFailureParams;->requestId:I

    iput-object p2, v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetUserMediaFailureParams;->error:Ljava/lang/String;

    iput-object p3, v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetUserMediaFailureParams;->errorMessage:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x6

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public getUserMediaSuccess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetUserMediaSuccessParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetUserMediaSuccessParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetUserMediaSuccessParams;->requestId:I

    iput-object p2, v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetUserMediaSuccessParams;->streamId:Ljava/lang/String;

    iput-object p3, v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetUserMediaSuccessParams;->audioTrackInfo:Ljava/lang/String;

    iput-object p4, v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetUserMediaSuccessParams;->videoTrackInfo:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x5

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public onPeerConnectionSessionIdSet(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostOnPeerConnectionSessionIdSetParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostOnPeerConnectionSessionIdSetParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostOnPeerConnectionSessionIdSetParams;->lid:I

    iput-object p2, v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostOnPeerConnectionSessionIdSetParams;->sessionId:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x3

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public removePeerConnection(I)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostRemovePeerConnectionParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostRemovePeerConnectionParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostRemovePeerConnectionParams;->lid:I

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

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public updatePeerConnection(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostUpdatePeerConnectionParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostUpdatePeerConnectionParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostUpdatePeerConnectionParams;->lid:I

    iput-object p2, v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostUpdatePeerConnectionParams;->type:Ljava/lang/String;

    iput-object p3, v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostUpdatePeerConnectionParams;->value:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x2

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public webRtcEventLogWrite(I[B)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostWebRtcEventLogWriteParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostWebRtcEventLogWriteParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostWebRtcEventLogWriteParams;->lid:I

    iput-object p2, v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostWebRtcEventLogWriteParams;->output:[B

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0xa

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
