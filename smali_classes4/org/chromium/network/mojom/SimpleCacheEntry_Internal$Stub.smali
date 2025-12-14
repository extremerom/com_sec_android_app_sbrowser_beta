.class final Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/SimpleCacheEntry_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/network/mojom/SimpleCacheEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/network/mojom/SimpleCacheEntry;)V
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
    sget-object v0, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
    .locals 11

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

    invoke-static {p1}, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryCloseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryCloseParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/network/mojom/SimpleCacheEntry;

    new-instance v2, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryCloseResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v2, p0, p2, v5, v6}, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryCloseResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/network/mojom/SimpleCacheEntry;->close(Lorg/chromium/network/mojom/SimpleCacheEntry$Close_Response;)V

    return v4

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryReadSparseDataParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryReadSparseDataParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/SimpleCacheEntry;

    iget v3, p1, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryReadSparseDataParams;->offset:I

    iget p1, p1, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryReadSparseDataParams;->length:I

    new-instance v5, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryReadSparseDataResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryReadSparseDataResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v3, p1, v5}, Lorg/chromium/network/mojom/SimpleCacheEntry;->readSparseData(IILorg/chromium/network/mojom/SimpleCacheEntry$ReadSparseData_Response;)V

    return v4

    :cond_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryWriteSparseDataParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryWriteSparseDataParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/SimpleCacheEntry;

    iget v3, p1, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryWriteSparseDataParams;->offset:I

    iget-object p1, p1, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryWriteSparseDataParams;->data:[B

    new-instance v5, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryWriteSparseDataResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryWriteSparseDataResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v3, p1, v5}, Lorg/chromium/network/mojom/SimpleCacheEntry;->writeSparseData(I[BLorg/chromium/network/mojom/SimpleCacheEntry$WriteSparseData_Response;)V

    return v4

    :cond_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryReadDataParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryReadDataParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/SimpleCacheEntry;

    iget v3, p1, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryReadDataParams;->index:I

    iget v5, p1, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryReadDataParams;->offset:I

    iget p1, p1, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryReadDataParams;->length:I

    new-instance v6, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryReadDataResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v7

    invoke-direct {v6, p0, p2, v7, v8}, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryReadDataResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v3, v5, p1, v6}, Lorg/chromium/network/mojom/SimpleCacheEntry;->readData(IIILorg/chromium/network/mojom/SimpleCacheEntry$ReadData_Response;)V

    return v4

    :cond_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryWriteDataParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryWriteDataParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lorg/chromium/network/mojom/SimpleCacheEntry;

    iget v6, p1, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryWriteDataParams;->index:I

    iget v7, p1, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryWriteDataParams;->offset:I

    iget-object v8, p1, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryWriteDataParams;->data:[B

    iget-boolean v9, p1, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryWriteDataParams;->truncate:Z

    new-instance v10, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryWriteDataResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v1

    invoke-direct {v10, p0, p2, v1, v2}, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryWriteDataResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v5 .. v10}, Lorg/chromium/network/mojom/SimpleCacheEntry;->writeData(II[BZLorg/chromium/network/mojom/SimpleCacheEntry$WriteData_Response;)V

    return v4

    :cond_7
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
