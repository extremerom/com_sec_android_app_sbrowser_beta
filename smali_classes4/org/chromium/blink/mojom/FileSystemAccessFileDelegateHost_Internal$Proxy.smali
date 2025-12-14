.class final Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal;
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
.method public getLength(Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost$GetLength_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$FileSystemAccessFileDelegateHostGetLengthParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$FileSystemAccessFileDelegateHostGetLengthParams;-><init>()V

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

    const/4 v6, 0x2

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$FileSystemAccessFileDelegateHostGetLengthResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$FileSystemAccessFileDelegateHostGetLengthResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost$GetLength_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public read(JILorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost$Read_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$FileSystemAccessFileDelegateHostReadParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$FileSystemAccessFileDelegateHostReadParams;-><init>()V

    iput-wide p1, v0, Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$FileSystemAccessFileDelegateHostReadParams;->offset:J

    iput p3, v0, Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$FileSystemAccessFileDelegateHostReadParams;->bytesToRead:I

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

    const/4 v3, 0x0

    invoke-direct {p2, v3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$FileSystemAccessFileDelegateHostReadResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$FileSystemAccessFileDelegateHostReadResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost$Read_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public setLength(JLorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost$SetLength_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$FileSystemAccessFileDelegateHostSetLengthParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$FileSystemAccessFileDelegateHostSetLengthParams;-><init>()V

    iput-wide p1, v0, Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$FileSystemAccessFileDelegateHostSetLengthParams;->length:J

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

    new-instance p2, Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$FileSystemAccessFileDelegateHostSetLengthResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$FileSystemAccessFileDelegateHostSetLengthResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost$SetLength_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public write(JLorg/chromium/mojo/system/DataPipe$ConsumerHandle;Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost$Write_Response;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$FileSystemAccessFileDelegateHostWriteParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$FileSystemAccessFileDelegateHostWriteParams;-><init>()V

    iput-wide p1, v0, Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$FileSystemAccessFileDelegateHostWriteParams;->offset:J

    iput-object p3, v0, Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$FileSystemAccessFileDelegateHostWriteParams;->data:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

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

    new-instance p2, Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$FileSystemAccessFileDelegateHostWriteResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$FileSystemAccessFileDelegateHostWriteResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost$Write_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
