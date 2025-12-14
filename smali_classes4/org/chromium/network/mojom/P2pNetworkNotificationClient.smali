.class public interface abstract Lorg/chromium/network/mojom/P2pNetworkNotificationClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/P2pNetworkNotificationClient$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/P2pNetworkNotificationClient;",
            "Lorg/chromium/network/mojom/P2pNetworkNotificationClient$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/network/mojom/P2pNetworkNotificationClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/network/mojom/P2pNetworkNotificationClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract networkListChanged([Lorg/chromium/network/mojom/NetworkInterface;Lorg/chromium/network/mojom/IpAddress;Lorg/chromium/network/mojom/IpAddress;)V
.end method
