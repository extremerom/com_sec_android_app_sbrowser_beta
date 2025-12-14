.class public interface abstract Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$PictureInPictureDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PictureInPictureDelegate"
.end annotation


# virtual methods
.method public abstract addCallbackForExitFullscreenMode(Ljava/lang/Runnable;)V
.end method

.method public abstract addCallbackForPlaybackStateChange(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getCurrentMediaPosition()J
.end method

.method public abstract isPopupPlayerUsage()Z
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract removeCallbackForExitFullscreenMode()V
.end method

.method public abstract removeCallbackForPlaybackStateChange()V
.end method

.method public abstract seekTo(J)V
.end method
