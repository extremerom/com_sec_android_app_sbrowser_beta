.class public interface abstract Lorg/chromium/network/mojom/WebSocketAuthenticationHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/WebSocketAuthenticationHandler$OnAuthRequired_Response;,
        Lorg/chromium/network/mojom/WebSocketAuthenticationHandler$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/WebSocketAuthenticationHandler;",
            "Lorg/chromium/network/mojom/WebSocketAuthenticationHandler$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/network/mojom/WebSocketAuthenticationHandler_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/network/mojom/WebSocketAuthenticationHandler;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract onAuthRequired(Lorg/chromium/network/mojom/AuthChallengeInfo;Lorg/chromium/network/mojom/HttpResponseHeaders;Lorg/chromium/network/mojom/IpEndPoint;Lorg/chromium/network/mojom/WebSocketAuthenticationHandler$OnAuthRequired_Response;)V
.end method
