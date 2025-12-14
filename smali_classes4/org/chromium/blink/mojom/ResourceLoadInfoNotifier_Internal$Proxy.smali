.class final Lorg/chromium/blink/mojom/ResourceLoadInfoNotifier_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/ResourceLoadInfoNotifier$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/ResourceLoadInfoNotifier_Internal;
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
.method public clone(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/ResourceLoadInfoNotifier;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/blink/mojom/ResourceLoadInfoNotifier_Internal$ResourceLoadInfoNotifierCloneParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ResourceLoadInfoNotifier_Internal$ResourceLoadInfoNotifierCloneParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/ResourceLoadInfoNotifier_Internal$ResourceLoadInfoNotifierCloneParams;->pendingResourceLoadInfoNotifier:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public notifyResourceLoadCanceled(J)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/ResourceLoadInfoNotifier_Internal$ResourceLoadInfoNotifierNotifyResourceLoadCanceledParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ResourceLoadInfoNotifier_Internal$ResourceLoadInfoNotifierNotifyResourceLoadCanceledParams;-><init>()V

    iput-wide p1, v0, Lorg/chromium/blink/mojom/ResourceLoadInfoNotifier_Internal$ResourceLoadInfoNotifierNotifyResourceLoadCanceledParams;->requestId:J

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x5

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public notifyResourceLoadCompleted(Lorg/chromium/blink/mojom/ResourceLoadInfo;Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/ResourceLoadInfoNotifier_Internal$ResourceLoadInfoNotifierNotifyResourceLoadCompletedParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ResourceLoadInfoNotifier_Internal$ResourceLoadInfoNotifierNotifyResourceLoadCompletedParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/ResourceLoadInfoNotifier_Internal$ResourceLoadInfoNotifierNotifyResourceLoadCompletedParams;->resourceLoadInfo:Lorg/chromium/blink/mojom/ResourceLoadInfo;

    iput-object p2, v0, Lorg/chromium/blink/mojom/ResourceLoadInfoNotifier_Internal$ResourceLoadInfoNotifierNotifyResourceLoadCompletedParams;->status:Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x4

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public notifyResourceRedirectReceived(Lorg/chromium/network/mojom/UrlRequestRedirectInfo;Lorg/chromium/network/mojom/UrlResponseHead;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/ResourceLoadInfoNotifier_Internal$ResourceLoadInfoNotifierNotifyResourceRedirectReceivedParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ResourceLoadInfoNotifier_Internal$ResourceLoadInfoNotifierNotifyResourceRedirectReceivedParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/ResourceLoadInfoNotifier_Internal$ResourceLoadInfoNotifierNotifyResourceRedirectReceivedParams;->redirectInfo:Lorg/chromium/network/mojom/UrlRequestRedirectInfo;

    iput-object p2, v0, Lorg/chromium/blink/mojom/ResourceLoadInfoNotifier_Internal$ResourceLoadInfoNotifierNotifyResourceRedirectReceivedParams;->redirectResponse:Lorg/chromium/network/mojom/UrlResponseHead;

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

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public notifyResourceResponseReceived(JLorg/chromium/url/mojom/SchemeHostPort;Lorg/chromium/network/mojom/UrlResponseHead;IZ)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/ResourceLoadInfoNotifier_Internal$ResourceLoadInfoNotifierNotifyResourceResponseReceivedParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ResourceLoadInfoNotifier_Internal$ResourceLoadInfoNotifierNotifyResourceResponseReceivedParams;-><init>()V

    iput-wide p1, v0, Lorg/chromium/blink/mojom/ResourceLoadInfoNotifier_Internal$ResourceLoadInfoNotifierNotifyResourceResponseReceivedParams;->requestId:J

    iput-object p3, v0, Lorg/chromium/blink/mojom/ResourceLoadInfoNotifier_Internal$ResourceLoadInfoNotifierNotifyResourceResponseReceivedParams;->finalResponseUrl:Lorg/chromium/url/mojom/SchemeHostPort;

    iput-object p4, v0, Lorg/chromium/blink/mojom/ResourceLoadInfoNotifier_Internal$ResourceLoadInfoNotifierNotifyResourceResponseReceivedParams;->head:Lorg/chromium/network/mojom/UrlResponseHead;

    iput p5, v0, Lorg/chromium/blink/mojom/ResourceLoadInfoNotifier_Internal$ResourceLoadInfoNotifierNotifyResourceResponseReceivedParams;->requestDestination:I

    iput-boolean p6, v0, Lorg/chromium/blink/mojom/ResourceLoadInfoNotifier_Internal$ResourceLoadInfoNotifierNotifyResourceResponseReceivedParams;->isAdResource:Z

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

.method public notifyResourceTransferSizeUpdated(JI)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/ResourceLoadInfoNotifier_Internal$ResourceLoadInfoNotifierNotifyResourceTransferSizeUpdatedParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ResourceLoadInfoNotifier_Internal$ResourceLoadInfoNotifierNotifyResourceTransferSizeUpdatedParams;-><init>()V

    iput-wide p1, v0, Lorg/chromium/blink/mojom/ResourceLoadInfoNotifier_Internal$ResourceLoadInfoNotifierNotifyResourceTransferSizeUpdatedParams;->requestId:J

    iput p3, v0, Lorg/chromium/blink/mojom/ResourceLoadInfoNotifier_Internal$ResourceLoadInfoNotifierNotifyResourceTransferSizeUpdatedParams;->transferSizeDiff:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x3

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public notifyUpdateUserGestureCarryoverInfo()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/ResourceLoadInfoNotifier_Internal$ResourceLoadInfoNotifierNotifyUpdateUserGestureCarryoverInfoParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ResourceLoadInfoNotifier_Internal$ResourceLoadInfoNotifierNotifyUpdateUserGestureCarryoverInfoParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
