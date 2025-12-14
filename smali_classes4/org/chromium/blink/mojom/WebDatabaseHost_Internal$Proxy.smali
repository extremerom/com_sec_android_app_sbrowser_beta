.class final Lorg/chromium/blink/mojom/WebDatabaseHost_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/WebDatabaseHost$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/WebDatabaseHost_Internal;
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
.method public closed(Lorg/chromium/url/internal/mojom/Origin;Lorg/chromium/mojo_base/mojom/String16;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/WebDatabaseHost_Internal$WebDatabaseHostClosedParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/WebDatabaseHost_Internal$WebDatabaseHostClosedParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/WebDatabaseHost_Internal$WebDatabaseHostClosedParams;->origin:Lorg/chromium/url/internal/mojom/Origin;

    iput-object p2, v0, Lorg/chromium/blink/mojom/WebDatabaseHost_Internal$WebDatabaseHostClosedParams;->databaseName:Lorg/chromium/mojo_base/mojom/String16;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x6

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public deleteFile(Lorg/chromium/mojo_base/mojom/String16;ZLorg/chromium/blink/mojom/WebDatabaseHost$DeleteFile_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/WebDatabaseHost_Internal$WebDatabaseHostDeleteFileParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/WebDatabaseHost_Internal$WebDatabaseHostDeleteFileParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/WebDatabaseHost_Internal$WebDatabaseHostDeleteFileParams;->vfsFileName:Lorg/chromium/mojo_base/mojom/String16;

    iput-boolean p2, v0, Lorg/chromium/blink/mojom/WebDatabaseHost_Internal$WebDatabaseHostDeleteFileParams;->syncDir:Z

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

    invoke-direct {p2, v1, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/WebDatabaseHost_Internal$WebDatabaseHostDeleteFileResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/WebDatabaseHost_Internal$WebDatabaseHostDeleteFileResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/WebDatabaseHost$DeleteFile_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getFileAttributes(Lorg/chromium/mojo_base/mojom/String16;Lorg/chromium/blink/mojom/WebDatabaseHost$GetFileAttributes_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/WebDatabaseHost_Internal$WebDatabaseHostGetFileAttributesParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/WebDatabaseHost_Internal$WebDatabaseHostGetFileAttributesParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/WebDatabaseHost_Internal$WebDatabaseHostGetFileAttributesParams;->vfsFileName:Lorg/chromium/mojo_base/mojom/String16;

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

    const/4 v5, 0x2

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/WebDatabaseHost_Internal$WebDatabaseHostGetFileAttributesResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/WebDatabaseHost_Internal$WebDatabaseHostGetFileAttributesResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/WebDatabaseHost$GetFileAttributes_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getSpaceAvailable(Lorg/chromium/url/internal/mojom/Origin;Lorg/chromium/blink/mojom/WebDatabaseHost$GetSpaceAvailable_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/WebDatabaseHost_Internal$WebDatabaseHostGetSpaceAvailableParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/WebDatabaseHost_Internal$WebDatabaseHostGetSpaceAvailableParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/WebDatabaseHost_Internal$WebDatabaseHostGetSpaceAvailableParams;->origin:Lorg/chromium/url/internal/mojom/Origin;

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

    const/4 v5, 0x3

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/WebDatabaseHost_Internal$WebDatabaseHostGetSpaceAvailableResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/WebDatabaseHost_Internal$WebDatabaseHostGetSpaceAvailableResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/WebDatabaseHost$GetSpaceAvailable_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public handleSqliteError(Lorg/chromium/url/internal/mojom/Origin;Lorg/chromium/mojo_base/mojom/String16;I)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/WebDatabaseHost_Internal$WebDatabaseHostHandleSqliteErrorParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/WebDatabaseHost_Internal$WebDatabaseHostHandleSqliteErrorParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/WebDatabaseHost_Internal$WebDatabaseHostHandleSqliteErrorParams;->origin:Lorg/chromium/url/internal/mojom/Origin;

    iput-object p2, v0, Lorg/chromium/blink/mojom/WebDatabaseHost_Internal$WebDatabaseHostHandleSqliteErrorParams;->databaseName:Lorg/chromium/mojo_base/mojom/String16;

    iput p3, v0, Lorg/chromium/blink/mojom/WebDatabaseHost_Internal$WebDatabaseHostHandleSqliteErrorParams;->error:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x7

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public modified(Lorg/chromium/url/internal/mojom/Origin;Lorg/chromium/mojo_base/mojom/String16;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/WebDatabaseHost_Internal$WebDatabaseHostModifiedParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/WebDatabaseHost_Internal$WebDatabaseHostModifiedParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/WebDatabaseHost_Internal$WebDatabaseHostModifiedParams;->origin:Lorg/chromium/url/internal/mojom/Origin;

    iput-object p2, v0, Lorg/chromium/blink/mojom/WebDatabaseHost_Internal$WebDatabaseHostModifiedParams;->databaseName:Lorg/chromium/mojo_base/mojom/String16;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x5

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public openFile(Lorg/chromium/mojo_base/mojom/String16;ILorg/chromium/blink/mojom/WebDatabaseHost$OpenFile_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/WebDatabaseHost_Internal$WebDatabaseHostOpenFileParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/WebDatabaseHost_Internal$WebDatabaseHostOpenFileParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/WebDatabaseHost_Internal$WebDatabaseHostOpenFileParams;->vfsFileName:Lorg/chromium/mojo_base/mojom/String16;

    iput p2, v0, Lorg/chromium/blink/mojom/WebDatabaseHost_Internal$WebDatabaseHostOpenFileParams;->desiredFlags:I

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

    new-instance p2, Lorg/chromium/blink/mojom/WebDatabaseHost_Internal$WebDatabaseHostOpenFileResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/WebDatabaseHost_Internal$WebDatabaseHostOpenFileResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/WebDatabaseHost$OpenFile_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public opened(Lorg/chromium/url/internal/mojom/Origin;Lorg/chromium/mojo_base/mojom/String16;Lorg/chromium/mojo_base/mojom/String16;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/WebDatabaseHost_Internal$WebDatabaseHostOpenedParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/WebDatabaseHost_Internal$WebDatabaseHostOpenedParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/WebDatabaseHost_Internal$WebDatabaseHostOpenedParams;->origin:Lorg/chromium/url/internal/mojom/Origin;

    iput-object p2, v0, Lorg/chromium/blink/mojom/WebDatabaseHost_Internal$WebDatabaseHostOpenedParams;->databaseName:Lorg/chromium/mojo_base/mojom/String16;

    iput-object p3, v0, Lorg/chromium/blink/mojom/WebDatabaseHost_Internal$WebDatabaseHostOpenedParams;->databaseDescription:Lorg/chromium/mojo_base/mojom/String16;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x4

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
