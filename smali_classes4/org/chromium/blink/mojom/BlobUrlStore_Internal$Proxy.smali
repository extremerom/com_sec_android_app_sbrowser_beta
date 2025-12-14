.class final Lorg/chromium/blink/mojom/BlobUrlStore_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/BlobUrlStore$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/BlobUrlStore_Internal;
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
.method public register(Lorg/chromium/blink/mojom/Blob;Lorg/chromium/url/mojom/Url;Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/network/mojom/SchemefulSite;Lorg/chromium/blink/mojom/BlobUrlStore$Register_Response;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/BlobUrlStore_Internal$BlobUrlStoreRegisterParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/BlobUrlStore_Internal$BlobUrlStoreRegisterParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/BlobUrlStore_Internal$BlobUrlStoreRegisterParams;->blob:Lorg/chromium/blink/mojom/Blob;

    iput-object p2, v0, Lorg/chromium/blink/mojom/BlobUrlStore_Internal$BlobUrlStoreRegisterParams;->url:Lorg/chromium/url/mojom/Url;

    iput-object p3, v0, Lorg/chromium/blink/mojom/BlobUrlStore_Internal$BlobUrlStoreRegisterParams;->unsafeAgentClusterId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iput-object p4, v0, Lorg/chromium/blink/mojom/BlobUrlStore_Internal$BlobUrlStoreRegisterParams;->unsafeTopLevelSite:Lorg/chromium/network/mojom/SchemefulSite;

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

    new-instance p2, Lorg/chromium/blink/mojom/BlobUrlStore_Internal$BlobUrlStoreRegisterResponseParamsForwardToCallback;

    invoke-direct {p2, p5}, Lorg/chromium/blink/mojom/BlobUrlStore_Internal$BlobUrlStoreRegisterResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/BlobUrlStore$Register_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public resolveAsBlobUrlToken(Lorg/chromium/url/mojom/Url;Lorg/chromium/mojo/bindings/InterfaceRequest;ZLorg/chromium/blink/mojom/BlobUrlStore$ResolveAsBlobUrlToken_Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/url/mojom/Url;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/BlobUrlToken;",
            ">;Z",
            "Lorg/chromium/blink/mojom/BlobUrlStore$ResolveAsBlobUrlToken_Response;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/blink/mojom/BlobUrlStore_Internal$BlobUrlStoreResolveAsBlobUrlTokenParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/BlobUrlStore_Internal$BlobUrlStoreResolveAsBlobUrlTokenParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/BlobUrlStore_Internal$BlobUrlStoreResolveAsBlobUrlTokenParams;->url:Lorg/chromium/url/mojom/Url;

    iput-object p2, v0, Lorg/chromium/blink/mojom/BlobUrlStore_Internal$BlobUrlStoreResolveAsBlobUrlTokenParams;->token:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iput-boolean p3, v0, Lorg/chromium/blink/mojom/BlobUrlStore_Internal$BlobUrlStoreResolveAsBlobUrlTokenParams;->isTopLevelNavigation:Z

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

    const/4 v3, 0x3

    invoke-direct {p2, v3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/BlobUrlStore_Internal$BlobUrlStoreResolveAsBlobUrlTokenResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/blink/mojom/BlobUrlStore_Internal$BlobUrlStoreResolveAsBlobUrlTokenResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/BlobUrlStore$ResolveAsBlobUrlToken_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public resolveAsUrlLoaderFactory(Lorg/chromium/url/mojom/Url;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/blink/mojom/BlobUrlStore$ResolveAsUrlLoaderFactory_Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/url/mojom/Url;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/UrlLoaderFactory;",
            ">;",
            "Lorg/chromium/blink/mojom/BlobUrlStore$ResolveAsUrlLoaderFactory_Response;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/blink/mojom/BlobUrlStore_Internal$BlobUrlStoreResolveAsUrlLoaderFactoryParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/BlobUrlStore_Internal$BlobUrlStoreResolveAsUrlLoaderFactoryParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/BlobUrlStore_Internal$BlobUrlStoreResolveAsUrlLoaderFactoryParams;->url:Lorg/chromium/url/mojom/Url;

    iput-object p2, v0, Lorg/chromium/blink/mojom/BlobUrlStore_Internal$BlobUrlStoreResolveAsUrlLoaderFactoryParams;->factory:Lorg/chromium/mojo/bindings/InterfaceRequest;

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

    const/4 v4, 0x2

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/BlobUrlStore_Internal$BlobUrlStoreResolveAsUrlLoaderFactoryResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/BlobUrlStore_Internal$BlobUrlStoreResolveAsUrlLoaderFactoryResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/BlobUrlStore$ResolveAsUrlLoaderFactory_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public revoke(Lorg/chromium/url/mojom/Url;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/BlobUrlStore_Internal$BlobUrlStoreRevokeParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/BlobUrlStore_Internal$BlobUrlStoreRevokeParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/BlobUrlStore_Internal$BlobUrlStoreRevokeParams;->url:Lorg/chromium/url/mojom/Url;

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
