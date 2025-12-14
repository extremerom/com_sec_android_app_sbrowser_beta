.class Lorg/chromium/mojo/system/impl/WatcherImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/system/Watcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojo/system/impl/WatcherImpl$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private mCallback:Lorg/chromium/mojo/system/Watcher$Callback;

.field private mImplPtr:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/chromium/mojo/system/impl/WatcherImplJni;->get()Lorg/chromium/mojo/system/impl/WatcherImpl$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/chromium/mojo/system/impl/WatcherImpl$Natives;->createWatcher(Lorg/chromium/mojo/system/impl/WatcherImpl;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/mojo/system/impl/WatcherImpl;->mImplPtr:J

    return-void
.end method

.method private onHandleReady(I)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/mojo/system/impl/WatcherImpl;->mCallback:Lorg/chromium/mojo/system/Watcher$Callback;

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/mojo/system/Watcher$Callback;

    invoke-interface {p0, p1}, Lorg/chromium/mojo/system/Watcher$Callback;->onResult(I)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/mojo/system/impl/WatcherImpl;->mImplPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/mojo/system/impl/WatcherImpl;->mCallback:Lorg/chromium/mojo/system/Watcher$Callback;

    invoke-static {}, Lorg/chromium/mojo/system/impl/WatcherImplJni;->get()Lorg/chromium/mojo/system/impl/WatcherImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/mojo/system/impl/WatcherImpl;->mImplPtr:J

    invoke-interface {v0, p0, v1, v2}, Lorg/chromium/mojo/system/impl/WatcherImpl$Natives;->cancel(Lorg/chromium/mojo/system/impl/WatcherImpl;J)V

    return-void
.end method

.method public destroy()V
    .locals 6

    iget-wide v0, p0, Lorg/chromium/mojo/system/impl/WatcherImpl;->mImplPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/mojo/system/impl/WatcherImplJni;->get()Lorg/chromium/mojo/system/impl/WatcherImpl$Natives;

    move-result-object v0

    iget-wide v4, p0, Lorg/chromium/mojo/system/impl/WatcherImpl;->mImplPtr:J

    invoke-interface {v0, p0, v4, v5}, Lorg/chromium/mojo/system/impl/WatcherImpl$Natives;->delete(Lorg/chromium/mojo/system/impl/WatcherImpl;J)V

    iput-wide v2, p0, Lorg/chromium/mojo/system/impl/WatcherImpl;->mImplPtr:J

    return-void
.end method

.method public start(Lorg/chromium/mojo/system/Handle;Lorg/chromium/mojo/system/Core$HandleSignals;Lorg/chromium/mojo/system/Watcher$Callback;)I
    .locals 9

    iget-wide v0, p0, Lorg/chromium/mojo/system/impl/WatcherImpl;->mImplPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x3

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Lorg/chromium/mojo/system/impl/HandleBase;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lorg/chromium/mojo/system/impl/WatcherImplJni;->get()Lorg/chromium/mojo/system/impl/WatcherImpl$Natives;

    move-result-object v2

    iget-wide v4, p0, Lorg/chromium/mojo/system/impl/WatcherImpl;->mImplPtr:J

    check-cast p1, Lorg/chromium/mojo/system/impl/HandleBase;

    invoke-virtual {p1}, Lorg/chromium/mojo/system/impl/HandleBase;->getMojoHandle()J

    move-result-wide v6

    invoke-virtual {p2}, Lorg/chromium/mojo/system/Flags;->getFlags()I

    move-result v8

    move-object v3, p0

    invoke-interface/range {v2 .. v8}, Lorg/chromium/mojo/system/impl/WatcherImpl$Natives;->start(Lorg/chromium/mojo/system/impl/WatcherImpl;JJI)I

    move-result p1

    if-nez p1, :cond_2

    iput-object p3, p0, Lorg/chromium/mojo/system/impl/WatcherImpl;->mCallback:Lorg/chromium/mojo/system/Watcher$Callback;

    :cond_2
    return p1
.end method
