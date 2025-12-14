.class Lorg/chromium/network/mojom/P2pSocketManager_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;,
        Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerGetHostAddressWithFamilyResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerGetHostAddressWithFamilyResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerGetHostAddressWithFamilyResponseParams;,
        Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerGetHostAddressWithFamilyParams;,
        Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerGetHostAddressResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerGetHostAddressResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerGetHostAddressResponseParams;,
        Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerGetHostAddressParams;,
        Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerStartNetworkNotificationsParams;,
        Lorg/chromium/network/mojom/P2pSocketManager_Internal$Stub;,
        Lorg/chromium/network/mojom/P2pSocketManager_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/P2pSocketManager;",
            "Lorg/chromium/network/mojom/P2pSocketManager$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/P2pSocketManager_Internal$1;

    invoke-direct {v0}, Lorg/chromium/network/mojom/P2pSocketManager_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/network/mojom/P2pSocketManager_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
