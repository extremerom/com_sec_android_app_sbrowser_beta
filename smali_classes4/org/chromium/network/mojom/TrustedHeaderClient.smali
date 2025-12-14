.class public interface abstract Lorg/chromium/network/mojom/TrustedHeaderClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/TrustedHeaderClient$OnHeadersReceived_Response;,
        Lorg/chromium/network/mojom/TrustedHeaderClient$OnBeforeSendHeaders_Response;,
        Lorg/chromium/network/mojom/TrustedHeaderClient$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/TrustedHeaderClient;",
            "Lorg/chromium/network/mojom/TrustedHeaderClient$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/network/mojom/TrustedHeaderClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/network/mojom/TrustedHeaderClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract onBeforeSendHeaders(Lorg/chromium/network/mojom/HttpRequestHeaders;Lorg/chromium/network/mojom/TrustedHeaderClient$OnBeforeSendHeaders_Response;)V
.end method

.method public abstract onHeadersReceived(Ljava/lang/String;Lorg/chromium/network/mojom/IpEndPoint;Lorg/chromium/network/mojom/TrustedHeaderClient$OnHeadersReceived_Response;)V
.end method
