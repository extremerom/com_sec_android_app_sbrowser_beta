.class public interface abstract Lw6/s;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onFloatingMoved(II)V
.end method

.method public abstract onInsert(Landroid/graphics/Rect;)V
.end method

.method public abstract onMinimizedChanged(IZ)V
.end method

.method public abstract onModeChanged(I)V
.end method

.method public abstract onPreInsert(Landroid/graphics/Rect;)V
.end method

.method public onResizeAnimate(Landroid/graphics/Rect;Landroid/graphics/Rect;J)V
    .locals 0

    const-string p0, "from"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "to"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract onStateChanged(I)V
.end method

.method public abstract onVisibilityChanged(I)V
.end method
