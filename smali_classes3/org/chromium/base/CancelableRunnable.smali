.class public Lorg/chromium/base/CancelableRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mRunnable:Ljava/lang/Runnable;


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/CancelableRunnable;->mRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
