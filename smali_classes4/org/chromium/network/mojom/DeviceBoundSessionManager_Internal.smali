.class Lorg/chromium/network/mojom/DeviceBoundSessionManager_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/DeviceBoundSessionManager_Internal$DeviceBoundSessionManagerAddObserverParams;,
        Lorg/chromium/network/mojom/DeviceBoundSessionManager_Internal$DeviceBoundSessionManagerDeleteAllSessionsResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/DeviceBoundSessionManager_Internal$DeviceBoundSessionManagerDeleteAllSessionsResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/DeviceBoundSessionManager_Internal$DeviceBoundSessionManagerDeleteAllSessionsResponseParams;,
        Lorg/chromium/network/mojom/DeviceBoundSessionManager_Internal$DeviceBoundSessionManagerDeleteAllSessionsParams;,
        Lorg/chromium/network/mojom/DeviceBoundSessionManager_Internal$DeviceBoundSessionManagerDeleteSessionParams;,
        Lorg/chromium/network/mojom/DeviceBoundSessionManager_Internal$DeviceBoundSessionManagerGetAllSessionsResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/DeviceBoundSessionManager_Internal$DeviceBoundSessionManagerGetAllSessionsResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/DeviceBoundSessionManager_Internal$DeviceBoundSessionManagerGetAllSessionsResponseParams;,
        Lorg/chromium/network/mojom/DeviceBoundSessionManager_Internal$DeviceBoundSessionManagerGetAllSessionsParams;,
        Lorg/chromium/network/mojom/DeviceBoundSessionManager_Internal$Stub;,
        Lorg/chromium/network/mojom/DeviceBoundSessionManager_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/DeviceBoundSessionManager;",
            "Lorg/chromium/network/mojom/DeviceBoundSessionManager$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/DeviceBoundSessionManager_Internal$1;

    invoke-direct {v0}, Lorg/chromium/network/mojom/DeviceBoundSessionManager_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/network/mojom/DeviceBoundSessionManager_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
