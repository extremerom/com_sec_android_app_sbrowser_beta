.class public Lorg/chromium/base/EarlyTraceEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/EarlyTraceEvent$Event;,
        Lorg/chromium/base/EarlyTraceEvent$AsyncEvent;,
        Lorg/chromium/base/EarlyTraceEvent$ActivityStartupEvent;,
        Lorg/chromium/base/EarlyTraceEvent$ActivityLaunchCauseEvent;,
        Lorg/chromium/base/EarlyTraceEvent$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final STATE_DISABLED:I = 0x0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final STATE_ENABLED:I = 0x1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final STATE_FINISHED:I = 0x2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final TRACE_EARLY_JAVA_IN_CHILD_SWITCH:Ljava/lang/String; = "trace-early-java-in-child"

.field static final sActivityLaunchCauseEvents:Ljava/util/List;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/base/EarlyTraceEvent$ActivityLaunchCauseEvent;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field static final sActivityStartupEvents:Ljava/util/List;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/base/EarlyTraceEvent$ActivityStartupEvent;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field static sAsyncEvents:Ljava/util/List;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/base/EarlyTraceEvent$AsyncEvent;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private static sCachedBackgroundStartupTracingFlag:Z

.field private static volatile sEnabledInChildProcessBeforeCommandLine:Z

.field static sEvents:Ljava/util/List;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/base/EarlyTraceEvent$Event;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field static final sLock:Ljava/lang/Object;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static volatile sState:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/base/EarlyTraceEvent;->sLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/chromium/base/EarlyTraceEvent;->sActivityStartupEvents:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/chromium/base/EarlyTraceEvent;->sActivityLaunchCauseEvents:Ljava/util/List;

    return-void
.end method

