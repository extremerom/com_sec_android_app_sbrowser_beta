.class final Lorg/chromium/blink/mojom/StorageArea_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/StorageArea_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/blink/mojom/StorageArea;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/blink/mojom/StorageArea;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const/4 v3, 0x6

    if-eq v1, v3, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaCheckpointParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaCheckpointParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/StorageArea;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/StorageArea;->checkpoint()V

    return v2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaAddObserverParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaAddObserverParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/StorageArea;

    iget-object p1, p1, Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaAddObserverParams;->observer:Lorg/chromium/blink/mojom/StorageAreaObserver;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/StorageArea;->addObserver(Lorg/chromium/blink/mojom/StorageAreaObserver;)V

    return v2

    :cond_4
    sget-object p0, Lorg/chromium/blink/mojom/StorageArea_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {p0, p1}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRunOrClosePipe(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;)Z

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

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    invoke-virtual {v1, v3}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v3

    if-nez v3, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_7

    if-eq v3, v5, :cond_6

    const/4 v6, 0x2

    if-eq v3, v6, :cond_5

    const/4 v6, 0x3

    if-eq v3, v6, :cond_4

    if-eq v3, v2, :cond_3

    if-eq v3, v4, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaGetAllParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaGetAllParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/StorageArea;

    iget-object p1, p1, Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaGetAllParams;->newObserver:Lorg/chromium/blink/mojom/StorageAreaObserver;

    new-instance v3, Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaGetAllResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v3, p0, p2, v6, v7}, Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaGetAllResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v3}, Lorg/chromium/blink/mojom/StorageArea;->getAll(Lorg/chromium/blink/mojom/StorageAreaObserver;Lorg/chromium/blink/mojom/StorageArea$GetAll_Response;)V

    return v5

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaGetParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaGetParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/StorageArea;

    iget-object p1, p1, Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaGetParams;->key:[B

    new-instance v3, Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaGetResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v3, p0, p2, v6, v7}, Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaGetResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v3}, Lorg/chromium/blink/mojom/StorageArea;->get([BLorg/chromium/blink/mojom/StorageArea$Get_Response;)V

    return v5

    :cond_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaDeleteAllParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaDeleteAllParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/StorageArea;

    iget-object v3, p1, Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaDeleteAllParams;->source:Ljava/lang/String;

    iget-object p1, p1, Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaDeleteAllParams;->newObserver:Lorg/chromium/blink/mojom/StorageAreaObserver;

    new-instance v4, Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaDeleteAllResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v4, p0, p2, v6, v7}, Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaDeleteAllResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v3, p1, v4}, Lorg/chromium/blink/mojom/StorageArea;->deleteAll(Ljava/lang/String;Lorg/chromium/blink/mojom/StorageAreaObserver;Lorg/chromium/blink/mojom/StorageArea$DeleteAll_Response;)V

    return v5

    :cond_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaDeleteParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaDeleteParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/StorageArea;

    iget-object v3, p1, Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaDeleteParams;->key:[B

    iget-object v4, p1, Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaDeleteParams;->clientOldValue:[B

    iget-object p1, p1, Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaDeleteParams;->source:Ljava/lang/String;

    new-instance v6, Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaDeleteResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v7

    invoke-direct {v6, p0, p2, v7, v8}, Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaDeleteResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v3, v4, p1, v6}, Lorg/chromium/blink/mojom/StorageArea;->delete([B[BLjava/lang/String;Lorg/chromium/blink/mojom/StorageArea$Delete_Response;)V

    return v5

    :cond_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaPutParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaPutParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lorg/chromium/blink/mojom/StorageArea;

    iget-object v7, p1, Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaPutParams;->key:[B

    iget-object v8, p1, Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaPutParams;->value:[B

    iget-object v9, p1, Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaPutParams;->clientOldValue:[B

    iget-object v10, p1, Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaPutParams;->source:Ljava/lang/String;

    new-instance v11, Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaPutResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v1

    invoke-direct {v11, p0, p2, v1, v2}, Lorg/chromium/blink/mojom/StorageArea_Internal$StorageAreaPutResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v6 .. v11}, Lorg/chromium/blink/mojom/StorageArea;->put([B[B[BLjava/lang/String;Lorg/chromium/blink/mojom/StorageArea$Put_Response;)V

    return v5

    :cond_7
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/blink/mojom/StorageArea_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
