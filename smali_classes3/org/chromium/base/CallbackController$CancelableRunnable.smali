.class Lorg/chromium/base/CallbackController$CancelableRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/CallbackController$Cancelable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/CallbackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CancelableRunnable"
.end annotation


# instance fields
.field private mRunnable:Ljava/lang/Runnable;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field final synthetic this$0:Lorg/chromium/base/CallbackController;


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/base/CallbackController$CancelableRunnable;->this$0:Lorg/chromium/base/CallbackController;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/chromium/base/CallbackController$CancelableRunnable;->mRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
