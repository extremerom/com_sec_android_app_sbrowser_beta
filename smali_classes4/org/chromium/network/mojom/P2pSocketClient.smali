.class public interface abstract Lorg/chromium/network/mojom/P2pSocketClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/P2pSocketClient$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/P2pSocketClient;",
            "Lorg/chromium/network/mojom/P2pSocketClient$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/network/mojom/P2pSocketClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/network/mojom/P2pSocketClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract dataReceived([Lorg/chromium/network/mojom/P2pReceivedPacket;)V
.end method

.method public abstract sendBatchComplete([Lorg/chromium/network/mojom/P2pSendPacketMetrics;)V
.end method

.method public abstract sendComplete(Lorg/chromium/network/mojom/P2pSendPacketMetrics;)V
.end method

.method public abstract socketCreated(Lorg/chromium/network/mojom/IpEndPoint;Lorg/chromium/network/mojom/IpEndPoint;)V
.end method
