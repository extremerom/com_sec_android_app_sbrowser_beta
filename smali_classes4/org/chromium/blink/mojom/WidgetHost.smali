.class public interface abstract Lorg/chromium/blink/mojom/WidgetHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/WidgetHost$Proxy;
    }
.end annotation


# virtual methods
.method public abstract clearKeyboardTriggeredTooltip()V
.end method

.method public abstract createFrameSink(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/viz/mojom/CompositorFrameSinkClient;Lorg/chromium/blink/mojom/RenderInputRouterClient;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/viz/mojom/CompositorFrameSink;",
            ">;",
            "Lorg/chromium/viz/mojom/CompositorFrameSinkClient;",
            "Lorg/chromium/blink/mojom/RenderInputRouterClient;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onScrollSyncCreated(Lorg/chromium/scroll_sync/mojom/ScrollSync;)V
.end method

.method public abstract registerRenderFrameMetadataObserver(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/cc/mojom/RenderFrameMetadataObserver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/cc/mojom/RenderFrameMetadataObserverClient;",
            ">;",
            "Lorg/chromium/cc/mojom/RenderFrameMetadataObserver;",
            ")V"
        }
    .end annotation
.end method

.method public abstract selectionBoundsChanged(Lorg/chromium/gfx/mojom/Rect;ILorg/chromium/gfx/mojom/Rect;ILorg/chromium/gfx/mojom/Rect;Z)V
.end method

.method public abstract setCursor(Lorg/chromium/ui/mojom/Cursor;)V
.end method

.method public abstract textInputStateChanged(Lorg/chromium/ui/mojom/TextInputState;)V
.end method

.method public abstract updateTooltipFromKeyboard(Lorg/chromium/mojo_base/mojom/String16;ILorg/chromium/gfx/mojom/Rect;)V
.end method

.method public abstract updateTooltipUnderCursor(Lorg/chromium/mojo_base/mojom/String16;I)V
.end method
