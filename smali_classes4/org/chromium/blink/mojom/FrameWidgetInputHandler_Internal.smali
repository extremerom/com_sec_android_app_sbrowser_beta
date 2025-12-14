.class Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerChangeCaretSizeParams;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerMoveCaretParams;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerWaitForPageScaleAnimationForTestingResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerWaitForPageScaleAnimationForTestingResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerWaitForPageScaleAnimationForTestingResponseParams;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerWaitForPageScaleAnimationForTestingParams;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerScrollFocusedEditableNodeIntoViewParams;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerMoveRangeSelectionExtentParams;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerSelectAroundCaretResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerSelectAroundCaretResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerSelectAroundCaretResponseParams;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerSelectAroundCaretParams;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerAdjustSelectionByCharacterOffsetParams;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerSelectRangeParams;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerReplaceMisspellingParams;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerHandleDirectPasteParams;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerReplaceParams;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerSelectLinkTextParams;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerCollapseSelectionParams;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerSelectAllParams;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerDeleteParams;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerPasteAndMatchStyleParams;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerPasteParams;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerCenterSelectionParams;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerCopyToFindPboardParams;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerCopyParams;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerCutParams;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerRedoParams;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerUndoParams;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerExecuteEditCommandParams;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerHandleStylusWritingGestureActionResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerHandleStylusWritingGestureActionResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerHandleStylusWritingGestureActionResponseParams;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerHandleStylusWritingGestureActionParams;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerSetEditableSelectionOffsetsParams;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerDeleteSurroundingTextInCodePointsParams;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerDeleteSurroundingTextParams;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerExtendSelectionAndReplaceParams;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerExtendSelectionAndDeleteParams;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerSetCompositionFromExistingTextParams;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerClearImeTextSpansByTypeParams;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerAddImeTextSpansToExistingTextParams;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$Stub;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/FrameWidgetInputHandler;",
            "Lorg/chromium/blink/mojom/FrameWidgetInputHandler$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
