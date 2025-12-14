.class final Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal;
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
            "Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverCloneParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverCloneParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverCloneParams;->listener:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public onAdAuctionEventRecordHeaderReceived(Lorg/chromium/network/mojom/AdAuctionEventRecord;)V
    .locals 3

    new-instance v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnAdAuctionEventRecordHeaderReceivedParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnAdAuctionEventRecordHeaderReceivedParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnAdAuctionEventRecordHeaderReceivedParams;->adAuctionEventRecord:Lorg/chromium/network/mojom/AdAuctionEventRecord;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public onAuthRequired(Lorg/chromium/mojo_base/mojom/UnguessableToken;ILorg/chromium/url/mojom/Url;ZLorg/chromium/network/mojom/AuthChallengeInfo;Lorg/chromium/network/mojom/HttpResponseHeaders;Lorg/chromium/network/mojom/AuthChallengeResponder;)V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnAuthRequiredParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnAuthRequiredParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnAuthRequiredParams;->windowId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iput p2, v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnAuthRequiredParams;->requestId:I

    iput-object p3, v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnAuthRequiredParams;->url:Lorg/chromium/url/mojom/Url;

    iput-boolean p4, v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnAuthRequiredParams;->firstAuthAttempt:Z

    iput-object p5, v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnAuthRequiredParams;->authInfo:Lorg/chromium/network/mojom/AuthChallengeInfo;

    iput-object p6, v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnAuthRequiredParams;->headHeaders:Lorg/chromium/network/mojom/HttpResponseHeaders;

    iput-object p7, v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnAuthRequiredParams;->authChallengeResponder:Lorg/chromium/network/mojom/AuthChallengeResponder;

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

.method public onCertificateRequested(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/network/mojom/SslCertRequestInfo;Lorg/chromium/network/mojom/ClientCertificateResponder;)V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnCertificateRequestedParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnCertificateRequestedParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnCertificateRequestedParams;->windowId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iput-object p2, v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnCertificateRequestedParams;->certInfo:Lorg/chromium/network/mojom/SslCertRequestInfo;

    iput-object p3, v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnCertificateRequestedParams;->certResponder:Lorg/chromium/network/mojom/ClientCertificateResponder;

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

