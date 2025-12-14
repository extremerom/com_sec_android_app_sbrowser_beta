.class public Lorg/chromium/content/browser/AppWebMessagePort;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content_public/browser/MessagePort;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/AppWebMessagePort$Natives;,
        Lorg/chromium/content/browser/AppWebMessagePort$MessageHandler;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private volatile mClosed:Z

.field private mMessageHandler:Lorg/chromium/content/browser/AppWebMessagePort$MessageHandler;

.field private mNativeAppWebMessagePort:J

.field private volatile mStarted:Z

.field private volatile mTransferred:Z


# direct methods
.method private constructor <init>(J)V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/chromium/content/browser/AppWebMessagePort;->mNativeAppWebMessagePort:J

    return-void
.end method

.method public static synthetic a(Lorg/chromium/content/browser/AppWebMessagePort;Lorg/chromium/content_public/browser/MessagePayload;[Lorg/chromium/content_public/browser/MessagePort;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/AppWebMessagePort;->lambda$postMessage$2(Lorg/chromium/content_public/browser/MessagePayload;[Lorg/chromium/content_public/browser/MessagePort;)V

    return-void
.end method

.method public static synthetic b(Lorg/chromium/content/browser/AppWebMessagePort;Lorg/chromium/content_public/browser/MessagePort$MessageCallback;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/AppWebMessagePort;->lambda$setMessageCallback$1(Lorg/chromium/content_public/browser/MessagePort$MessageCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic c(Lorg/chromium/content/browser/AppWebMessagePort;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/AppWebMessagePort;->lambda$finalize$3()V

    return-void
.end method

.method public static createPair()[Lorg/chromium/content/browser/AppWebMessagePort;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-static {}, Lorg/chromium/content/browser/AppWebMessagePortJni;->get()Lorg/chromium/content/browser/AppWebMessagePort$Natives;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content/browser/AppWebMessagePort$Natives;->createPair()[Lorg/chromium/content/browser/AppWebMessagePort;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(Lorg/chromium/content/browser/AppWebMessagePort;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/AppWebMessagePort;->lambda$close$0()V

    return-void
.end method

.method private getNativeObj()J
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-wide v0, p0, Lorg/chromium/content/browser/AppWebMessagePort;->mNativeAppWebMessagePort:J

    return-wide v0
.end method

.method private synthetic lambda$close$0()V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/AppWebMessagePort;->mNativeAppWebMessagePort:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/AppWebMessagePortJni;->get()Lorg/chromium/content/browser/AppWebMessagePort$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/AppWebMessagePort;->mNativeAppWebMessagePort:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/content/browser/AppWebMessagePort$Natives;->closeAndDestroy(J)V

    return-void
.end method

.method private synthetic lambda$finalize$3()V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/AppWebMessagePort;->mNativeAppWebMessagePort:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/AppWebMessagePort;->mClosed:Z

    invoke-static {}, Lorg/chromium/content/browser/AppWebMessagePortJni;->get()Lorg/chromium/content/browser/AppWebMessagePort$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/AppWebMessagePort;->mNativeAppWebMessagePort:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/content/browser/AppWebMessagePort$Natives;->closeAndDestroy(J)V

    return-void
.end method

.method private synthetic lambda$postMessage$2(Lorg/chromium/content_public/browser/MessagePayload;[Lorg/chromium/content_public/browser/MessagePort;)V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/AppWebMessagePort;->mNativeAppWebMessagePort:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/AppWebMessagePortJni;->get()Lorg/chromium/content/browser/AppWebMessagePort$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/AppWebMessagePort;->mNativeAppWebMessagePort:J

    invoke-interface {v0, v1, v2, p1, p2}, Lorg/chromium/content/browser/AppWebMessagePort$Natives;->postMessage(JLorg/chromium/content_public/browser/MessagePayload;[Lorg/chromium/content_public/browser/MessagePort;)V

    return-void
.end method

.method private synthetic lambda$setMessageCallback$1(Lorg/chromium/content_public/browser/MessagePort$MessageCallback;Landroid/os/Handler;)V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/AppWebMessagePort;->mNativeAppWebMessagePort:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/chromium/content/browser/AppWebMessagePort$MessageHandler;

    invoke-direct {v0, p1, p2}, Lorg/chromium/content/browser/AppWebMessagePort$MessageHandler;-><init>(Lorg/chromium/content_public/browser/MessagePort$MessageCallback;Landroid/os/Handler;)V

    move-object p2, v0

    :goto_0
    iput-object p2, p0, Lorg/chromium/content/browser/AppWebMessagePort;->mMessageHandler:Lorg/chromium/content/browser/AppWebMessagePort$MessageHandler;

    invoke-static {}, Lorg/chromium/content/browser/AppWebMessagePortJni;->get()Lorg/chromium/content/browser/AppWebMessagePort$Natives;

    move-result-object p2

    iget-wide v0, p0, Lorg/chromium/content/browser/AppWebMessagePort;->mNativeAppWebMessagePort:J

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    invoke-interface {p2, v0, v1, p0}, Lorg/chromium/content/browser/AppWebMessagePort$Natives;->setShouldReceiveMessages(JZ)V

    return-void
.end method

.method private nativeDestroyed()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/AppWebMessagePort;->mNativeAppWebMessagePort:J

    return-void
.end method

.method private onMessage(Lorg/chromium/content_public/browser/MessagePayload;[Lorg/chromium/content_public/browser/MessagePort;)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object p0, p0, Lorg/chromium/content/browser/AppWebMessagePort;->mMessageHandler:Lorg/chromium/content/browser/AppWebMessagePort$MessageHandler;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/chromium/content/browser/AppWebMessagePort$MessageHandler;->onMessage(Lorg/chromium/content_public/browser/MessagePayload;[Lorg/chromium/content_public/browser/MessagePort;)V

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    array-length p0, p2

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_1

    aget-object v0, p2, p1

    invoke-interface {v0}, Lorg/chromium/content_public/browser/MessagePort;->close()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private setTransferred()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/AppWebMessagePort;->mTransferred:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/content/browser/AppWebMessagePort;->isTransferred()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/content/browser/AppWebMessagePort;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/AppWebMessagePort;->mClosed:Z

    new-instance v0, Lorg/chromium/content/browser/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/chromium/content/browser/a;-><init>(Lorg/chromium/content/browser/AppWebMessagePort;I)V

    const/4 p0, 0x7

    invoke-static {p0, v0}, Lorg/chromium/base/task/PostTask;->runOrPostTask(ILjava/lang/Runnable;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Port is already transferred"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public finalize()V
    .locals 4

    :try_start_0
    iget-wide v0, p0, Lorg/chromium/content/browser/AppWebMessagePort;->mNativeAppWebMessagePort:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :cond_0
    :try_start_1
    const-string v0, "AppWebMessagePort"

    const-string v1, "AppWebMessagePort was not closed before finalization"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lorg/chromium/content/browser/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/content/browser/a;-><init>(Lorg/chromium/content/browser/AppWebMessagePort;I)V

    const/4 v1, 0x7

    invoke-static {v1, v0}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public isClosed()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/content/browser/AppWebMessagePort;->mClosed:Z

    return p0
.end method

.method public isStarted()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/content/browser/AppWebMessagePort;->mStarted:Z

    return p0
.end method

.method public isTransferred()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/content/browser/AppWebMessagePort;->mTransferred:Z

    return p0
.end method

.method public postMessage(Lorg/chromium/content_public/browser/MessagePayload;[Lorg/chromium/content_public/browser/MessagePort;)V
    .locals 5

    invoke-virtual {p0}, Lorg/chromium/content/browser/AppWebMessagePort;->isClosed()Z

    move-result v0

    const-string v1, "Port is already closed or transferred"

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/chromium/content/browser/AppWebMessagePort;->isTransferred()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p2, :cond_3

    array-length v0, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p2, v2

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3}, Lorg/chromium/content_public/browser/MessagePort;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v3}, Lorg/chromium/content_public/browser/MessagePort;->isTransferred()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v3}, Lorg/chromium/content_public/browser/MessagePort;->isStarted()Z

    move-result v4

    if-nez v4, :cond_0

    check-cast v3, Lorg/chromium/content/browser/AppWebMessagePort;

    invoke-direct {v3}, Lorg/chromium/content/browser/AppWebMessagePort;->setTransferred()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Port is already started"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Source port cannot be transferred"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/AppWebMessagePort;->mStarted:Z

    new-instance v0, Lo9/a;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p1, p2}, Lo9/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x7

    invoke-static {p0, v0}, Lorg/chromium/base/task/PostTask;->runOrPostTask(ILjava/lang/Runnable;)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMessageCallback(Lorg/chromium/content_public/browser/MessagePort$MessageCallback;Landroid/os/Handler;)V
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/content/browser/AppWebMessagePort;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/AppWebMessagePort;->isTransferred()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/AppWebMessagePort;->mStarted:Z

    new-instance v0, Lo9/a;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1, p2}, Lo9/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x7

    invoke-static {p0, v0}, Lorg/chromium/base/task/PostTask;->runOrPostTask(ILjava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Port is already closed or transferred"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
