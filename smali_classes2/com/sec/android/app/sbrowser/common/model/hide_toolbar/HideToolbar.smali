.class public interface abstract Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract canForceCapture()Z
.end method

.method public abstract dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public getBlurRect()Landroid/graphics/Rect;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getToolbarButtons()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTranslationY()F
.end method

.method public abstract getVisibility()I
.end method

.method public abstract getVisibleHeight()I
.end method

.method public abstract getY()F
.end method

.method public abstract invalidateLayout()V
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract requestBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract setTranslationY(F)V
.end method

.method public abstract setVisibility(I)V
.end method

.method public abstract shouldCaptureBitmap()Z
.end method

.method public abstract shouldCaptureLater()Z
.end method
