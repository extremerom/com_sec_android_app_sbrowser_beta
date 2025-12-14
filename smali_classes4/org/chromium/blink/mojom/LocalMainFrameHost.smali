.class public interface abstract Lorg/chromium/blink/mojom/LocalMainFrameHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/LocalMainFrameHost$SetWindowRect_Response;,
        Lorg/chromium/blink/mojom/LocalMainFrameHost$ShowCreatedWindow_Response;,
        Lorg/chromium/blink/mojom/LocalMainFrameHost$UpdateTargetUrl_Response;,
        Lorg/chromium/blink/mojom/LocalMainFrameHost$Proxy;
    }
.end annotation


# virtual methods
.method public abstract contentsPreferredSizeChanged(Lorg/chromium/gfx/mojom/Size;)V
.end method

.method public abstract didAccessInitialMainDocument()V
.end method

.method public abstract didFirstVisuallyNonEmptyPaint()V
.end method

.method public abstract draggableRegionsChanged([Lorg/chromium/blink/mojom/DraggableRegion;)V
.end method

.method public abstract focusPage()V
.end method

.method public abstract maximize()V
.end method

.method public abstract minimize()V
.end method

.method public abstract onFirstContentfulPaint()V
.end method

.method public abstract onStartContentIntent(Lorg/chromium/url/mojom/Url;Z)V
.end method

.method public abstract requestClose()V
.end method

.method public abstract restore()V
.end method

.method public abstract scaleFactorChanged(F)V
.end method

.method public abstract setResizable(Z)V
.end method

.method public abstract setWindowRect(Lorg/chromium/gfx/mojom/Rect;Lorg/chromium/blink/mojom/LocalMainFrameHost$SetWindowRect_Response;)V
.end method

.method public abstract showCreatedWindow(Lorg/chromium/blink/mojom/LocalFrameToken;ILorg/chromium/blink/mojom/WindowFeatures;ZLorg/chromium/blink/mojom/LocalMainFrameHost$ShowCreatedWindow_Response;)V
.end method

.method public abstract takeFocus(Z)V
.end method

.method public abstract textAutosizerPageInfoChanged(Lorg/chromium/blink/mojom/TextAutosizerPageInfo;)V
.end method

.method public abstract updateTargetUrl(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/LocalMainFrameHost$UpdateTargetUrl_Response;)V
.end method
