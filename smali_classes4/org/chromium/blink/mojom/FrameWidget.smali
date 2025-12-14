.class public interface abstract Lorg/chromium/blink/mojom/FrameWidget;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/FrameWidget$HasPointerEventListenerOnCanvas_Response;,
        Lorg/chromium/blink/mojom/FrameWidget$RestoreWebState_Response;,
        Lorg/chromium/blink/mojom/FrameWidget$RetrieveWebStateSynchronous_Response;,
        Lorg/chromium/blink/mojom/FrameWidget$RetrieveWebState_Response;,
        Lorg/chromium/blink/mojom/FrameWidget$RequestDocumentDump_Response;,
        Lorg/chromium/blink/mojom/FrameWidget$GetImageBitmapsForClassName_Response;,
        Lorg/chromium/blink/mojom/FrameWidget$GetBitmapFromCachedResource_Response;,
        Lorg/chromium/blink/mojom/FrameWidget$GetContextMenuImage_Response;,
        Lorg/chromium/blink/mojom/FrameWidget$GetImageBytes_Response;,
        Lorg/chromium/blink/mojom/FrameWidget$GetContextMenuImageElementBounds_Response;,
        Lorg/chromium/blink/mojom/FrameWidget$OnStartStylusWriting_Response;,
        Lorg/chromium/blink/mojom/FrameWidget$DragSourceEndedAt_Response;,
        Lorg/chromium/blink/mojom/FrameWidget$DragTargetDrop_Response;,
        Lorg/chromium/blink/mojom/FrameWidget$DragTargetDragOver_Response;,
        Lorg/chromium/blink/mojom/FrameWidget$DragTargetDragEnter_Response;,
        Lorg/chromium/blink/mojom/FrameWidget$Proxy;
    }
.end annotation


# virtual methods
.method public abstract bindWidgetCompositor(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/WidgetCompositor;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract contextMenuShown()V
.end method

.method public abstract defersLoading(Z)V
.end method

.method public abstract disableDeviceEmulation()V
.end method

.method public abstract dragSourceEndedAt(Lorg/chromium/gfx/mojom/PointF;Lorg/chromium/gfx/mojom/PointF;ILorg/chromium/blink/mojom/FrameWidget$DragSourceEndedAt_Response;)V
.end method

.method public abstract dragSourceSystemDragEnded()V
.end method

.method public abstract dragTargetDragEnter(Lorg/chromium/blink/mojom/DragData;Lorg/chromium/gfx/mojom/PointF;Lorg/chromium/gfx/mojom/PointF;Lorg/chromium/blink/mojom/AllowedDragOperations;ILorg/chromium/blink/mojom/FrameWidget$DragTargetDragEnter_Response;)V
.end method

.method public abstract dragTargetDragLeave(Lorg/chromium/gfx/mojom/PointF;Lorg/chromium/gfx/mojom/PointF;)V
.end method

.method public abstract dragTargetDragOver(Lorg/chromium/gfx/mojom/PointF;Lorg/chromium/gfx/mojom/PointF;Lorg/chromium/blink/mojom/AllowedDragOperations;ILorg/chromium/blink/mojom/FrameWidget$DragTargetDragOver_Response;)V
.end method

.method public abstract dragTargetDrop(Lorg/chromium/blink/mojom/DragData;Lorg/chromium/gfx/mojom/PointF;Lorg/chromium/gfx/mojom/PointF;ILorg/chromium/blink/mojom/FrameWidget$DragTargetDrop_Response;)V
.end method

.method public abstract enableDeviceEmulation(Lorg/chromium/blink/mojom/DeviceEmulationParams;)V
.end method

.method public abstract fastScrollerEnabled(Z)V
.end method

.method public abstract getBitmapFromCachedResource(Lorg/chromium/mojo_base/mojom/String16;Lorg/chromium/blink/mojom/FrameWidget$GetBitmapFromCachedResource_Response;)V
.end method

.method public abstract getContextMenuImage(Lorg/chromium/mojo_base/mojom/String16;Lorg/chromium/blink/mojom/FrameWidget$GetContextMenuImage_Response;)V
.end method

.method public abstract getContextMenuImageElementBounds(Lorg/chromium/blink/mojom/FrameWidget$GetContextMenuImageElementBounds_Response;)V
.end method

.method public abstract getImageBitmapsForClassName(Lorg/chromium/mojo_base/mojom/String16;Lorg/chromium/blink/mojom/FrameWidget$GetImageBitmapsForClassName_Response;)V
.end method

.method public abstract getImageBytes(Lorg/chromium/mojo_base/mojom/String16;Lorg/chromium/blink/mojom/FrameWidget$GetImageBytes_Response;)V
.end method

.method public abstract getSelectionMarkupWithBounds()V
.end method

.method public abstract hasPointerEventListenerOnCanvas(Lorg/chromium/blink/mojom/FrameWidget$HasPointerEventListenerOnCanvas_Response;)V
.end method

.method public abstract longPressOnFocused()V
.end method

.method public abstract moveFocusToPrevNextInput(Z)V
.end method

.method public abstract notifyClearedDisplayedGraphics()V
.end method

.method public abstract onStartStylusWriting(Lorg/chromium/blink/mojom/FrameWidget$OnStartStylusWriting_Response;)V
.end method

.method public abstract onVideoAssistantFullscreen(Z)V
.end method

.method public abstract passImeRenderWidgetHost(Lorg/chromium/blink/mojom/ImeRenderWidgetHost;)V
.end method

.method public abstract requestDocumentDump(Lorg/chromium/blink/mojom/FrameWidget$RequestDocumentDump_Response;)V
.end method

.method public abstract resolveTapDisambiguation(DLorg/chromium/gfx/mojom/PointF;Z)V
.end method

.method public abstract restoreWebState(Ljava/lang/String;Lorg/chromium/blink/mojom/FrameWidget$RestoreWebState_Response;)V
.end method

.method public abstract retrieveWebState(Lorg/chromium/blink/mojom/FrameWidget$RetrieveWebState_Response;)V
.end method

.method public abstract retrieveWebStateSynchronous(Lorg/chromium/blink/mojom/FrameWidget$RetrieveWebStateSynchronous_Response;)V
.end method

.method public abstract setActive(Z)V
.end method

.method public abstract setBackgroundOpaque(Z)V
.end method

.method public abstract setInheritedEffectiveTouchActionForSubFrame(I)V
.end method

.method public abstract setIsInertForSubFrame(Z)V
.end method

.method public abstract setTextDirection(I)V
.end method

.method public abstract setTextSelectionStrategy(I)V
.end method

.method public abstract setViewportIntersection(Lorg/chromium/blink/mojom/ViewportIntersectionState;Lorg/chromium/blink/mojom/VisualProperties;)V
.end method

.method public abstract updateRenderThrottlingStatusForSubFrame(ZZZ)V
.end method
