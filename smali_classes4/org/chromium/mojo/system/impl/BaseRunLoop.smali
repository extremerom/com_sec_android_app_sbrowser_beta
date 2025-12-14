.class Lorg/chromium/mojo/system/impl/BaseRunLoop;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/system/RunLoop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojo/system/impl/BaseRunLoop$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/impl/CoreImpl;

.field private mRunLoopID:J


# direct methods
.method private static runRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 6

    iget-wide v0, p0, Lorg/chromium/mojo/system/impl/BaseRunLoop;->mRunLoopID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/mojo/system/impl/BaseRunLoop;->mCore:Lorg/chromium/mojo/system/impl/CoreImpl;

    invoke-virtual {v0}, Lorg/chromium/mojo/system/impl/CoreImpl;->clearCurrentRunLoop()V

    invoke-static {}, Lorg/chromium/mojo/system/impl/BaseRunLoopJni;->get()Lorg/chromium/mojo/system/impl/BaseRunLoop$Natives;

    move-result-object v0

    iget-wide v4, p0, Lorg/chromium/mojo/system/impl/BaseRunLoop;->mRunLoopID:J

    invoke-interface {v0, p0, v4, v5}, Lorg/chromium/mojo/system/impl/BaseRunLoop$Natives;->deleteMessageLoop(Lorg/chromium/mojo/system/impl/BaseRunLoop;J)V

    iput-wide v2, p0, Lorg/chromium/mojo/system/impl/BaseRunLoop;->mRunLoopID:J

    return-void
.end method
