.class final Lorg/chromium/blink/mojom/CodeCacheHost_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/CodeCacheHost$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/CodeCacheHost_Internal;
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
.method public clearCodeCacheEntry(ILorg/chromium/url/mojom/Url;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/CodeCacheHost_Internal$CodeCacheHostClearCodeCacheEntryParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/CodeCacheHost_Internal$CodeCacheHostClearCodeCacheEntryParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/CodeCacheHost_Internal$CodeCacheHostClearCodeCacheEntryParams;->cacheType:I

    iput-object p2, v0, Lorg/chromium/blink/mojom/CodeCacheHost_Internal$CodeCacheHostClearCodeCacheEntryParams;->url:Lorg/chromium/url/mojom/Url;

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

.method public didGenerateCacheableMetadata(ILorg/chromium/url/mojom/Url;Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/mojo_base/mojom/BigBuffer;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/CodeCacheHost_Internal$CodeCacheHostDidGenerateCacheableMetadataParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/CodeCacheHost_Internal$CodeCacheHostDidGenerateCacheableMetadataParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/CodeCacheHost_Internal$CodeCacheHostDidGenerateCacheableMetadataParams;->cacheType:I

    iput-object p2, v0, Lorg/chromium/blink/mojom/CodeCacheHost_Internal$CodeCacheHostDidGenerateCacheableMetadataParams;->url:Lorg/chromium/url/mojom/Url;

    iput-object p3, v0, Lorg/chromium/blink/mojom/CodeCacheHost_Internal$CodeCacheHostDidGenerateCacheableMetadataParams;->expectedResponseTime:Lorg/chromium/mojo_base/mojom/Time;

    iput-object p4, v0, Lorg/chromium/blink/mojom/CodeCacheHost_Internal$CodeCacheHostDidGenerateCacheableMetadataParams;->data:Lorg/chromium/mojo_base/mojom/BigBuffer;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public didGenerateCacheableMetadataInCacheStorage(Lorg/chromium/url/mojom/Url;Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/mojo_base/mojom/BigBuffer;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/CodeCacheHost_Internal$CodeCacheHostDidGenerateCacheableMetadataInCacheStorageParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/CodeCacheHost_Internal$CodeCacheHostDidGenerateCacheableMetadataInCacheStorageParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/CodeCacheHost_Internal$CodeCacheHostDidGenerateCacheableMetadataInCacheStorageParams;->url:Lorg/chromium/url/mojom/Url;

    iput-object p2, v0, Lorg/chromium/blink/mojom/CodeCacheHost_Internal$CodeCacheHostDidGenerateCacheableMetadataInCacheStorageParams;->expectedResponseTime:Lorg/chromium/mojo_base/mojom/Time;

    iput-object p3, v0, Lorg/chromium/blink/mojom/CodeCacheHost_Internal$CodeCacheHostDidGenerateCacheableMetadataInCacheStorageParams;->data:Lorg/chromium/mojo_base/mojom/BigBuffer;

    iput-object p4, v0, Lorg/chromium/blink/mojom/CodeCacheHost_Internal$CodeCacheHostDidGenerateCacheableMetadataInCacheStorageParams;->cacheStorageCacheName:Ljava/lang/String;

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

.method public fetchCachedCode(ILorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/CodeCacheHost$FetchCachedCode_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/CodeCacheHost_Internal$CodeCacheHostFetchCachedCodeParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/CodeCacheHost_Internal$CodeCacheHostFetchCachedCodeParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/CodeCacheHost_Internal$CodeCacheHostFetchCachedCodeParams;->cacheType:I

    iput-object p2, v0, Lorg/chromium/blink/mojom/CodeCacheHost_Internal$CodeCacheHostFetchCachedCodeParams;->url:Lorg/chromium/url/mojom/Url;

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

    new-instance p2, Lorg/chromium/blink/mojom/CodeCacheHost_Internal$CodeCacheHostFetchCachedCodeResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/CodeCacheHost_Internal$CodeCacheHostFetchCachedCodeResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/CodeCacheHost$FetchCachedCode_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
