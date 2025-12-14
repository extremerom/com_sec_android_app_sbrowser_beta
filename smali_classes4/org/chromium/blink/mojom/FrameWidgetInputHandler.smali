.class public interface abstract Lorg/chromium/blink/mojom/FrameWidgetInputHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler$WaitForPageScaleAnimationForTesting_Response;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler$SelectAroundCaret_Response;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler$HandleStylusWritingGestureAction_Response;,
        Lorg/chromium/blink/mojom/FrameWidgetInputHandler$Proxy;
    }
.end annotation


# virtual methods
.method public abstract addImeTextSpansToExistingText(II[Lorg/chromium/ui/mojom/ImeTextSpan;)V
.end method

.method public abstract adjustSelectionByCharacterOffset(III)V
.end method

.method public abstract centerSelection()V
.end method

.method public abstract changeCaretSize(Z)V
.end method

.method public abstract clearImeTextSpansByType(III)V
.end method

.method public abstract collapseSelection()V
.end method

.method public abstract copy()V
.end method

.method public abstract copyToFindPboard()V
.end method

.method public abstract cut()V
.end method

.method public abstract delete()V
.end method

.method public abstract deleteSurroundingText(II)V
.end method

.method public abstract deleteSurroundingTextInCodePoints(II)V
.end method

.method public abstract executeEditCommand(Ljava/lang/String;Lorg/chromium/mojo_base/mojom/String16;)V
.end method

.method public abstract extendSelectionAndDelete(II)V
.end method

.method public abstract extendSelectionAndReplace(IILorg/chromium/mojo_base/mojom/String16;)V
.end method

.method public abstract handleDirectPaste(Lorg/chromium/mojo_base/mojom/String16;Lorg/chromium/mojo_base/mojom/String16;)V
.end method

.method public abstract handleStylusWritingGestureAction(Lorg/chromium/blink/mojom/StylusWritingGestureData;Lorg/chromium/blink/mojom/FrameWidgetInputHandler$HandleStylusWritingGestureAction_Response;)V
.end method

.method public abstract moveCaret(Lorg/chromium/gfx/mojom/Point;)V
.end method

.method public abstract moveRangeSelectionExtent(Lorg/chromium/gfx/mojom/Point;)V
.end method

.method public abstract paste()V
.end method

.method public abstract pasteAndMatchStyle()V
.end method

.method public abstract redo()V
.end method

.method public abstract replace(Lorg/chromium/mojo_base/mojom/String16;)V
.end method

.method public abstract replaceMisspelling(Lorg/chromium/mojo_base/mojom/String16;)V
.end method

.method public abstract scrollFocusedEditableNodeIntoView()V
.end method

.method public abstract selectAll()V
.end method

.method public abstract selectAroundCaret(IZZLorg/chromium/blink/mojom/FrameWidgetInputHandler$SelectAroundCaret_Response;)V
.end method

.method public abstract selectLinkText()V
.end method

.method public abstract selectRange(Lorg/chromium/gfx/mojom/Point;Lorg/chromium/gfx/mojom/Point;Z)V
.end method

.method public abstract setCompositionFromExistingText(II[Lorg/chromium/ui/mojom/ImeTextSpan;)V
.end method

.method public abstract setEditableSelectionOffsets(II)V
.end method

.method public abstract undo()V
.end method

.method public abstract waitForPageScaleAnimationForTesting(Lorg/chromium/blink/mojom/FrameWidgetInputHandler$WaitForPageScaleAnimationForTesting_Response;)V
.end method
