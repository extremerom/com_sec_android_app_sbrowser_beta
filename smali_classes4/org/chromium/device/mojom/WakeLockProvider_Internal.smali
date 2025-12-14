.class Lorg/chromium/device/mojom/WakeLockProvider_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/mojom/WakeLockProvider_Internal$WakeLockProviderGetActiveWakeLocksForTestsResponseParamsProxyToResponder;,
        Lorg/chromium/device/mojom/WakeLockProvider_Internal$WakeLockProviderGetActiveWakeLocksForTestsResponseParamsForwardToCallback;,
        Lorg/chromium/device/mojom/WakeLockProvider_Internal$WakeLockProviderGetActiveWakeLocksForTestsResponseParams;,
        Lorg/chromium/device/mojom/WakeLockProvider_Internal$WakeLockProviderGetActiveWakeLocksForTestsParams;,
        Lorg/chromium/device/mojom/WakeLockProvider_Internal$WakeLockProviderNotifyOnWakeLockDeactivationParams;,
        Lorg/chromium/device/mojom/WakeLockProvider_Internal$WakeLockProviderGetWakeLockWithoutContextParams;,
        Lorg/chromium/device/mojom/WakeLockProvider_Internal$WakeLockProviderGetWakeLockContextForIdParams;,
        Lorg/chromium/device/mojom/WakeLockProvider_Internal$Stub;,
        Lorg/chromium/device/mojom/WakeLockProvider_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/device/mojom/WakeLockProvider;",
            "Lorg/chromium/device/mojom/WakeLockProvider$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/device/mojom/WakeLockProvider_Internal$1;

    invoke-direct {v0}, Lorg/chromium/device/mojom/WakeLockProvider_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/device/mojom/WakeLockProvider_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
