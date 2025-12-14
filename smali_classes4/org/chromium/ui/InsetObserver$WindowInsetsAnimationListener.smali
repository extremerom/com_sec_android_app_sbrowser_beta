.class public interface abstract Lorg/chromium/ui/InsetObserver$WindowInsetsAnimationListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/InsetObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WindowInsetsAnimationListener"
.end annotation


# virtual methods
.method public abstract onEnd(Lf1/l0;)V
.end method

.method public abstract onPrepare(Lf1/l0;)V
.end method

.method public abstract onProgress(Lf1/w0;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf1/w0;",
            "Ljava/util/List<",
            "Lf1/l0;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onStart(Lf1/l0;Lf1/c0;)V
.end method
