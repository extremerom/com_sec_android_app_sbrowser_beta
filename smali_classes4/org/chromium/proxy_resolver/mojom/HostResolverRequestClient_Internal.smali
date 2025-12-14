.class Lorg/chromium/proxy_resolver/mojom/HostResolverRequestClient_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/proxy_resolver/mojom/HostResolverRequestClient_Internal$HostResolverRequestClientReportResultParams;,
        Lorg/chromium/proxy_resolver/mojom/HostResolverRequestClient_Internal$Stub;,
        Lorg/chromium/proxy_resolver/mojom/HostResolverRequestClient_Internal$Proxy;
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

    new-instance v0, Lorg/chromium/proxy_resolver/mojom/HostResolverRequestClient_Internal$1;

    invoke-direct {v0}, Lorg/chromium/proxy_resolver/mojom/HostResolverRequestClient_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/proxy_resolver/mojom/HostResolverRequestClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