.method public static begin(Ljava/lang/String;Z)V
    .locals 2

    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->enabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/chromium/base/EarlyTraceEvent$Event;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lorg/chromium/base/EarlyTraceEvent$Event;-><init>(Ljava/lang/String;ZZ)V

    sget-object p0, Lorg/chromium/base/EarlyTraceEvent;->sLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->enabled()Z

    move-result p1

    if-nez p1, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/chromium/base/EarlyTraceEvent;->sEvents:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static disable()V
    .locals 2

    sget-object v0, Lorg/chromium/base/EarlyTraceEvent;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->enabled()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/chromium/base/EarlyTraceEvent;->sEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lorg/chromium/base/EarlyTraceEvent;->sEvents:Ljava/util/List;

    invoke-static {v1}, Lorg/chromium/base/EarlyTraceEvent;->dumpEvents(Ljava/util/List;)V

    sget-object v1, Lorg/chromium/base/EarlyTraceEvent;->sEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_1
    sget-object v1, Lorg/chromium/base/EarlyTraceEvent;->sAsyncEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lorg/chromium/base/EarlyTraceEvent;->sAsyncEvents:Ljava/util/List;

    invoke-static {v1}, Lorg/chromium/base/EarlyTraceEvent;->dumpAsyncEvents(Ljava/util/List;)V

    sget-object v1, Lorg/chromium/base/EarlyTraceEvent;->sAsyncEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_2
    const/4 v1, 0x2

    sput v1, Lorg/chromium/base/EarlyTraceEvent;->sState:I

    const/4 v1, 0x0

    sput-object v1, Lorg/chromium/base/EarlyTraceEvent;->sEvents:Ljava/util/List;

    sput-object v1, Lorg/chromium/base/EarlyTraceEvent;->sAsyncEvents:Ljava/util/List;

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static dumpActivityStartupEvents()V
    .locals 9

    sget-object v0, Lorg/chromium/base/EarlyTraceEvent;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/chromium/base/EarlyTraceEvent;->sActivityStartupEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/base/EarlyTraceEvent$ActivityStartupEvent;

    invoke-static {}, Lorg/chromium/base/TraceEventJni;->get()Lorg/chromium/base/TraceEvent$Natives;

    move-result-object v3

    iget-wide v4, v2, Lorg/chromium/base/EarlyTraceEvent$ActivityStartupEvent;->mId:J

    iget-wide v6, v2, Lorg/chromium/base/EarlyTraceEvent$ActivityStartupEvent;->mTimeMs:J

    invoke-interface {v3, v4, v5, v6, v7}, Lorg/chromium/base/TraceEvent$Natives;->startupActivityStart(JJ)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    sget-object v1, Lorg/chromium/base/EarlyTraceEvent;->sActivityStartupEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_1
    sget-object v1, Lorg/chromium/base/EarlyTraceEvent;->sActivityLaunchCauseEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/base/EarlyTraceEvent$ActivityLaunchCauseEvent;

    invoke-static {}, Lorg/chromium/base/TraceEventJni;->get()Lorg/chromium/base/TraceEvent$Natives;

    move-result-object v3

    iget-wide v4, v2, Lorg/chromium/base/EarlyTraceEvent$ActivityLaunchCauseEvent;->mId:J

    iget-wide v6, v2, Lorg/chromium/base/EarlyTraceEvent$ActivityLaunchCauseEvent;->mTimeMs:J

    iget v8, v2, Lorg/chromium/base/EarlyTraceEvent$ActivityLaunchCauseEvent;->mLaunchCause:I

    invoke-interface/range {v3 .. v8}, Lorg/chromium/base/TraceEvent$Natives;->startupLaunchCause(JJI)V

    goto :goto_1

    :cond_2
    sget-object v1, Lorg/chromium/base/EarlyTraceEvent;->sActivityLaunchCauseEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_3
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static dumpAsyncEvents(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/chromium/base/EarlyTraceEvent$AsyncEvent;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/EarlyTraceEvent$AsyncEvent;

    iget-boolean v1, v0, Lorg/chromium/base/EarlyTraceEvent$AsyncEvent;->mIsStart:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/chromium/base/EarlyTraceEventJni;->get()Lorg/chromium/base/EarlyTraceEvent$Natives;

    move-result-object v2

    iget-object v3, v0, Lorg/chromium/base/EarlyTraceEvent$AsyncEvent;->mName:Ljava/lang/String;

    iget-wide v4, v0, Lorg/chromium/base/EarlyTraceEvent$AsyncEvent;->mId:J

    iget-wide v6, v0, Lorg/chromium/base/EarlyTraceEvent$AsyncEvent;->mTimeNanos:J

    invoke-interface/range {v2 .. v7}, Lorg/chromium/base/EarlyTraceEvent$Natives;->recordEarlyAsyncBeginEvent(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/chromium/base/EarlyTraceEventJni;->get()Lorg/chromium/base/EarlyTraceEvent$Natives;

    move-result-object v1

    iget-wide v2, v0, Lorg/chromium/base/EarlyTraceEvent$AsyncEvent;->mId:J

    iget-wide v4, v0, Lorg/chromium/base/EarlyTraceEvent$AsyncEvent;->mTimeNanos:J

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/chromium/base/EarlyTraceEvent$Natives;->recordEarlyAsyncEndEvent(JJ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static dumpEvents(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/chromium/base/EarlyTraceEvent$Event;",
            ">;)V"
        }
    .end annotation

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/base/EarlyTraceEvent$Event;

    iget-boolean v2, v1, Lorg/chromium/base/EarlyTraceEvent$Event;->mIsStart:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Lorg/chromium/base/EarlyTraceEvent$Event;->mIsToplevel:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lorg/chromium/base/EarlyTraceEventJni;->get()Lorg/chromium/base/EarlyTraceEvent$Natives;

    move-result-object v3

    iget-object v4, v1, Lorg/chromium/base/EarlyTraceEvent$Event;->mName:Ljava/lang/String;

    iget-wide v5, v1, Lorg/chromium/base/EarlyTraceEvent$Event;->mTimeNanos:J

    iget v7, v1, Lorg/chromium/base/EarlyTraceEvent$Event;->mThreadId:I

    iget-wide v8, v1, Lorg/chromium/base/EarlyTraceEvent$Event;->mThreadTimeMillis:J

    invoke-interface/range {v3 .. v9}, Lorg/chromium/base/EarlyTraceEvent$Natives;->recordEarlyToplevelBeginEvent(Ljava/lang/String;JIJ)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/chromium/base/EarlyTraceEventJni;->get()Lorg/chromium/base/EarlyTraceEvent$Natives;

    move-result-object v10

    iget-object v11, v1, Lorg/chromium/base/EarlyTraceEvent$Event;->mName:Ljava/lang/String;

    iget-wide v12, v1, Lorg/chromium/base/EarlyTraceEvent$Event;->mTimeNanos:J

    iget v14, v1, Lorg/chromium/base/EarlyTraceEvent$Event;->mThreadId:I

    iget-wide v1, v1, Lorg/chromium/base/EarlyTraceEvent$Event;->mThreadTimeMillis:J

    move-wide v15, v1

    invoke-interface/range {v10 .. v16}, Lorg/chromium/base/EarlyTraceEvent$Natives;->recordEarlyBeginEvent(Ljava/lang/String;JIJ)V

    goto :goto_0

    :cond_1
    iget-boolean v2, v1, Lorg/chromium/base/EarlyTraceEvent$Event;->mIsToplevel:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lorg/chromium/base/EarlyTraceEventJni;->get()Lorg/chromium/base/EarlyTraceEvent$Natives;

    move-result-object v3

    iget-object v4, v1, Lorg/chromium/base/EarlyTraceEvent$Event;->mName:Ljava/lang/String;

    iget-wide v5, v1, Lorg/chromium/base/EarlyTraceEvent$Event;->mTimeNanos:J

    iget v7, v1, Lorg/chromium/base/EarlyTraceEvent$Event;->mThreadId:I

    iget-wide v8, v1, Lorg/chromium/base/EarlyTraceEvent$Event;->mThreadTimeMillis:J

    invoke-interface/range {v3 .. v9}, Lorg/chromium/base/EarlyTraceEvent$Natives;->recordEarlyToplevelEndEvent(Ljava/lang/String;JIJ)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/chromium/base/EarlyTraceEventJni;->get()Lorg/chromium/base/EarlyTraceEvent$Natives;

    move-result-object v10

    iget-object v11, v1, Lorg/chromium/base/EarlyTraceEvent$Event;->mName:Ljava/lang/String;

    iget-wide v12, v1, Lorg/chromium/base/EarlyTraceEvent$Event;->mTimeNanos:J

    iget v14, v1, Lorg/chromium/base/EarlyTraceEvent$Event;->mThreadId:I

    iget-wide v1, v1, Lorg/chromium/base/EarlyTraceEvent$Event;->mThreadTimeMillis:J

    move-wide v15, v1

    invoke-interface/range {v10 .. v16}, Lorg/chromium/base/EarlyTraceEvent$Natives;->recordEarlyEndEvent(Ljava/lang/String;JIJ)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static enable()V
    .locals 2

    sget-object v0, Lorg/chromium/base/EarlyTraceEvent;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lorg/chromium/base/EarlyTraceEvent;->sState:I

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lorg/chromium/base/EarlyTraceEvent;->sEvents:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lorg/chromium/base/EarlyTraceEvent;->sAsyncEvents:Ljava/util/List;

    const/4 v1, 0x1

    sput v1, Lorg/chromium/base/EarlyTraceEvent;->sState:I

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static enabled()Z
    .locals 2
    .annotation build Lorg/chromium/build/annotations/EnsuresNonNullIf;
    .end annotation

    sget v0, Lorg/chromium/base/EarlyTraceEvent;->sState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static end(Ljava/lang/String;Z)V
    .locals 2

    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->enabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/chromium/base/EarlyTraceEvent$Event;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lorg/chromium/base/EarlyTraceEvent$Event;-><init>(Ljava/lang/String;ZZ)V

    sget-object p0, Lorg/chromium/base/EarlyTraceEvent;->sLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->enabled()Z

    move-result p1

    if-nez p1, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/chromium/base/EarlyTraceEvent;->sEvents:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static finishAsync(Ljava/lang/String;J)V
    .locals 2

    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->enabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/chromium/base/EarlyTraceEvent$AsyncEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/chromium/base/EarlyTraceEvent$AsyncEvent;-><init>(Ljava/lang/String;JZ)V

    sget-object p0, Lorg/chromium/base/EarlyTraceEvent;->sLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->enabled()Z

    move-result p1

    if-nez p1, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/chromium/base/EarlyTraceEvent;->sAsyncEvents:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static getBackgroundStartupTracingFlag()Z
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-boolean v0, Lorg/chromium/base/EarlyTraceEvent;->sCachedBackgroundStartupTracingFlag:Z

    return v0
.end method

.method public static maybeEnableInBrowserProcess()V
    .locals 6

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    sget v0, Lorg/chromium/base/EarlyTraceEvent;->sState:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v1

    const-string v2, "trace-startup"

    invoke-virtual {v1, v2}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/local/chrome-trace-config.json"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move v1, v3

    :goto_0
    :try_start_2
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "bg_startup_tracing"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_2

    invoke-static {v3}, Lorg/chromium/base/EarlyTraceEvent;->setBackgroundStartupTracingFlag(Z)V

    sput-boolean v3, Lorg/chromium/base/EarlyTraceEvent;->sCachedBackgroundStartupTracingFlag:Z

    goto :goto_1

    :cond_2
    sput-boolean v2, Lorg/chromium/base/EarlyTraceEvent;->sCachedBackgroundStartupTracingFlag:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v1

    :goto_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    if-eqz v2, :cond_4

    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->enable()V

    :cond_4
    return-void

    :goto_3
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method public static onCommandLineAvailableInChildProcess()V
    .locals 3

    sget-boolean v0, Lorg/chromium/base/EarlyTraceEvent;->sEnabledInChildProcessBeforeCommandLine:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/chromium/base/EarlyTraceEvent;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v1

    const-string v2, "trace-early-java-in-child"

    invoke-virtual {v1, v2}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->reset()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_1
    sget v1, Lorg/chromium/base/EarlyTraceEvent;->sState:I

    if-nez v1, :cond_2

    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->enable()V

    :cond_2
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static reset()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-object v0, Lorg/chromium/base/EarlyTraceEvent;->sLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput v1, Lorg/chromium/base/EarlyTraceEvent;->sState:I

    const/4 v1, 0x0

    sput-object v1, Lorg/chromium/base/EarlyTraceEvent;->sEvents:Ljava/util/List;

    sput-object v1, Lorg/chromium/base/EarlyTraceEvent;->sAsyncEvents:Ljava/util/List;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setBackgroundStartupTracingFlag(Z)V
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/StrictModeContext;->allowDiskWrites()Lorg/chromium/base/StrictModeContext;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "bg_startup_tracing"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/base/StrictModeContext;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lorg/chromium/base/StrictModeContext;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0
.end method

.method public static startAsync(Ljava/lang/String;J)V
    .locals 2

    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->enabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/chromium/base/EarlyTraceEvent$AsyncEvent;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/chromium/base/EarlyTraceEvent$AsyncEvent;-><init>(Ljava/lang/String;JZ)V

    sget-object p0, Lorg/chromium/base/EarlyTraceEvent;->sLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->enabled()Z

    move-result p1

    if-nez p1, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/chromium/base/EarlyTraceEvent;->sAsyncEvents:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
