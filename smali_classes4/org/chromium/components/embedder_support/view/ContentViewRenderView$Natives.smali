.class interface abstract Lorg/chromium/components/embedder_support/view/ContentViewRenderView$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/embedder_support/view/ContentViewRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract onPhysicalBackingSizeChanged(JLorg/chromium/components/embedder_support/view/ContentViewRenderView;Lorg/chromium/content_public/browser/WebContents;II)V
.end method

.method public abstract setCurrentWebContents(JLorg/chromium/components/embedder_support/view/ContentViewRenderView;Lorg/chromium/content_public/browser/WebContents;)V
.end method

.method public abstract setOverlayVideoMode(JLorg/chromium/components/embedder_support/view/ContentViewRenderView;Z)V
.end method

.method public abstract surfaceChanged(JLorg/chromium/components/embedder_support/view/ContentViewRenderView;IIILandroid/view/Surface;Landroid/window/InputTransferToken;)Ljava/lang/Integer;
.end method

.method public abstract surfaceCreated(JLorg/chromium/components/embedder_support/view/ContentViewRenderView;)V
.end method

.method public abstract surfaceDestroyed(JLorg/chromium/components/embedder_support/view/ContentViewRenderView;)V
.end method
