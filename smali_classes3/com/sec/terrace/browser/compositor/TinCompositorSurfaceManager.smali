.class interface abstract Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager$SurfaceManagerCallbackTarget;
    }
.end annotation


# virtual methods
.method public abstract doneWithUnownedSurface()V
.end method

.method public abstract getActiveSurfaceView()Landroid/view/SurfaceView;
.end method

.method public abstract recreateSurface()V
.end method

.method public abstract requestSurface(I)V
.end method

.method public abstract setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setVisibility(I)V
.end method

.method public abstract setWillNotDraw(Z)V
.end method

.method public abstract shutDown()V
.end method
