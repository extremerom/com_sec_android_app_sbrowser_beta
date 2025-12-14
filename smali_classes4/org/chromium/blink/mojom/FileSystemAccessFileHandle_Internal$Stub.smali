.class final Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/blink/mojom/FileSystemAccessFileHandle;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/blink/mojom/FileSystemAccessFileHandle;)V
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

    if-eq v1, v2, :cond_3

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleTransferParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleTransferParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle;

    iget-object p1, p1, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleTransferParams;->token:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle;->transfer(Lorg/chromium/mojo/bindings/InterfaceRequest;)V

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    sget-object p0, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
    .locals 9

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

    :pswitch_0
    return v0

    :pswitch_1
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleGetCloudIdentifiersParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleGetCloudIdentifiersParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle;

    new-instance v2, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleGetCloudIdentifiersResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleGetCloudIdentifiersResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle;->getCloudIdentifiers(Lorg/chromium/blink/mojom/FileSystemAccessFileHandle$GetCloudIdentifiers_Response;)V

    return v3

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleGetUniqueIdParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleGetUniqueIdParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle;

    new-instance v2, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleGetUniqueIdResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleGetUniqueIdResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle;->getUniqueId(Lorg/chromium/blink/mojom/FileSystemAccessFileHandle$GetUniqueId_Response;)V

    return v3

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleIsSameEntryParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleIsSameEntryParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle;

    iget-object p1, p1, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleIsSameEntryParams;->other:Lorg/chromium/blink/mojom/FileSystemAccessTransferToken;

    new-instance v4, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleIsSameEntryResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleIsSameEntryResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle;->isSameEntry(Lorg/chromium/blink/mojom/FileSystemAccessTransferToken;Lorg/chromium/blink/mojom/FileSystemAccessFileHandle$IsSameEntry_Response;)V

    return v3

    :pswitch_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleOpenAccessHandleParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleOpenAccessHandleParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle;

    iget p1, p1, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleOpenAccessHandleParams;->mode:I

    new-instance v4, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleOpenAccessHandleResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleOpenAccessHandleResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle;->openAccessHandle(ILorg/chromium/blink/mojom/FileSystemAccessFileHandle$OpenAccessHandle_Response;)V

    return v3

    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleRemoveParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleRemoveParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle;

    new-instance v2, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleRemoveResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleRemoveResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle;->remove(Lorg/chromium/blink/mojom/FileSystemAccessFileHandle$Remove_Response;)V

    return v3

    :pswitch_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleMoveParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleMoveParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle;

    iget-object v4, p1, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleMoveParams;->destinationDirectory:Lorg/chromium/blink/mojom/FileSystemAccessTransferToken;

    iget-object p1, p1, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleMoveParams;->newEntryName:Ljava/lang/String;

    new-instance v5, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleMoveResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleMoveResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle;->move(Lorg/chromium/blink/mojom/FileSystemAccessTransferToken;Ljava/lang/String;Lorg/chromium/blink/mojom/FileSystemAccessFileHandle$Move_Response;)V

    return v3

    :pswitch_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleRenameParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleRenameParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle;

    iget-object p1, p1, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleRenameParams;->newEntryName:Ljava/lang/String;

    new-instance v4, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleRenameResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleRenameResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle;->rename(Ljava/lang/String;Lorg/chromium/blink/mojom/FileSystemAccessFileHandle$Rename_Response;)V

    return v3

    :pswitch_8
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleCreateFileWriterParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleCreateFileWriterParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle;

    iget-boolean v4, p1, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleCreateFileWriterParams;->keepExistingData:Z

    iget-boolean v5, p1, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleCreateFileWriterParams;->autoClose:Z

    iget p1, p1, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleCreateFileWriterParams;->mode:I

    new-instance v6, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleCreateFileWriterResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v7

    invoke-direct {v6, p0, p2, v7, v8}, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleCreateFileWriterResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, v5, p1, v6}, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle;->createFileWriter(ZZILorg/chromium/blink/mojom/FileSystemAccessFileHandle$CreateFileWriter_Response;)V

    return v3

    :pswitch_9
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleAsBlobParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleAsBlobParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle;

    new-instance v2, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleAsBlobResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleAsBlobResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle;->asBlob(Lorg/chromium/blink/mojom/FileSystemAccessFileHandle$AsBlob_Response;)V

    return v3

    :pswitch_a
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleRequestPermissionParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleRequestPermissionParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleRequestPermissionParams;->writable:Z

    new-instance v4, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleRequestPermissionResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleRequestPermissionResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle;->requestPermission(ZLorg/chromium/blink/mojom/FileSystemAccessFileHandle$RequestPermission_Response;)V

    return v3

    :pswitch_b
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleGetPermissionStatusParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleGetPermissionStatusParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleGetPermissionStatusParams;->writable:Z

    new-instance v4, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleGetPermissionStatusResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal$FileSystemAccessFileHandleGetPermissionStatusResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle;->getPermissionStatus(ZLorg/chromium/blink/mojom/FileSystemAccessFileHandle$GetPermissionStatus_Response;)V

    return v3

    :pswitch_c
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
