.class public interface abstract Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediatorDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# virtual methods
.method public abstract forceRedrawVisibleSubframes()V
.end method

.method public abstract getMinScaleFactor()F
.end method

.method public abstract offsetBitmapScaleMatrix(FF)V
.end method

.method public abstract onStartScaling()V
.end method

.method public abstract onSwapState()V
.end method

.method public abstract setBitmapScaleMatrix(Landroid/graphics/Matrix;F)V
.end method

.method public abstract updateBitmapMatrix([[Landroid/graphics/Bitmap;)V
.end method

.method public abstract updateScaleFactorOfAllSubframes(F)V
.end method

.method public abstract updateSubframes(Landroid/graphics/Rect;F)V
.end method

.method public abstract updateVisuals(Z)V
.end method
