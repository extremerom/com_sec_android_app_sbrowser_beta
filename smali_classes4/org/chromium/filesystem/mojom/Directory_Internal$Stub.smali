.class final Lorg/chromium/filesystem/mojom/Directory_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/filesystem/mojom/Directory_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/filesystem/mojom/Directory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/filesystem/mojom/Directory;)V
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

    const/16 v2, 0xb

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryCloneParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryCloneParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/filesystem/mojom/Directory;

    iget-object p1, p1, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryCloneParams;->directory:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-interface {p0, p1}, Lorg/chromium/filesystem/mojom/Directory;->clone(Lorg/chromium/mojo/bindings/InterfaceRequest;)V

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    sget-object p0, Lorg/chromium/filesystem/mojom/Directory_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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

    invoke-static {p1}, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryWriteFileParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryWriteFileParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/filesystem/mojom/Directory;

    iget-object v4, p1, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryWriteFileParams;->path:Ljava/lang/String;

    iget-object p1, p1, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryWriteFileParams;->data:[B

    new-instance v5, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryWriteFileResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryWriteFileResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/filesystem/mojom/Directory;->writeFile(Ljava/lang/String;[BLorg/chromium/filesystem/mojom/Directory$WriteFile_Response;)V

    return v3

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryReadEntireFileParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryReadEntireFileParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/filesystem/mojom/Directory;

    iget-object p1, p1, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryReadEntireFileParams;->path:Ljava/lang/String;

    new-instance v4, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryReadEntireFileResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryReadEntireFileResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/filesystem/mojom/Directory;->readEntireFile(Ljava/lang/String;Lorg/chromium/filesystem/mojom/Directory$ReadEntireFile_Response;)V

    return v3

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryStatFileParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryStatFileParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/filesystem/mojom/Directory;

    iget-object p1, p1, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryStatFileParams;->path:Ljava/lang/String;

    new-instance v4, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryStatFileResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryStatFileResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/filesystem/mojom/Directory;->statFile(Ljava/lang/String;Lorg/chromium/filesystem/mojom/Directory$StatFile_Response;)V

    return v3

    :pswitch_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryFlushParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryFlushParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/filesystem/mojom/Directory;

    new-instance v2, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryFlushResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryFlushResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/filesystem/mojom/Directory;->flush(Lorg/chromium/filesystem/mojom/Directory$Flush_Response;)V

    return v3

    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryIsWritableParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryIsWritableParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/filesystem/mojom/Directory;

    iget-object p1, p1, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryIsWritableParams;->path:Ljava/lang/String;

    new-instance v4, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryIsWritableResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryIsWritableResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/filesystem/mojom/Directory;->isWritable(Ljava/lang/String;Lorg/chromium/filesystem/mojom/Directory$IsWritable_Response;)V

    return v3

    :pswitch_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryExistsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryExistsParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/filesystem/mojom/Directory;

    iget-object p1, p1, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryExistsParams;->path:Ljava/lang/String;

    new-instance v4, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryExistsResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryExistsResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/filesystem/mojom/Directory;->exists(Ljava/lang/String;Lorg/chromium/filesystem/mojom/Directory$Exists_Response;)V

    return v3

    :pswitch_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryDeleteParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryDeleteParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/filesystem/mojom/Directory;

    iget-object v4, p1, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryDeleteParams;->path:Ljava/lang/String;

    iget p1, p1, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryDeleteParams;->deleteFlags:I

    new-instance v5, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryDeleteResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryDeleteResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/filesystem/mojom/Directory;->delete(Ljava/lang/String;ILorg/chromium/filesystem/mojom/Directory$Delete_Response;)V

    return v3

    :pswitch_8
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryReplaceParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryReplaceParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/filesystem/mojom/Directory;

    iget-object v4, p1, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryReplaceParams;->path:Ljava/lang/String;

    iget-object p1, p1, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryReplaceParams;->newPath:Ljava/lang/String;

    new-instance v5, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryReplaceResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryReplaceResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/filesystem/mojom/Directory;->replace(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/filesystem/mojom/Directory$Replace_Response;)V

    return v3

    :pswitch_9
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryRenameParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryRenameParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/filesystem/mojom/Directory;

    iget-object v4, p1, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryRenameParams;->path:Ljava/lang/String;

    iget-object p1, p1, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryRenameParams;->newPath:Ljava/lang/String;

    new-instance v5, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryRenameResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryRenameResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/filesystem/mojom/Directory;->rename(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/filesystem/mojom/Directory$Rename_Response;)V

    return v3

    :pswitch_a
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryOpenDirectoryParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryOpenDirectoryParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/filesystem/mojom/Directory;

    iget-object v4, p1, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryOpenDirectoryParams;->path:Ljava/lang/String;

    iget-object v5, p1, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryOpenDirectoryParams;->directory:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget p1, p1, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryOpenDirectoryParams;->openFlags:I

    new-instance v6, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryOpenDirectoryResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v7

    invoke-direct {v6, p0, p2, v7, v8}, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryOpenDirectoryResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, v5, p1, v6}, Lorg/chromium/filesystem/mojom/Directory;->openDirectory(Ljava/lang/String;Lorg/chromium/mojo/bindings/InterfaceRequest;ILorg/chromium/filesystem/mojom/Directory$OpenDirectory_Response;)V

    return v3

    :pswitch_b
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryOpenFileHandlesParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryOpenFileHandlesParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/filesystem/mojom/Directory;

    iget-object p1, p1, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryOpenFileHandlesParams;->files:[Lorg/chromium/filesystem/mojom/FileOpenDetails;

    new-instance v4, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryOpenFileHandlesResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryOpenFileHandlesResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/filesystem/mojom/Directory;->openFileHandles([Lorg/chromium/filesystem/mojom/FileOpenDetails;Lorg/chromium/filesystem/mojom/Directory$OpenFileHandles_Response;)V

    return v3

    :pswitch_c
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryOpenFileHandleParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryOpenFileHandleParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/filesystem/mojom/Directory;

    iget-object v4, p1, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryOpenFileHandleParams;->path:Ljava/lang/String;

    iget p1, p1, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryOpenFileHandleParams;->openFlags:I

    new-instance v5, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryOpenFileHandleResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryOpenFileHandleResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/filesystem/mojom/Directory;->openFileHandle(Ljava/lang/String;ILorg/chromium/filesystem/mojom/Directory$OpenFileHandle_Response;)V

    return v3

    :pswitch_d
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryReadParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryReadParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/filesystem/mojom/Directory;

    new-instance v2, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryReadResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/filesystem/mojom/Directory_Internal$DirectoryReadResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/filesystem/mojom/Directory;->read(Lorg/chromium/filesystem/mojom/Directory$Read_Response;)V

    return v3

    :pswitch_e
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/filesystem/mojom/Directory_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
        :pswitch_e
        :pswitch_d
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
