.class final Lorg/chromium/blink/mojom/FileSystemManager_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/FileSystemManager$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/FileSystemManager_Internal;
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
.method public copy(Lorg/chromium/url/mojom/Url;Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/FileSystemManager$Copy_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerCopyParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerCopyParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerCopyParams;->srcPath:Lorg/chromium/url/mojom/Url;

    iput-object p2, v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerCopyParams;->destPath:Lorg/chromium/url/mojom/Url;

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

    new-instance p2, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerCopyResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerCopyResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/FileSystemManager$Copy_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public create(Lorg/chromium/url/mojom/Url;ZZZLorg/chromium/blink/mojom/FileSystemManager$Create_Response;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerCreateParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerCreateParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerCreateParams;->path:Lorg/chromium/url/mojom/Url;

    iput-boolean p2, v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerCreateParams;->exclusive:Z

    iput-boolean p3, v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerCreateParams;->isDirectory:Z

    iput-boolean p4, v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerCreateParams;->recursive:Z

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

    const/4 p4, 0x6

    invoke-direct {p2, p4, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerCreateResponseParamsForwardToCallback;

    invoke-direct {p2, p5}, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerCreateResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/FileSystemManager$Create_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public createSnapshotFile(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/FileSystemManager$CreateSnapshotFile_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerCreateSnapshotFileParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerCreateSnapshotFileParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerCreateSnapshotFileParams;->filePath:Lorg/chromium/url/mojom/Url;

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

    const/16 v5, 0xe

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerCreateSnapshotFileResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerCreateSnapshotFileResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/FileSystemManager$CreateSnapshotFile_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public exists(Lorg/chromium/url/mojom/Url;ZLorg/chromium/blink/mojom/FileSystemManager$Exists_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerExistsParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerExistsParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerExistsParams;->path:Lorg/chromium/url/mojom/Url;

    iput-boolean p2, v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerExistsParams;->isDirectory:Z

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

    const/4 v4, 0x7

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerExistsResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerExistsResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/FileSystemManager$Exists_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getPlatformPath(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/FileSystemManager$GetPlatformPath_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerGetPlatformPathParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerGetPlatformPathParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerGetPlatformPathParams;->filePath:Lorg/chromium/url/mojom/Url;

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

    const/16 v5, 0xf

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerGetPlatformPathResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerGetPlatformPathResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/FileSystemManager$GetPlatformPath_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public move(Lorg/chromium/url/mojom/Url;Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/FileSystemManager$Move_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerMoveParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerMoveParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerMoveParams;->srcPath:Lorg/chromium/url/mojom/Url;

    iput-object p2, v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerMoveParams;->destPath:Lorg/chromium/url/mojom/Url;

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

    new-instance p2, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerMoveResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerMoveResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/FileSystemManager$Move_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public open(Lorg/chromium/url/internal/mojom/Origin;ILorg/chromium/blink/mojom/FileSystemManager$Open_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerOpenParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerOpenParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerOpenParams;->origin:Lorg/chromium/url/internal/mojom/Origin;

    iput p2, v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerOpenParams;->fileSystemType:I

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

    const/4 v4, 0x0

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerOpenResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerOpenResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/FileSystemManager$Open_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public readDirectory(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/FileSystemOperationListener;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerReadDirectoryParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerReadDirectoryParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerReadDirectoryParams;->path:Lorg/chromium/url/mojom/Url;

    iput-object p2, v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerReadDirectoryParams;->listener:Lorg/chromium/blink/mojom/FileSystemOperationListener;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0x8

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public readDirectorySync(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/FileSystemManager$ReadDirectorySync_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerReadDirectorySyncParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerReadDirectorySyncParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerReadDirectorySyncParams;->path:Lorg/chromium/url/mojom/Url;

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

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerReadDirectorySyncResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerReadDirectorySyncResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/FileSystemManager$ReadDirectorySync_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public readMetadata(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/FileSystemManager$ReadMetadata_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerReadMetadataParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerReadMetadataParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerReadMetadataParams;->path:Lorg/chromium/url/mojom/Url;

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

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerReadMetadataResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerReadMetadataResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/FileSystemManager$ReadMetadata_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public registerBlob(Ljava/lang/String;Lorg/chromium/url/mojom/Url;JLorg/chromium/mojo_base/mojom/Time;Lorg/chromium/blink/mojom/FileSystemManager$RegisterBlob_Response;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerRegisterBlobParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerRegisterBlobParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerRegisterBlobParams;->contentType:Ljava/lang/String;

    iput-object p2, v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerRegisterBlobParams;->url:Lorg/chromium/url/mojom/Url;

    iput-wide p3, v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerRegisterBlobParams;->length:J

    iput-object p5, v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerRegisterBlobParams;->expectedModificationTime:Lorg/chromium/mojo_base/mojom/Time;

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

    const/16 v1, 0x10

    invoke-direct {p2, v1, p3, p4, p5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerRegisterBlobResponseParamsForwardToCallback;

    invoke-direct {p2, p6}, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerRegisterBlobResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/FileSystemManager$RegisterBlob_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public remove(Lorg/chromium/url/mojom/Url;ZLorg/chromium/blink/mojom/FileSystemManager$Remove_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerRemoveParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerRemoveParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerRemoveParams;->path:Lorg/chromium/url/mojom/Url;

    iput-boolean p2, v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerRemoveParams;->recursive:Z

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

    const/4 v4, 0x4

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerRemoveResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerRemoveResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/FileSystemManager$Remove_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public resolveUrl(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/FileSystemManager$ResolveUrl_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerResolveUrlParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerResolveUrlParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerResolveUrlParams;->filesystemUrl:Lorg/chromium/url/mojom/Url;

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

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerResolveUrlResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerResolveUrlResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/FileSystemManager$ResolveUrl_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public truncate(Lorg/chromium/url/mojom/Url;JLorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/blink/mojom/FileSystemManager$Truncate_Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/url/mojom/Url;",
            "J",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/FileSystemCancellableOperation;",
            ">;",
            "Lorg/chromium/blink/mojom/FileSystemManager$Truncate_Response;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerTruncateParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerTruncateParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerTruncateParams;->filePath:Lorg/chromium/url/mojom/Url;

    iput-wide p2, v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerTruncateParams;->length:J

    iput-object p4, v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerTruncateParams;->opReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

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

    const/16 p4, 0xc

    invoke-direct {p2, p4, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerTruncateResponseParamsForwardToCallback;

    invoke-direct {p2, p5}, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerTruncateResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/FileSystemManager$Truncate_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public truncateSync(Lorg/chromium/url/mojom/Url;JLorg/chromium/blink/mojom/FileSystemManager$TruncateSync_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerTruncateSyncParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerTruncateSyncParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerTruncateSyncParams;->filePath:Lorg/chromium/url/mojom/Url;

    iput-wide p2, v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerTruncateSyncParams;->length:J

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

    const/16 v3, 0xd

    invoke-direct {p2, v3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerTruncateSyncResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerTruncateSyncResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/FileSystemManager$TruncateSync_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public write(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/Blob;JLorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/blink/mojom/FileSystemOperationListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/url/mojom/Url;",
            "Lorg/chromium/blink/mojom/Blob;",
            "J",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/FileSystemCancellableOperation;",
            ">;",
            "Lorg/chromium/blink/mojom/FileSystemOperationListener;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerWriteParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerWriteParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerWriteParams;->filePath:Lorg/chromium/url/mojom/Url;

    iput-object p2, v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerWriteParams;->blob:Lorg/chromium/blink/mojom/Blob;

    iput-wide p3, v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerWriteParams;->position:J

    iput-object p5, v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerWriteParams;->opReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iput-object p6, v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerWriteParams;->listener:Lorg/chromium/blink/mojom/FileSystemOperationListener;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 p3, 0xa

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public writeSync(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/Blob;JLorg/chromium/blink/mojom/FileSystemManager$WriteSync_Response;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerWriteSyncParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerWriteSyncParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerWriteSyncParams;->filePath:Lorg/chromium/url/mojom/Url;

    iput-object p2, v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerWriteSyncParams;->blob:Lorg/chromium/blink/mojom/Blob;

    iput-wide p3, v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerWriteSyncParams;->position:J

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

    const/16 p4, 0xb

    invoke-direct {p2, p4, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerWriteSyncResponseParamsForwardToCallback;

    invoke-direct {p2, p5}, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerWriteSyncResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/FileSystemManager$WriteSync_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
