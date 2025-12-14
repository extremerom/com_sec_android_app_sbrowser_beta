.class final Lorg/chromium/network/mojom/UrlLoaderClient_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/network/mojom/UrlLoaderClient$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/UrlLoaderClient_Internal;
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
.method public onComplete(Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;)V
    .locals 3

    new-instance v0, Lorg/chromium/network/mojom/UrlLoaderClient_Internal$UrlLoaderClientOnCompleteParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/UrlLoaderClient_Internal$UrlLoaderClientOnCompleteParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/UrlLoaderClient_Internal$UrlLoaderClientOnCompleteParams;->status:Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public onReceiveEarlyHints(Lorg/chromium/network/mojom/EarlyHints;)V
    .locals 3

    new-instance v0, Lorg/chromium/network/mojom/UrlLoaderClient_Internal$UrlLoaderClientOnReceiveEarlyHintsParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/UrlLoaderClient_Internal$UrlLoaderClientOnReceiveEarlyHintsParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/UrlLoaderClient_Internal$UrlLoaderClientOnReceiveEarlyHintsParams;->earlyHints:Lorg/chromium/network/mojom/EarlyHints;

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

.method public onReceiveRedirect(Lorg/chromium/network/mojom/UrlRequestRedirectInfo;Lorg/chromium/network/mojom/UrlResponseHead;)V
    .locals 2

    new-instance v0, Lorg/chromium/network/mojom/UrlLoaderClient_Internal$UrlLoaderClientOnReceiveRedirectParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/UrlLoaderClient_Internal$UrlLoaderClientOnReceiveRedirectParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/UrlLoaderClient_Internal$UrlLoaderClientOnReceiveRedirectParams;->redirectInfo:Lorg/chromium/network/mojom/UrlRequestRedirectInfo;

    iput-object p2, v0, Lorg/chromium/network/mojom/UrlLoaderClient_Internal$UrlLoaderClientOnReceiveRedirectParams;->head:Lorg/chromium/network/mojom/UrlResponseHead;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x2

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public onReceiveResponse(Lorg/chromium/network/mojom/UrlResponseHead;Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;Lorg/chromium/mojo_base/mojom/BigBuffer;)V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/UrlLoaderClient_Internal$UrlLoaderClientOnReceiveResponseParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/UrlLoaderClient_Internal$UrlLoaderClientOnReceiveResponseParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/UrlLoaderClient_Internal$UrlLoaderClientOnReceiveResponseParams;->head:Lorg/chromium/network/mojom/UrlResponseHead;

    iput-object p2, v0, Lorg/chromium/network/mojom/UrlLoaderClient_Internal$UrlLoaderClientOnReceiveResponseParams;->body:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    iput-object p3, v0, Lorg/chromium/network/mojom/UrlLoaderClient_Internal$UrlLoaderClientOnReceiveResponseParams;->cachedMetadata:Lorg/chromium/mojo_base/mojom/BigBuffer;

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

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public onTransferSizeUpdated(I)V
    .locals 3

    new-instance v0, Lorg/chromium/network/mojom/UrlLoaderClient_Internal$UrlLoaderClientOnTransferSizeUpdatedParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/UrlLoaderClient_Internal$UrlLoaderClientOnTransferSizeUpdatedParams;-><init>()V

    iput p1, v0, Lorg/chromium/network/mojom/UrlLoaderClient_Internal$UrlLoaderClientOnTransferSizeUpdatedParams;->transferSizeDiff:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public onUploadProgress(JJLorg/chromium/network/mojom/UrlLoaderClient$OnUploadProgress_Response;)V
    .locals 3

    new-instance v0, Lorg/chromium/network/mojom/UrlLoaderClient_Internal$UrlLoaderClientOnUploadProgressParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/UrlLoaderClient_Internal$UrlLoaderClientOnUploadProgressParams;-><init>()V

    iput-wide p1, v0, Lorg/chromium/network/mojom/UrlLoaderClient_Internal$UrlLoaderClientOnUploadProgressParams;->currentPosition:J

    iput-wide p3, v0, Lorg/chromium/network/mojom/UrlLoaderClient_Internal$UrlLoaderClientOnUploadProgressParams;->totalSize:J

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

    new-instance p2, Lorg/chromium/network/mojom/UrlLoaderClient_Internal$UrlLoaderClientOnUploadProgressResponseParamsForwardToCallback;

    invoke-direct {p2, p5}, Lorg/chromium/network/mojom/UrlLoaderClient_Internal$UrlLoaderClientOnUploadProgressResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/UrlLoaderClient$OnUploadProgress_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
