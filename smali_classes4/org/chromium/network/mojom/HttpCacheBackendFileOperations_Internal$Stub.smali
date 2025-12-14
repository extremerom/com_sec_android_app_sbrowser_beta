.class final Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/network/mojom/HttpCacheBackendFileOperations;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/network/mojom/HttpCacheBackendFileOperations;)V
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

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsEnumerateFilesParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsEnumerateFilesParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations;

    iget-object v1, p1, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsEnumerateFilesParams;->path:Lorg/chromium/mojo_base/mojom/FilePath;

    iget-object p1, p1, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsEnumerateFilesParams;->receiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-interface {p0, v1, p1}, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations;->enumerateFiles(Lorg/chromium/mojo_base/mojom/FilePath;Lorg/chromium/mojo/bindings/InterfaceRequest;)V

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    sget-object p0, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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

    invoke-static {p1}, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsCleanupDirectoryParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsCleanupDirectoryParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations;

    iget-object p1, p1, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsCleanupDirectoryParams;->path:Lorg/chromium/mojo_base/mojom/FilePath;

    new-instance v4, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsCleanupDirectoryResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsCleanupDirectoryResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations;->cleanupDirectory(Lorg/chromium/mojo_base/mojom/FilePath;Lorg/chromium/network/mojom/HttpCacheBackendFileOperations$CleanupDirectory_Response;)V

    return v3

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsGetFileInfoParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsGetFileInfoParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations;

    iget-object p1, p1, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsGetFileInfoParams;->path:Lorg/chromium/mojo_base/mojom/FilePath;

    new-instance v4, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsGetFileInfoResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsGetFileInfoResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations;->getFileInfo(Lorg/chromium/mojo_base/mojom/FilePath;Lorg/chromium/network/mojom/HttpCacheBackendFileOperations$GetFileInfo_Response;)V

    return v3

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsRenameFileParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsRenameFileParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations;

    iget-object v4, p1, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsRenameFileParams;->fromPath:Lorg/chromium/mojo_base/mojom/FilePath;

    iget-object p1, p1, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsRenameFileParams;->toPath:Lorg/chromium/mojo_base/mojom/FilePath;

    new-instance v5, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsRenameFileResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsRenameFileResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations;->renameFile(Lorg/chromium/mojo_base/mojom/FilePath;Lorg/chromium/mojo_base/mojom/FilePath;Lorg/chromium/network/mojom/HttpCacheBackendFileOperations$RenameFile_Response;)V

    return v3

    :pswitch_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsDeleteFileParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsDeleteFileParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations;

    iget-object v4, p1, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsDeleteFileParams;->path:Lorg/chromium/mojo_base/mojom/FilePath;

    iget p1, p1, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsDeleteFileParams;->mode:I

    new-instance v5, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsDeleteFileResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsDeleteFileResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations;->deleteFile(Lorg/chromium/mojo_base/mojom/FilePath;ILorg/chromium/network/mojom/HttpCacheBackendFileOperations$DeleteFile_Response;)V

    return v3

    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsOpenFileParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsOpenFileParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations;

    iget-object v4, p1, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsOpenFileParams;->path:Lorg/chromium/mojo_base/mojom/FilePath;

    iget p1, p1, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsOpenFileParams;->flags:I

    new-instance v5, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsOpenFileResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsOpenFileResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations;->openFile(Lorg/chromium/mojo_base/mojom/FilePath;ILorg/chromium/network/mojom/HttpCacheBackendFileOperations$OpenFile_Response;)V

    return v3

    :pswitch_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsDirectoryExistsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsDirectoryExistsParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations;

    iget-object p1, p1, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsDirectoryExistsParams;->path:Lorg/chromium/mojo_base/mojom/FilePath;

    new-instance v4, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsDirectoryExistsResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsDirectoryExistsResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations;->directoryExists(Lorg/chromium/mojo_base/mojom/FilePath;Lorg/chromium/network/mojom/HttpCacheBackendFileOperations$DirectoryExists_Response;)V

    return v3

    :pswitch_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsPathExistsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsPathExistsParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations;

    iget-object p1, p1, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsPathExistsParams;->path:Lorg/chromium/mojo_base/mojom/FilePath;

    new-instance v4, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsPathExistsResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsPathExistsResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations;->pathExists(Lorg/chromium/mojo_base/mojom/FilePath;Lorg/chromium/network/mojom/HttpCacheBackendFileOperations$PathExists_Response;)V

    return v3

    :pswitch_8
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsCreateDirectoryParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsCreateDirectoryParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations;

    iget-object p1, p1, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsCreateDirectoryParams;->path:Lorg/chromium/mojo_base/mojom/FilePath;

    new-instance v4, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsCreateDirectoryResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsCreateDirectoryResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations;->createDirectory(Lorg/chromium/mojo_base/mojom/FilePath;Lorg/chromium/network/mojom/HttpCacheBackendFileOperations$CreateDirectory_Response;)V

    return v3

    :pswitch_9
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
