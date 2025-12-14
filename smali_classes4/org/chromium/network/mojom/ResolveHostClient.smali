.class public interface abstract Lorg/chromium/network/mojom/ResolveHostClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/ResolveHostClient$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/ResolveHostClient;",
            "Lorg/chromium/network/mojom/ResolveHostClient$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/network/mojom/ResolveHostClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/network/mojom/ResolveHostClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract onComplete(ILorg/chromium/network/mojom/ResolveErrorInfo;Lorg/chromium/network/mojom/AddressList;[Lorg/chromium/network/mojom/HostResolverEndpointResult;)V
.end method

.method public abstract onHostnameResults([Lorg/chromium/network/mojom/HostPortPair;)V
.end method

.method public abstract onTextResults([Ljava/lang/String;)V
.end method
