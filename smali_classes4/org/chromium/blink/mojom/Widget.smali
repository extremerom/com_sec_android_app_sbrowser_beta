.class public interface abstract Lorg/chromium/blink/mojom/Widget;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/Widget$UpdateScreenRects_Response;,
        Lorg/chromium/blink/mojom/Widget$ForceRedraw_Response;,
        Lorg/chromium/blink/mojom/Widget$Proxy;
    }
.end annotation


# virtual methods
.method public abstract bindScrollSync(Lorg/chromium/scroll_sync/mojom/ScrollSync;)V
.end method

.method public abstract cancelSuccessfulPresentationTimeRequest()V
.end method

.method public abstract enableScrollSync(Z)V
.end method

.method public abstract forceRedraw(Lorg/chromium/blink/mojom/Widget$ForceRedraw_Response;)V
.end method

.method public abstract requestSuccessfulPresentationTimeForNextFrame(Lorg/chromium/blink/mojom/RecordContentToVisibleTimeRequest;)V
.end method

.method public abstract resetHoverCursor()V
.end method

.method public abstract setupBrowserRenderInputRouterConnections(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/RenderInputRouterClient;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateScreenRects(Lorg/chromium/gfx/mojom/Rect;Lorg/chromium/gfx/mojom/Rect;Lorg/chromium/blink/mojom/Widget$UpdateScreenRects_Response;)V
.end method

.method public abstract updateVisualProperties(Lorg/chromium/blink/mojom/VisualProperties;)V
.end method

.method public abstract wasHidden()V
.end method

.method public abstract wasShown(ZLorg/chromium/blink/mojom/RecordContentToVisibleTimeRequest;)V
.end method
