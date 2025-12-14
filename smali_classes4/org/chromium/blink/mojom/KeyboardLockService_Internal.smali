.class Lorg/chromium/blink/mojom/KeyboardLockService_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/KeyboardLockService_Internal$KeyboardLockServiceGetKeyboardLayoutMapResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/KeyboardLockService_Internal$KeyboardLockServiceGetKeyboardLayoutMapResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/KeyboardLockService_Internal$KeyboardLockServiceGetKeyboardLayoutMapResponseParams;,
        Lorg/chromium/blink/mojom/KeyboardLockService_Internal$KeyboardLockServiceGetKeyboardLayoutMapParams;,
        Lorg/chromium/blink/mojom/KeyboardLockService_Internal$KeyboardLockServiceCancelKeyboardLockParams;,
        Lorg/chromium/blink/mojom/KeyboardLockService_Internal$KeyboardLockServiceRequestKeyboardLockResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/KeyboardLockService_Internal$KeyboardLockServiceRequestKeyboardLockResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/KeyboardLockService_Internal$KeyboardLockServiceRequestKeyboardLockResponseParams;,
        Lorg/chromium/blink/mojom/KeyboardLockService_Internal$KeyboardLockServiceRequestKeyboardLockParams;,
        Lorg/chromium/blink/mojom/KeyboardLockService_Internal$Stub;,
        Lorg/chromium/blink/mojom/KeyboardLockService_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/KeyboardLockService;",
            "Lorg/chromium/blink/mojom/KeyboardLockService$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/KeyboardLockService_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/KeyboardLockService_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/KeyboardLockService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
