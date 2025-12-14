.class final Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal;
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
.method public getCloudIdentifiers(Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$GetCloudIdentifiers_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetCloudIdentifiersParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetCloudIdentifiersParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/16 v6, 0xc

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetCloudIdentifiersResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetCloudIdentifiersResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$GetCloudIdentifiers_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getDirectory(Ljava/lang/String;ZLorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$GetDirectory_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetDirectoryParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetDirectoryParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetDirectoryParams;->basename:Ljava/lang/String;

    iput-boolean p2, v0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetDirectoryParams;->create:Z

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

    const/4 v4, 0x3

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetDirectoryResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetDirectoryResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$GetDirectory_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getEntries(Lorg/chromium/blink/mojom/FileSystemAccessDirectoryEntriesListener;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetEntriesParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetEntriesParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetEntriesParams;->listener:Lorg/chromium/blink/mojom/FileSystemAccessDirectoryEntriesListener;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public getFile(Ljava/lang/String;ZLorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$GetFile_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetFileParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetFileParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetFileParams;->basename:Ljava/lang/String;

    iput-boolean p2, v0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetFileParams;->create:Z

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

    const/4 v4, 0x2

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetFileResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetFileResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$GetFile_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getPermissionStatus(ZLorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$GetPermissionStatus_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetPermissionStatusParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetPermissionStatusParams;-><init>()V

    iput-boolean p1, v0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetPermissionStatusParams;->writable:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetPermissionStatusResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetPermissionStatusResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$GetPermissionStatus_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getUniqueId(Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$GetUniqueId_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetUniqueIdParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetUniqueIdParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/16 v6, 0xb

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetUniqueIdResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleGetUniqueIdResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$GetUniqueId_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public move(Lorg/chromium/blink/mojom/FileSystemAccessTransferToken;Ljava/lang/String;Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$Move_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleMoveParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleMoveParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleMoveParams;->destinationDirectory:Lorg/chromium/blink/mojom/FileSystemAccessTransferToken;

    iput-object p2, v0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleMoveParams;->newEntryName:Ljava/lang/String;

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

    const/4 v4, 0x6

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleMoveResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleMoveResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$Move_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public remove(ZLorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$Remove_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRemoveParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRemoveParams;-><init>()V

    iput-boolean p1, v0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRemoveParams;->recurse:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x7

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRemoveResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRemoveResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$Remove_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public removeEntry(Ljava/lang/String;ZLorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$RemoveEntry_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRemoveEntryParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRemoveEntryParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRemoveEntryParams;->basename:Ljava/lang/String;

    iput-boolean p2, v0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRemoveEntryParams;->recurse:Z

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

    const/16 v4, 0x8

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRemoveEntryResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRemoveEntryResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$RemoveEntry_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public rename(Ljava/lang/String;Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$Rename_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRenameParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRenameParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRenameParams;->newEntryName:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x5

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRenameResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRenameResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$Rename_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public requestPermission(ZLorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$RequestPermission_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRequestPermissionParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRequestPermissionParams;-><init>()V

    iput-boolean p1, v0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRequestPermissionParams;->writable:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    invoke-direct {v1, v2, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRequestPermissionResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleRequestPermissionResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$RequestPermission_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public resolve(Lorg/chromium/blink/mojom/FileSystemAccessTransferToken;Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$Resolve_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleResolveParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleResolveParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleResolveParams;->possibleChild:Lorg/chromium/blink/mojom/FileSystemAccessTransferToken;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/16 v5, 0x9

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleResolveResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleResolveResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$Resolve_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public transfer(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/FileSystemAccessTransferToken;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleTransferParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleTransferParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal$FileSystemAccessDirectoryHandleTransferParams;->token:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
