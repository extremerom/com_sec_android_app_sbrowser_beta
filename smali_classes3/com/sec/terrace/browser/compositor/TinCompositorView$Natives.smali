.class interface abstract Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/compositor/TinCompositorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract cacheBackBufferForCurrentSurface(JLcom/sec/terrace/browser/compositor/TinCompositorView;)V
.end method

.method public abstract destroy(JLcom/sec/terrace/browser/compositor/TinCompositorView;)V
.end method

.method public abstract evictCachedBackBuffer(JLcom/sec/terrace/browser/compositor/TinCompositorView;)V
.end method

.method public abstract getResourceManager(JLcom/sec/terrace/browser/compositor/TinCompositorView;)Lorg/chromium/ui/resources/ResourceManager;
.end method

.method public abstract init(Lcom/sec/terrace/browser/compositor/TinCompositorView;ZLorg/chromium/ui/base/WindowAndroid;)J
.end method

.method public abstract notifyVirtualKeyboardOverlayRect(JLcom/sec/terrace/browser/compositor/TinCompositorView;Lorg/chromium/content_public/browser/WebContents;IIII)V
.end method

.method public abstract onPhysicalBackingSizeChanged(JLcom/sec/terrace/browser/compositor/TinCompositorView;Lorg/chromium/content_public/browser/WebContents;II)V
.end method

.method public abstract onSplitModeChanged(JLcom/sec/terrace/browser/compositor/TinCompositorView;Z)V
.end method

.method public abstract preserveChildSurfaceControls(JLcom/sec/terrace/browser/compositor/TinCompositorView;)V
.end method

.method public abstract resetRootLayerBackground(JLcom/sec/terrace/browser/compositor/TinCompositorView;I)V
.end method

.method public abstract setCurrentWebContents(JLcom/sec/terrace/browser/compositor/TinCompositorView;Lorg/chromium/content_public/browser/WebContents;J)V
.end method

.method public abstract setDidSwapBuffersCallbackEnabled(JZ)V
.end method

.method public abstract setNeedsComposite(JLcom/sec/terrace/browser/compositor/TinCompositorView;)V
.end method

.method public abstract setOverlayImmersiveArMode(JLcom/sec/terrace/browser/compositor/TinCompositorView;Z)V
.end method

.method public abstract setOverlayVideoMode(JLcom/sec/terrace/browser/compositor/TinCompositorView;Z)V
.end method

.method public abstract surfaceChanged(JLcom/sec/terrace/browser/compositor/TinCompositorView;IIIZLandroid/view/Surface;Landroid/window/InputTransferToken;)V
.end method

.method public abstract surfaceCreated(JLcom/sec/terrace/browser/compositor/TinCompositorView;)V
.end method

.method public abstract surfaceDestroyed(JLcom/sec/terrace/browser/compositor/TinCompositorView;)V
.end method
