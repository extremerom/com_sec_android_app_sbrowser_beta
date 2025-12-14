.class Lcom/sec/terrace/browser/vr/ArClassProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getOverlayDelegate(Lcom/sec/terrace/browser/vr/ArCompositorDelegate;Lorg/chromium/content_public/browser/WebContents;ZZ)Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$Delegate;
    .locals 1
    .param p0    # Lcom/sec/terrace/browser/vr/ArCompositorDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/chromium/content_public/browser/WebContents;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/vr/ArOverlayDelegate;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/terrace/browser/vr/ArOverlayDelegate;-><init>(Lcom/sec/terrace/browser/vr/ArCompositorDelegate;Lorg/chromium/content_public/browser/WebContents;ZZ)V

    return-object v0
.end method
