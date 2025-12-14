.class public interface abstract LY2/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public a(LY2/f0;)V
    .locals 0

    invoke-interface {p0, p1}, LY2/d0;->onTransitionEnd(LY2/f0;)V

    return-void
.end method

.method public b(LY2/f0;)V
    .locals 0

    invoke-interface {p0, p1}, LY2/d0;->onTransitionStart(LY2/f0;)V

    return-void
.end method

.method public abstract onTransitionCancel(LY2/f0;)V
.end method

.method public abstract onTransitionEnd(LY2/f0;)V
.end method

.method public abstract onTransitionPause(LY2/f0;)V
.end method

.method public abstract onTransitionResume(LY2/f0;)V
.end method

.method public abstract onTransitionStart(LY2/f0;)V
.end method