.method public onClearSiteData(Lorg/chromium/url/mojom/Url;Ljava/lang/String;ILorg/chromium/network/mojom/CookiePartitionKey;ZLorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver$OnClearSiteData_Response;)V
    .locals 2

    new-instance v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnClearSiteDataParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnClearSiteDataParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnClearSiteDataParams;->url:Lorg/chromium/url/mojom/Url;

    iput-object p2, v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnClearSiteDataParams;->headerValue:Ljava/lang/String;

    iput p3, v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnClearSiteDataParams;->loadFlags:I

    iput-object p4, v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnClearSiteDataParams;->cookiePartitionKey:Lorg/chromium/network/mojom/CookiePartitionKey;

    iput-boolean p5, v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnClearSiteDataParams;->partitionedStateAllowedOnly:Z

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

    const/4 v1, 0x5

    invoke-direct {p2, v1, p3, p4, p5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnClearSiteDataResponseParamsForwardToCallback;

    invoke-direct {p2, p6}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnClearSiteDataResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver$OnClearSiteData_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public onDataUseUpdate(IJJ)V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnDataUseUpdateParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnDataUseUpdateParams;-><init>()V

    iput p1, v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnDataUseUpdateParams;->networkTrafficAnnotationIdHash:I

    iput-wide p2, v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnDataUseUpdateParams;->recvBytes:J

    iput-wide p4, v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnDataUseUpdateParams;->sentBytes:J

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

.method public onLoadingStateUpdate(Lorg/chromium/network/mojom/LoadInfo;Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver$OnLoadingStateUpdate_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnLoadingStateUpdateParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnLoadingStateUpdateParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnLoadingStateUpdateParams;->info:Lorg/chromium/network/mojom/LoadInfo;

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

    const/4 v5, 0x6

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnLoadingStateUpdateResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnLoadingStateUpdateResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver$OnLoadingStateUpdate_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public onLocalNetworkAccessPermissionRequired(Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver$OnLocalNetworkAccessPermissionRequired_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnLocalNetworkAccessPermissionRequiredParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnLocalNetworkAccessPermissionRequiredParams;-><init>()V

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

    const/4 v6, 0x4

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnLocalNetworkAccessPermissionRequiredResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnLocalNetworkAccessPermissionRequiredResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver$OnLocalNetworkAccessPermissionRequired_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public onPrivateNetworkAccessPermissionRequired(Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/IpAddress;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver$OnPrivateNetworkAccessPermissionRequired_Response;)V
    .locals 3

    new-instance v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnPrivateNetworkAccessPermissionRequiredParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnPrivateNetworkAccessPermissionRequiredParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnPrivateNetworkAccessPermissionRequiredParams;->url:Lorg/chromium/url/mojom/Url;

    iput-object p2, v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnPrivateNetworkAccessPermissionRequiredParams;->ipAddress:Lorg/chromium/network/mojom/IpAddress;

    iput-object p3, v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnPrivateNetworkAccessPermissionRequiredParams;->privateNetworkDeviceId:Ljava/lang/String;

    iput-object p4, v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnPrivateNetworkAccessPermissionRequiredParams;->privateNetworkDeviceName:Ljava/lang/String;

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

    new-instance p2, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnPrivateNetworkAccessPermissionRequiredResponseParamsForwardToCallback;

    invoke-direct {p2, p5}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnPrivateNetworkAccessPermissionRequiredResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver$OnPrivateNetworkAccessPermissionRequired_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public onSharedStorageHeaderReceived(Lorg/chromium/url/internal/mojom/Origin;Lorg/chromium/network/mojom/SharedStorageBatchUpdateMethodsArgument;Lorg/chromium/network/mojom/LockName;Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver$OnSharedStorageHeaderReceived_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnSharedStorageHeaderReceivedParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnSharedStorageHeaderReceivedParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnSharedStorageHeaderReceivedParams;->requestOrigin:Lorg/chromium/url/internal/mojom/Origin;

    iput-object p2, v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnSharedStorageHeaderReceivedParams;->methodsWithOptions:Lorg/chromium/network/mojom/SharedStorageBatchUpdateMethodsArgument;

    iput-object p3, v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnSharedStorageHeaderReceivedParams;->withLock:Lorg/chromium/network/mojom/LockName;

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

    const/16 v3, 0x8

    invoke-direct {p2, v3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnSharedStorageHeaderReceivedResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnSharedStorageHeaderReceivedResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver$OnSharedStorageHeaderReceived_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public onSslCertificateError(Lorg/chromium/url/mojom/Url;ILorg/chromium/network/mojom/SslInfo;ZLorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver$OnSslCertificateError_Response;)V
    .locals 3

    new-instance v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnSslCertificateErrorParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnSslCertificateErrorParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnSslCertificateErrorParams;->url:Lorg/chromium/url/mojom/Url;

    iput p2, v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnSslCertificateErrorParams;->netError:I

    iput-object p3, v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnSslCertificateErrorParams;->sslInfo:Lorg/chromium/network/mojom/SslInfo;

    iput-boolean p4, v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnSslCertificateErrorParams;->fatal:Z

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

    const/4 p4, 0x0

    invoke-direct {p2, p4, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnSslCertificateErrorResponseParamsForwardToCallback;

    invoke-direct {p2, p5}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnSslCertificateErrorResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver$OnSslCertificateError_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public onUrlLoaderConnectedToPrivateNetwork(Lorg/chromium/url/mojom/Url;III)V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnUrlLoaderConnectedToPrivateNetworkParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnUrlLoaderConnectedToPrivateNetworkParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnUrlLoaderConnectedToPrivateNetworkParams;->requestUrl:Lorg/chromium/url/mojom/Url;

    iput p2, v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnUrlLoaderConnectedToPrivateNetworkParams;->responseAddressSpace:I

    iput p3, v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnUrlLoaderConnectedToPrivateNetworkParams;->clientAddressSpace:I

    iput p4, v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnUrlLoaderConnectedToPrivateNetworkParams;->targetAddressSpace:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 p3, 0xc

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public onWebSocketConnectedToPrivateNetwork(I)V
    .locals 3

    new-instance v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnWebSocketConnectedToPrivateNetworkParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnWebSocketConnectedToPrivateNetworkParams;-><init>()V

    iput p1, v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnWebSocketConnectedToPrivateNetworkParams;->ipAddressSpace:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
