.class final Lorg/chromium/blink/mojom/CacheStorage_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/CacheStorage_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/blink/mojom/CacheStorage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/blink/mojom/CacheStorage;)V
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
    sget-object v0, Lorg/chromium/blink/mojom/CacheStorage_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
    .locals 13

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {v1, v3}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v3

    if-nez v3, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_7

    if-eqz v3, :cond_6

    if-eq v3, v4, :cond_5

    const/4 v5, 0x2

    if-eq v3, v5, :cond_4

    const/4 v5, 0x3

    if-eq v3, v5, :cond_3

    if-eq v3, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageOpenParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageOpenParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/CacheStorage;

    iget-object v3, p1, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageOpenParams;->cacheName:Lorg/chromium/mojo_base/mojom/String16;

    iget-wide v5, p1, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageOpenParams;->traceId:J

    new-instance p1, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageOpenResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v7

    invoke-direct {p1, p0, p2, v7, v8}, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageOpenResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v3, v5, v6, p1}, Lorg/chromium/blink/mojom/CacheStorage;->open(Lorg/chromium/mojo_base/mojom/String16;JLorg/chromium/blink/mojom/CacheStorage$Open_Response;)V

    return v4

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageMatchParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageMatchParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lorg/chromium/blink/mojom/CacheStorage;

    iget-object v6, p1, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageMatchParams;->request:Lorg/chromium/blink/mojom/FetchApiRequest;

    iget-object v7, p1, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageMatchParams;->matchOptions:Lorg/chromium/blink/mojom/MultiCacheQueryOptions;

    iget-boolean v8, p1, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageMatchParams;->inRelatedFetchEvent:Z

    iget-boolean v9, p1, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageMatchParams;->inRangeFetchEvent:Z

    iget-wide v10, p1, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageMatchParams;->traceId:J

    new-instance v12, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageMatchResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v1

    invoke-direct {v12, p0, p2, v1, v2}, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageMatchResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v5 .. v12}, Lorg/chromium/blink/mojom/CacheStorage;->match(Lorg/chromium/blink/mojom/FetchApiRequest;Lorg/chromium/blink/mojom/MultiCacheQueryOptions;ZZJLorg/chromium/blink/mojom/CacheStorage$Match_Response;)V

    return v4

    :cond_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageKeysParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageKeysParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/CacheStorage;

    iget-wide v5, p1, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageKeysParams;->traceId:J

    new-instance p1, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageKeysResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v7

    invoke-direct {p1, p0, p2, v7, v8}, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageKeysResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v5, v6, p1}, Lorg/chromium/blink/mojom/CacheStorage;->keys(JLorg/chromium/blink/mojom/CacheStorage$Keys_Response;)V

    return v4

    :cond_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageDeleteParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageDeleteParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/CacheStorage;

    iget-object v3, p1, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageDeleteParams;->cacheName:Lorg/chromium/mojo_base/mojom/String16;

    iget-wide v5, p1, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageDeleteParams;->traceId:J

    new-instance p1, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageDeleteResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v7

    invoke-direct {p1, p0, p2, v7, v8}, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageDeleteResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v3, v5, v6, p1}, Lorg/chromium/blink/mojom/CacheStorage;->delete(Lorg/chromium/mojo_base/mojom/String16;JLorg/chromium/blink/mojom/CacheStorage$Delete_Response;)V

    return v4

    :cond_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageHasParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageHasParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/CacheStorage;

    iget-object v3, p1, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageHasParams;->cacheName:Lorg/chromium/mojo_base/mojom/String16;

    iget-wide v5, p1, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageHasParams;->traceId:J

    new-instance p1, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageHasResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v7

    invoke-direct {p1, p0, p2, v7, v8}, Lorg/chromium/blink/mojom/CacheStorage_Internal$CacheStorageHasResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v3, v5, v6, p1}, Lorg/chromium/blink/mojom/CacheStorage;->has(Lorg/chromium/mojo_base/mojom/String16;JLorg/chromium/blink/mojom/CacheStorage$Has_Response;)V

    return v4

    :cond_7
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/blink/mojom/CacheStorage_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
.end method
