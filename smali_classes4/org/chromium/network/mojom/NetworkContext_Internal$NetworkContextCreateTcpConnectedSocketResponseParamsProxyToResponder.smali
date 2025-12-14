.class Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpConnectedSocketResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/network/mojom/NetworkContext$CreateTcpConnectedSocket_Response;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/NetworkContext_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkContextCreateTcpConnectedSocketResponseParamsProxyToResponder"
.end annotation


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpConnectedSocketResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    iput-object p2, p0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpConnectedSocketResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    iput-wide p3, p0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpConnectedSocketResponseParamsProxyToResponder;->mRequestId:J

    return-void
.end method


# virtual methods
.method public call(ILorg/chromium/network/mojom/IpEndPoint;Lorg/chromium/network/mojom/IpEndPoint;Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;Lorg/chromium/mojo/system/DataPipe$ProducerHandle;)V
    .locals 2

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpConnectedSocketResponseParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpConnectedSocketResponseParams;-><init>()V

    iput p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpConnectedSocketResponseParams;->result:I

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpConnectedSocketResponseParams;->localAddr:Lorg/chromium/network/mojom/IpEndPoint;

    iput-object p3, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpConnectedSocketResponseParams;->peerAddr:Lorg/chromium/network/mojom/IpEndPoint;

    iput-object p4, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpConnectedSocketResponseParams;->receiveStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    iput-object p5, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpConnectedSocketResponseParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    iget-object p1, p0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpConnectedSocketResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x2

    iget-wide p4, p0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpConnectedSocketResponseParamsProxyToResponder;->mRequestId:J

    const/16 v1, 0x2b

    invoke-direct {p2, v1, p3, p4, p5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p1, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpConnectedSocketResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {p0, p1}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
