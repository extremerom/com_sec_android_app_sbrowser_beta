.class Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpBoundSocketResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/network/mojom/NetworkContext$CreateTcpBoundSocket_Response;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/NetworkContext_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkContextCreateTcpBoundSocketResponseParamsProxyToResponder"
.end annotation


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpBoundSocketResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    iput-object p2, p0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpBoundSocketResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    iput-wide p3, p0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpBoundSocketResponseParamsProxyToResponder;->mRequestId:J

    return-void
.end method


# virtual methods
.method public call(ILorg/chromium/network/mojom/IpEndPoint;)V
    .locals 5

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpBoundSocketResponseParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpBoundSocketResponseParams;-><init>()V

    iput p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpBoundSocketResponseParams;->result:I

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpBoundSocketResponseParams;->localAddr:Lorg/chromium/network/mojom/IpEndPoint;

    iget-object p1, p0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpBoundSocketResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x2

    iget-wide v2, p0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpBoundSocketResponseParamsProxyToResponder;->mRequestId:J

    const/16 v4, 0x2c

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p1, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpBoundSocketResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {p0, p1}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
