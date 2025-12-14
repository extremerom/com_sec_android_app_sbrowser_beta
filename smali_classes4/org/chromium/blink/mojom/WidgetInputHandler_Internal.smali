.class Lorg/chromium/blink/mojom/WidgetInputHandler_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerUpdateBrowserControlsStateParams;,
        Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerGetFrameWidgetInputHandlerParams;,
        Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerAttachSynchronousCompositorParams;,
        Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerWaitForInputProcessedResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerWaitForInputProcessedResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerWaitForInputProcessedResponseParams;,
        Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerWaitForInputProcessedParams;,
        Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerDispatchNonBlockingEventParams;,
        Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerDispatchEventResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerDispatchEventResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerDispatchEventResponseParams;,
        Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerDispatchEventParams;,
        Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerRequestCompositionUpdatesParams;,
        Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerRequestTextInputStateUpdateParams;,
        Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeFinishComposingTextParams;,
        Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeCommitTextResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeCommitTextResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeCommitTextResponseParams;,
        Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeCommitTextParams;,
        Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeSetCompositionResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeSetCompositionResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeSetCompositionResponseParams;,
        Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeSetCompositionParams;,
        Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerCursorVisibilityChangedParams;,
        Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerSetEditCommandsForNextKeyEventParams;,
        Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerMouseCaptureLostParams;,
        Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerSetFocusParams;,
        Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$Stub;,
        Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/WidgetInputHandler;",
            "Lorg/chromium/blink/mojom/WidgetInputHandler$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
