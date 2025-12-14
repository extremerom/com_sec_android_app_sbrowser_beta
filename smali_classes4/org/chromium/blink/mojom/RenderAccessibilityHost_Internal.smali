.class Lorg/chromium/blink/mojom/RenderAccessibilityHost_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/RenderAccessibilityHost_Internal$RenderAccessibilityHostHandleAxLocationChangesParams;,
        Lorg/chromium/blink/mojom/RenderAccessibilityHost_Internal$RenderAccessibilityHostHandleAxEventsResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/RenderAccessibilityHost_Internal$RenderAccessibilityHostHandleAxEventsResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/RenderAccessibilityHost_Internal$RenderAccessibilityHostHandleAxEventsResponseParams;,
        Lorg/chromium/blink/mojom/RenderAccessibilityHost_Internal$RenderAccessibilityHostHandleAxEventsParams;,
        Lorg/chromium/blink/mojom/RenderAccessibilityHost_Internal$Stub;,
        Lorg/chromium/blink/mojom/RenderAccessibilityHost_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/RenderAccessibilityHost;",
            "Lorg/chromium/blink/mojom/RenderAccessibilityHost$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/RenderAccessibilityHost_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/RenderAccessibilityHost_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/RenderAccessibilityHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
