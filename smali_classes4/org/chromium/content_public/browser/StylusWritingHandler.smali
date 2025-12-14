.class public interface abstract Lorg/chromium/content_public/browser/StylusWritingHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# virtual methods
.method public abstract canShowSoftKeyboard()Z
.end method

.method public handleHoverEvent(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onDetachedFromWindow(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onEditElementFocusedForStylusWriting(Landroid/graphics/Rect;Landroid/graphics/Point;FILandroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onFocusChanged(Z)V
    .locals 0

    return-void
.end method

.method public onFocusedNodeChanged(Landroid/graphics/Rect;ZLandroid/view/View;FI)V
    .locals 0

    return-void
.end method

.method public onImeAdapterDestroyed()V
    .locals 0

    return-void
.end method

.method public abstract shouldInitiateStylusWriting()Z
.end method

.method public updateEditorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 0

    return-void
.end method

.method public updateInputState(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method
