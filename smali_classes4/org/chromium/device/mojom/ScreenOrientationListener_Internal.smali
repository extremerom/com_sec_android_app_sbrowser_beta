.class Lorg/chromium/device/mojom/ScreenOrientationListener_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/mojom/ScreenOrientationListener_Internal$ScreenOrientationListenerIsAutoRotateEnabledByUserResponseParamsProxyToResponder;,
        Lorg/chromium/device/mojom/ScreenOrientationListener_Internal$ScreenOrientationListenerIsAutoRotateEnabledByUserResponseParamsForwardToCallback;,
        Lorg/chromium/device/mojom/ScreenOrientationListener_Internal$ScreenOrientationListenerIsAutoRotateEnabledByUserResponseParams;,
        Lorg/chromium/device/mojom/ScreenOrientationListener_Internal$ScreenOrientationListenerIsAutoRotateEnabledByUserParams;,
        Lorg/chromium/device/mojom/ScreenOrientationListener_Internal$Stub;,
        Lorg/chromium/device/mojom/ScreenOrientationListener_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/device/mojom/ScreenOrientationListener;",
            "Lorg/chromium/device/mojom/ScreenOrientationListener$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/device/mojom/ScreenOrientationListener_Internal$1;

    invoke-direct {v0}, Lorg/chromium/device/mojom/ScreenOrientationListener_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/device/mojom/ScreenOrientationListener_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
