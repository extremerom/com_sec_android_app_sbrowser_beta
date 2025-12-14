.class public interface abstract Lorg/chromium/blink/mojom/FrameWidgetHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/FrameWidgetHost$ProcessImageTranslation_Response;,
        Lorg/chromium/blink/mojom/FrameWidgetHost$Proxy;
    }
.end annotation


# virtual methods
.method public abstract animateDoubleTapZoomInMainFrame(Lorg/chromium/gfx/mojom/Point;Lorg/chromium/gfx/mojom/Rect;)V
.end method

.method public abstract autoscrollEnd()V
.end method

.method public abstract autoscrollFling(Lorg/chromium/gfx/mojom/Vector2dF;)V
.end method

.method public abstract autoscrollStart(Lorg/chromium/gfx/mojom/PointF;)V
.end method

.method public abstract cancelImageOrLinkDrag()V
.end method

.method public abstract intrinsicSizingInfoChanged(Lorg/chromium/blink/mojom/IntrinsicSizingInfo;)V
.end method

.method public abstract notifyIGestureHandled(Z)V
.end method

.method public abstract notifyMouseClickSelection(I)V
.end method

.method public abstract notifySelectionNotAllowed()V
.end method

.method public abstract notifyTextFragmentSearchFinished(Z)V
.end method

.method public abstract prepareForImageOrLinkDrag(Lorg/chromium/gfx/mojom/Rect;)V
.end method

.method public abstract processImageTranslation(Lorg/chromium/skia/mojom/BitmapN32;Lorg/chromium/gfx/mojom/Rect;Lorg/chromium/mojo_base/mojom/String16;IZLorg/chromium/blink/mojom/FrameWidgetHost$ProcessImageTranslation_Response;)V
.end method

.method public abstract selectedMarkupWithStartContentRect(Lorg/chromium/mojo_base/mojom/String16;Lorg/chromium/gfx/mojom/Rect;)V
.end method

.method public abstract sendImageBitmapData(Lorg/chromium/skia/mojom/BitmapN32;Lorg/chromium/gfx/mojom/Rect;)V
.end method

.method public abstract setHasTouchEventConsumers(Lorg/chromium/blink/mojom/TouchEventConsumers;)V
.end method

.method public abstract showDisambiguationPopup(Lorg/chromium/gfx/mojom/Rect;Lorg/chromium/gfx/mojom/Size;Lorg/chromium/mojo_base/mojom/WritableSharedMemoryRegion;)V
.end method

.method public abstract zoomToFindInPageRectInMainFrame(Lorg/chromium/gfx/mojom/Rect;)V
.end method
