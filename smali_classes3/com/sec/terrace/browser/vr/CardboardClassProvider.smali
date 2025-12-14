.class Lcom/sec/terrace/browser/vr/CardboardClassProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getOverlayDelegate(Lcom/sec/terrace/browser/vr/VrCompositorDelegate;Landroid/app/Activity;)Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$Delegate;
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/vr/CardboardOverlayDelegate;

    invoke-direct {v0, p0, p1}, Lcom/sec/terrace/browser/vr/CardboardOverlayDelegate;-><init>(Lcom/sec/terrace/browser/vr/VrCompositorDelegate;Landroid/app/Activity;)V

    return-object v0
.end method
