.class public interface abstract Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager$SurfaceManagerCallbackTarget;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SurfaceManagerCallbackTarget"
.end annotation


# virtual methods
.method public abstract surfaceChanged(Landroid/view/Surface;III)V
.end method

.method public abstract surfaceCreated(Landroid/view/Surface;)V
.end method

.method public abstract surfaceDestroyed(Landroid/view/Surface;Z)V
.end method

.method public abstract surfaceRedrawNeededAsync(Ljava/lang/Runnable;)V
.end method

.method public abstract unownedSurfaceDestroyed()V
.end method
