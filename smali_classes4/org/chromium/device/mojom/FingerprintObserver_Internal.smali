.class Lorg/chromium/device/mojom/FingerprintObserver_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/mojom/FingerprintObserver_Internal$FingerprintObserverOnSessionFailedParams;,
        Lorg/chromium/device/mojom/FingerprintObserver_Internal$FingerprintObserverOnAuthScanDoneParams;,
        Lorg/chromium/device/mojom/FingerprintObserver_Internal$FingerprintObserverOnEnrollScanDoneParams;,
        Lorg/chromium/device/mojom/FingerprintObserver_Internal$FingerprintObserverOnStatusChangedParams;,
        Lorg/chromium/device/mojom/FingerprintObserver_Internal$FingerprintObserverOnRestartedParams;,
        Lorg/chromium/device/mojom/FingerprintObserver_Internal$Stub;,
        Lorg/chromium/device/mojom/FingerprintObserver_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/device/mojom/FingerprintObserver;",
            "Lorg/chromium/device/mojom/FingerprintObserver$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/device/mojom/FingerprintObserver_Internal$1;

    invoke-direct {v0}, Lorg/chromium/device/mojom/FingerprintObserver_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/device/mojom/FingerprintObserver_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
