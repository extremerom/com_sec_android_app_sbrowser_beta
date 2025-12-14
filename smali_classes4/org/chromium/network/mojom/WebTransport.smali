.class public interface abstract Lorg/chromium/network/mojom/WebTransport;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/WebTransport$GetStats_Response;,
        Lorg/chromium/network/mojom/WebTransport$AcceptUnidirectionalStream_Response;,
        Lorg/chromium/network/mojom/WebTransport$AcceptBidirectionalStream_Response;,
        Lorg/chromium/network/mojom/WebTransport$CreateStream_Response;,
        Lorg/chromium/network/mojom/WebTransport$SendDatagram_Response;,
        Lorg/chromium/network/mojom/WebTransport$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/WebTransport;",
            "Lorg/chromium/network/mojom/WebTransport$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/network/mojom/WebTransport_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/network/mojom/WebTransport;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract abortStream(IB)V
.end method

.method public abstract acceptBidirectionalStream(Lorg/chromium/network/mojom/WebTransport$AcceptBidirectionalStream_Response;)V
.end method

.method public abstract acceptUnidirectionalStream(Lorg/chromium/network/mojom/WebTransport$AcceptUnidirectionalStream_Response;)V
.end method

.method public abstract close(Lorg/chromium/network/mojom/WebTransportCloseInfo;)V
.end method

.method public abstract createStream(Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;Lorg/chromium/mojo/system/DataPipe$ProducerHandle;Lorg/chromium/network/mojom/WebTransport$CreateStream_Response;)V
.end method

.method public abstract getStats(Lorg/chromium/network/mojom/WebTransport$GetStats_Response;)V
.end method

.method public abstract sendDatagram(Lorg/chromium/mojo_base/mojom/ReadOnlyBuffer;Lorg/chromium/network/mojom/WebTransport$SendDatagram_Response;)V
.end method

.method public abstract sendFin(I)V
.end method

.method public abstract setOutgoingDatagramExpirationDuration(Lorg/chromium/mojo_base/mojom/TimeDelta;)V
.end method

.method public abstract stopSending(IB)V
.end method
