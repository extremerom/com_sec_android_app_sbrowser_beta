.class final Lorg/chromium/blink/mojom/CacheStorageCache_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/CacheStorageCache$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/CacheStorageCache_Internal;
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
.method public batch([Lorg/chromium/blink/mojom/BatchOperation;JLorg/chromium/blink/mojom/CacheStorageCache$Batch_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheBatchParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheBatchParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheBatchParams;->batchOperations:[Lorg/chromium/blink/mojom/BatchOperation;

    iput-wide p2, v0, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheBatchParams;->traceId:J

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

    const/4 v3, 0x4

    invoke-direct {p2, v3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheBatchResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheBatchResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/CacheStorageCache$Batch_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getAllMatchedEntries(Lorg/chromium/blink/mojom/FetchApiRequest;Lorg/chromium/blink/mojom/CacheQueryOptions;JLorg/chromium/blink/mojom/CacheStorageCache$GetAllMatchedEntries_Response;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheGetAllMatchedEntriesParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheGetAllMatchedEntriesParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheGetAllMatchedEntriesParams;->request:Lorg/chromium/blink/mojom/FetchApiRequest;

    iput-object p2, v0, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheGetAllMatchedEntriesParams;->queryOptions:Lorg/chromium/blink/mojom/CacheQueryOptions;

    iput-wide p3, v0, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheGetAllMatchedEntriesParams;->traceId:J

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

    const/4 p4, 0x2

    invoke-direct {p2, p4, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheGetAllMatchedEntriesResponseParamsForwardToCallback;

    invoke-direct {p2, p5}, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheGetAllMatchedEntriesResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/CacheStorageCache$GetAllMatchedEntries_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public keys(Lorg/chromium/blink/mojom/FetchApiRequest;Lorg/chromium/blink/mojom/CacheQueryOptions;JLorg/chromium/blink/mojom/CacheStorageCache$Keys_Response;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheKeysParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheKeysParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheKeysParams;->request:Lorg/chromium/blink/mojom/FetchApiRequest;

    iput-object p2, v0, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheKeysParams;->queryOptions:Lorg/chromium/blink/mojom/CacheQueryOptions;

    iput-wide p3, v0, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheKeysParams;->traceId:J

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

    new-instance p2, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheKeysResponseParamsForwardToCallback;

    invoke-direct {p2, p5}, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheKeysResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/CacheStorageCache$Keys_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public match(Lorg/chromium/blink/mojom/FetchApiRequest;Lorg/chromium/blink/mojom/CacheQueryOptions;ZZJLorg/chromium/blink/mojom/CacheStorageCache$Match_Response;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheMatchParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheMatchParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheMatchParams;->request:Lorg/chromium/blink/mojom/FetchApiRequest;

    iput-object p2, v0, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheMatchParams;->queryOptions:Lorg/chromium/blink/mojom/CacheQueryOptions;

    iput-boolean p3, v0, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheMatchParams;->inRelatedFetchEvent:Z

    iput-boolean p4, v0, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheMatchParams;->inRangeFetchEvent:Z

    iput-wide p5, v0, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheMatchParams;->traceId:J

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

    const/4 p6, 0x0

    invoke-direct {p2, p6, p3, p4, p5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheMatchResponseParamsForwardToCallback;

    invoke-direct {p2, p7}, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheMatchResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/CacheStorageCache$Match_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public matchAll(Lorg/chromium/blink/mojom/FetchApiRequest;Lorg/chromium/blink/mojom/CacheQueryOptions;JLorg/chromium/blink/mojom/CacheStorageCache$MatchAll_Response;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheMatchAllParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheMatchAllParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheMatchAllParams;->request:Lorg/chromium/blink/mojom/FetchApiRequest;

    iput-object p2, v0, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheMatchAllParams;->queryOptions:Lorg/chromium/blink/mojom/CacheQueryOptions;

    iput-wide p3, v0, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheMatchAllParams;->traceId:J

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

    invoke-direct {p2, p3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheMatchAllResponseParamsForwardToCallback;

    invoke-direct {p2, p5}, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheMatchAllResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/CacheStorageCache$MatchAll_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public writeSideData(Lorg/chromium/url/mojom/Url;Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/mojo_base/mojom/BigBuffer;JLorg/chromium/blink/mojom/CacheStorageCache$WriteSideData_Response;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheWriteSideDataParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheWriteSideDataParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheWriteSideDataParams;->url:Lorg/chromium/url/mojom/Url;

    iput-object p2, v0, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheWriteSideDataParams;->expectedResponseTime:Lorg/chromium/mojo_base/mojom/Time;

    iput-object p3, v0, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheWriteSideDataParams;->data:Lorg/chromium/mojo_base/mojom/BigBuffer;

    iput-wide p4, v0, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheWriteSideDataParams;->traceId:J

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

    new-instance p2, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheWriteSideDataResponseParamsForwardToCallback;

    invoke-direct {p2, p6}, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheWriteSideDataResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/CacheStorageCache$WriteSideData_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
