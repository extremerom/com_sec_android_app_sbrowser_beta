.class public interface abstract Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$Delegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract configureSurfaceView(Landroid/view/SurfaceView;)V
.end method

.method public abstract getDesiredOrientation()I
.end method

.method public abstract maybeForwardTouchEvent(Landroid/view/MotionEvent;)V
.end method

.method public abstract onStopUsingSurfaceView()V
.end method

.method public abstract parentAndShowSurfaceView(Landroid/view/SurfaceView;)V
.end method

.method public abstract prepareToCreateSurfaceView()V
.end method

.method public abstract removeAndHideSurfaceView(Landroid/view/SurfaceView;)V
.end method

.method public abstract useDisplaySizes()Z
.end method
