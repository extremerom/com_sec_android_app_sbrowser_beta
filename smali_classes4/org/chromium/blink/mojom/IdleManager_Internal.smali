.class Lorg/chromium/blink/mojom/IdleManager_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/IdleManager_Internal$IdleManagerAddMonitorResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/IdleManager_Internal$IdleManagerAddMonitorResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/IdleManager_Internal$IdleManagerAddMonitorResponseParams;,
        Lorg/chromium/blink/mojom/IdleManager_Internal$IdleManagerAddMonitorParams;,
        Lorg/chromium/blink/mojom/IdleManager_Internal$Stub;,
        Lorg/chromium/blink/mojom/IdleManager_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/IdleManager;",
            "Lorg/chromium/blink/mojom/IdleManager$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/IdleManager_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/IdleManager_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/IdleManager_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
