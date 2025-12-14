.class final Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/network/mojom/SimpleCacheEntry$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/SimpleCacheEntry_Internal;
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
.method public close(Lorg/chromium/network/mojom/SimpleCacheEntry$Close_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryCloseParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryCloseParams;-><init>()V

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

    const/4 v6, 0x4

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryCloseResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryCloseResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/SimpleCacheEntry$Close_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public readData(IIILorg/chromium/network/mojom/SimpleCacheEntry$ReadData_Response;)V
    .locals 3

    new-instance v0, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryReadDataParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryReadDataParams;-><init>()V

    iput p1, v0, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryReadDataParams;->index:I

    iput p2, v0, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryReadDataParams;->offset:I

    iput p3, v0, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryReadDataParams;->length:I

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

    invoke-direct {p2, p3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryReadDataResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryReadDataResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/SimpleCacheEntry$ReadData_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public readSparseData(IILorg/chromium/network/mojom/SimpleCacheEntry$ReadSparseData_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryReadSparseDataParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryReadSparseDataParams;-><init>()V

    iput p1, v0, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryReadSparseDataParams;->offset:I

    iput p2, v0, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryReadSparseDataParams;->length:I

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

    new-instance p2, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryReadSparseDataResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryReadSparseDataResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/SimpleCacheEntry$ReadSparseData_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public writeData(II[BZLorg/chromium/network/mojom/SimpleCacheEntry$WriteData_Response;)V
    .locals 3

    new-instance v0, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryWriteDataParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryWriteDataParams;-><init>()V

    iput p1, v0, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryWriteDataParams;->index:I

    iput p2, v0, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryWriteDataParams;->offset:I

    iput-object p3, v0, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryWriteDataParams;->data:[B

    iput-boolean p4, v0, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryWriteDataParams;->truncate:Z

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

    const/4 p4, 0x0

    invoke-direct {p2, p4, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryWriteDataResponseParamsForwardToCallback;

    invoke-direct {p2, p5}, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryWriteDataResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/SimpleCacheEntry$WriteData_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public writeSparseData(I[BLorg/chromium/network/mojom/SimpleCacheEntry$WriteSparseData_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryWriteSparseDataParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryWriteSparseDataParams;-><init>()V

    iput p1, v0, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryWriteSparseDataParams;->offset:I

    iput-object p2, v0, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryWriteSparseDataParams;->data:[B

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

    new-instance p2, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryWriteSparseDataResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/network/mojom/SimpleCacheEntry_Internal$SimpleCacheEntryWriteSparseDataResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/SimpleCacheEntry$WriteSparseData_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
