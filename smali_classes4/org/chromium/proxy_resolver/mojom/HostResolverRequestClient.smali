.class public interface abstract Lorg/chromium/proxy_resolver/mojom/HostResolverRequestClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/proxy_resolver/mojom/HostResolverRequestClient$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/proxy_resolver/mojom/HostResolverRequestClient;",
            "Lorg/chromium/proxy_resolver/mojom/HostResolverRequestClient$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/proxy_resolver/mojom/HostResolverRequestClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/proxy_resolver/mojom/HostResolverRequestClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract reportResult(I[Lorg/chromium/network/mojom/IpAddress;)V
.end method
