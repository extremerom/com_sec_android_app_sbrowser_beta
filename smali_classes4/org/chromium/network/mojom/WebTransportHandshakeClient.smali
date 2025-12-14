.class public interface abstract Lorg/chromium/network/mojom/WebTransportHandshakeClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/WebTransportHandshakeClient$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/WebTransportHandshakeClient;",
            "Lorg/chromium/network/mojom/WebTransportHandshakeClient$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/network/mojom/WebTransportHandshakeClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/network/mojom/WebTransportHandshakeClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract onConnectionEstablished(Lorg/chromium/network/mojom/WebTransport;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/network/mojom/HttpResponseHeaders;Lorg/chromium/network/mojom/WebTransportStats;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/network/mojom/WebTransport;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/WebTransportClient;",
            ">;",
            "Lorg/chromium/network/mojom/HttpResponseHeaders;",
            "Lorg/chromium/network/mojom/WebTransportStats;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onHandshakeFailed(Lorg/chromium/network/mojom/WebTransportError;)V
.end method
