.class final Lorg/chromium/blink/mojom/CacheStorageCache_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/CacheStorageCache_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/blink/mojom/CacheStorageCache;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/blink/mojom/CacheStorageCache;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 3

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, p0

    :goto_0
    invoke-virtual {v0, v1}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v1

    if-nez v1, :cond_1

    return p0

    :cond_1
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    return p0

    :cond_2
    sget-object v0, Lorg/chromium/blink/mojom/CacheStorageCache_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {v0, p1}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRunOrClosePipe(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;)Z

    move-result p0
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return p0
.end method

.method public acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 12

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    return v0

    :pswitch_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheWriteSideDataParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheWriteSideDataParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/chromium/blink/mojom/CacheStorageCache;

    iget-object v5, p1, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheWriteSideDataParams;->url:Lorg/chromium/url/mojom/Url;

    iget-object v6, p1, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheWriteSideDataParams;->expectedResponseTime:Lorg/chromium/mojo_base/mojom/Time;

    iget-object v7, p1, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheWriteSideDataParams;->data:Lorg/chromium/mojo_base/mojom/BigBuffer;

    iget-wide v8, p1, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheWriteSideDataParams;->traceId:J

    new-instance v10, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheWriteSideDataResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v1

    invoke-direct {v10, p0, p2, v1, v2}, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheWriteSideDataResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v4 .. v10}, Lorg/chromium/blink/mojom/CacheStorageCache;->writeSideData(Lorg/chromium/url/mojom/Url;Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/mojo_base/mojom/BigBuffer;JLorg/chromium/blink/mojom/CacheStorageCache$WriteSideData_Response;)V

    return v3

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheBatchParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheBatchParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/CacheStorageCache;

    iget-object v4, p1, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheBatchParams;->batchOperations:[Lorg/chromium/blink/mojom/BatchOperation;

    iget-wide v5, p1, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheBatchParams;->traceId:J

    new-instance p1, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheBatchResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v7

    invoke-direct {p1, p0, p2, v7, v8}, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheBatchResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, v5, v6, p1}, Lorg/chromium/blink/mojom/CacheStorageCache;->batch([Lorg/chromium/blink/mojom/BatchOperation;JLorg/chromium/blink/mojom/CacheStorageCache$Batch_Response;)V

    return v3

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheKeysParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheKeysParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/chromium/blink/mojom/CacheStorageCache;

    iget-object v5, p1, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheKeysParams;->request:Lorg/chromium/blink/mojom/FetchApiRequest;

    iget-object v6, p1, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheKeysParams;->queryOptions:Lorg/chromium/blink/mojom/CacheQueryOptions;

    iget-wide v7, p1, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheKeysParams;->traceId:J

    new-instance v9, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheKeysResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v1

    invoke-direct {v9, p0, p2, v1, v2}, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheKeysResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v4 .. v9}, Lorg/chromium/blink/mojom/CacheStorageCache;->keys(Lorg/chromium/blink/mojom/FetchApiRequest;Lorg/chromium/blink/mojom/CacheQueryOptions;JLorg/chromium/blink/mojom/CacheStorageCache$Keys_Response;)V

    return v3

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheGetAllMatchedEntriesParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheGetAllMatchedEntriesParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/chromium/blink/mojom/CacheStorageCache;

    iget-object v5, p1, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheGetAllMatchedEntriesParams;->request:Lorg/chromium/blink/mojom/FetchApiRequest;

    iget-object v6, p1, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheGetAllMatchedEntriesParams;->queryOptions:Lorg/chromium/blink/mojom/CacheQueryOptions;

    iget-wide v7, p1, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheGetAllMatchedEntriesParams;->traceId:J

    new-instance v9, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheGetAllMatchedEntriesResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v1

    invoke-direct {v9, p0, p2, v1, v2}, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheGetAllMatchedEntriesResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v4 .. v9}, Lorg/chromium/blink/mojom/CacheStorageCache;->getAllMatchedEntries(Lorg/chromium/blink/mojom/FetchApiRequest;Lorg/chromium/blink/mojom/CacheQueryOptions;JLorg/chromium/blink/mojom/CacheStorageCache$GetAllMatchedEntries_Response;)V

    return v3

    :pswitch_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheMatchAllParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheMatchAllParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/chromium/blink/mojom/CacheStorageCache;

    iget-object v5, p1, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheMatchAllParams;->request:Lorg/chromium/blink/mojom/FetchApiRequest;

    iget-object v6, p1, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheMatchAllParams;->queryOptions:Lorg/chromium/blink/mojom/CacheQueryOptions;

    iget-wide v7, p1, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheMatchAllParams;->traceId:J

    new-instance v9, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheMatchAllResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v1

    invoke-direct {v9, p0, p2, v1, v2}, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheMatchAllResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v4 .. v9}, Lorg/chromium/blink/mojom/CacheStorageCache;->matchAll(Lorg/chromium/blink/mojom/FetchApiRequest;Lorg/chromium/blink/mojom/CacheQueryOptions;JLorg/chromium/blink/mojom/CacheStorageCache$MatchAll_Response;)V

    return v3

    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheMatchParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheMatchParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/chromium/blink/mojom/CacheStorageCache;

    iget-object v5, p1, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheMatchParams;->request:Lorg/chromium/blink/mojom/FetchApiRequest;

    iget-object v6, p1, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheMatchParams;->queryOptions:Lorg/chromium/blink/mojom/CacheQueryOptions;

    iget-boolean v7, p1, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheMatchParams;->inRelatedFetchEvent:Z

    iget-boolean v8, p1, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheMatchParams;->inRangeFetchEvent:Z

    iget-wide v9, p1, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheMatchParams;->traceId:J

    new-instance v11, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheMatchResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v1

    invoke-direct {v11, p0, p2, v1, v2}, Lorg/chromium/blink/mojom/CacheStorageCache_Internal$CacheStorageCacheMatchResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v4 .. v11}, Lorg/chromium/blink/mojom/CacheStorageCache;->match(Lorg/chromium/blink/mojom/FetchApiRequest;Lorg/chromium/blink/mojom/CacheQueryOptions;ZZJLorg/chromium/blink/mojom/CacheStorageCache$Match_Response;)V

    return v3

    :pswitch_6
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/blink/mojom/CacheStorageCache_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {p0, v1, p1, p2}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    move-result p0
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_1
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
