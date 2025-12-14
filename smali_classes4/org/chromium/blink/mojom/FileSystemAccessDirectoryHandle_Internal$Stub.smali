.class final Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle;)V
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

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    invoke-virtual {v1, v3}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v3

    if-nez v3, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v1

    const/4 v3, -0x2

    if-eq v1, v3, :cond_4

    const/4 v3, 0x1

    if-eq v1, v2, :cond_3

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleTransferParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleTransferParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle;

    iget-object p1, p1, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleTransferParams;->token:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle;->transfer(Lorg/chromium/mojo/bindings/InterfaceRequest;)V

    return v3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetEntriesParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetEntriesParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle;

    iget-object p1, p1, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetEntriesParams;->listener:Lorg/chromium/blink/mojom/FileSystemAccessDirectoryEntriesListener;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle;->getEntries(Lorg/chromium/blink/mojom/FileSystemAccessDirectoryEntriesListener;)V

    return v3

    :cond_4
    sget-object p0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
    .locals 8

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

    invoke-static {p1}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetCloudIdentifiersParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetCloudIdentifiersParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle;

    new-instance v2, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetCloudIdentifiersResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetCloudIdentifiersResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle;->getCloudIdentifiers(Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$GetCloudIdentifiers_Response;)V

    return v3

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetUniqueIdParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetUniqueIdParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle;

    new-instance v2, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetUniqueIdResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetUniqueIdResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle;->getUniqueId(Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$GetUniqueId_Response;)V

    return v3

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleResolveParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleResolveParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle;

    iget-object p1, p1, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleResolveParams;->possibleChild:Lorg/chromium/blink/mojom/FileSystemAccessTransferToken;

    new-instance v4, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleResolveResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleResolveResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle;->resolve(Lorg/chromium/blink/mojom/FileSystemAccessTransferToken;Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$Resolve_Response;)V

    return v3

    :pswitch_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRemoveEntryParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRemoveEntryParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle;

    iget-object v4, p1, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRemoveEntryParams;->basename:Ljava/lang/String;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRemoveEntryParams;->recurse:Z

    new-instance v5, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRemoveEntryResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRemoveEntryResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle;->removeEntry(Ljava/lang/String;ZLorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$RemoveEntry_Response;)V

    return v3

    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRemoveParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRemoveParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRemoveParams;->recurse:Z

    new-instance v4, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRemoveResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRemoveResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle;->remove(ZLorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$Remove_Response;)V

    return v3

    :pswitch_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleMoveParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleMoveParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle;

    iget-object v4, p1, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleMoveParams;->destinationDirectory:Lorg/chromium/blink/mojom/FileSystemAccessTransferToken;

    iget-object p1, p1, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleMoveParams;->newEntryName:Ljava/lang/String;

    new-instance v5, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleMoveResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleMoveResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle;->move(Lorg/chromium/blink/mojom/FileSystemAccessTransferToken;Ljava/lang/String;Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$Move_Response;)V

    return v3

    :pswitch_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRenameParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRenameParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle;

    iget-object p1, p1, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRenameParams;->newEntryName:Ljava/lang/String;

    new-instance v4, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRenameResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRenameResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle;->rename(Ljava/lang/String;Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$Rename_Response;)V

    return v3

    :pswitch_8
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetDirectoryParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetDirectoryParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle;

    iget-object v4, p1, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetDirectoryParams;->basename:Ljava/lang/String;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetDirectoryParams;->create:Z

    new-instance v5, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetDirectoryResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetDirectoryResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle;->getDirectory(Ljava/lang/String;ZLorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$GetDirectory_Response;)V

    return v3

    :pswitch_9
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetFileParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetFileParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle;

    iget-object v4, p1, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetFileParams;->basename:Ljava/lang/String;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetFileParams;->create:Z

    new-instance v5, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetFileResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetFileResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle;->getFile(Ljava/lang/String;ZLorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$GetFile_Response;)V

    return v3

    :pswitch_a
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRequestPermissionParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRequestPermissionParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRequestPermissionParams;->writable:Z

    new-instance v4, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRequestPermissionResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRequestPermissionResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle;->requestPermission(ZLorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$RequestPermission_Response;)V

    return v3

    :pswitch_b
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetPermissionStatusParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetPermissionStatusParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetPermissionStatusParams;->writable:Z

    new-instance v4, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetPermissionStatusResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetPermissionStatusResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle;->getPermissionStatus(ZLorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$GetPermissionStatus_Response;)V

    return v3

    :pswitch_c
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
        :pswitch_0
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
