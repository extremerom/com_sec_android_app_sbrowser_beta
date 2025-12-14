.class public interface abstract Lorg/chromium/network/mojom/WebSocketHandshakeClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/WebSocketHandshakeClient$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/WebSocketHandshakeClient;",
            "Lorg/chromium/network/mojom/WebSocketHandshakeClient$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/network/mojom/WebSocketHandshakeClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/network/mojom/WebSocketHandshakeClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract onConnectionEstablished(Lorg/chromium/network/mojom/WebSocket;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/network/mojom/WebSocketHandshakeResponse;Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;Lorg/chromium/mojo/system/DataPipe$ProducerHandle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/network/mojom/WebSocket;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/WebSocketClient;",
            ">;",
            "Lorg/chromium/network/mojom/WebSocketHandshakeResponse;",
            "Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;",
            "Lorg/chromium/mojo/system/DataPipe$ProducerHandle;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onFailure(Ljava/lang/String;II)V
.end method

.method public abstract onOpeningHandshakeStarted(Lorg/chromium/network/mojom/WebSocketHandshakeRequest;)V
.end method
