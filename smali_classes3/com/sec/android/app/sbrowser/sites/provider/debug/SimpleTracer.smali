.class public Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer$ProfileData;,
        Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer$SimpleTracerHolder;
    }
.end annotation


# static fields
.field private static sActivate:Z = false


# instance fields
.field private mData:Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer$ProfileData;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;->mData:Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer$ProfileData;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;-><init>()V

    return-void
.end method

.method public static declared-synchronized activate(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isEngBinary()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;->getDisplayLogSetting(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    sput-boolean p0, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;->sActivate:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    sput-boolean p0, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;->sActivate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static varargs declared-synchronized end([Ljava/lang/Object;)V
    .locals 2

    const-class v0, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;->instance()Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;->onEnd([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static getDisplayLogSetting(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "pref_display_provider_log_on_off"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static instance()Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;->sActivate:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer$SimpleTracerHolder;->inst:Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;

    return-object v0
.end method

.method private varargs onEnd([Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;->mData:Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer$ProfileData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer$ProfileData;->mItem:Lcom/sec/android/app/sbrowser/sites/provider/debug/TraceItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/provider/debug/TraceItem;->onEnd([Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;->mData:Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer$ProfileData;

    iget-wide v2, p1, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer$ProfileData;->mStartTime:J

    sub-long/2addr v0, v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;->mData:Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer$ProfileData;

    iget-object v3, v2, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer$ProfileData;->mClass:Ljava/lang/String;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer$ProfileData;->mItem:Lcom/sec/android/app/sbrowser/sites/provider/debug/TraceItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/sites/provider/debug/TraceItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v3, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s.%s end (elapsed %d)"

    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SimpleTracer"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;->mData:Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer$ProfileData;

    return-void
.end method

.method private onStart(Ljava/lang/String;Lcom/sec/android/app/sbrowser/sites/provider/debug/TraceItem;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer$ProfileData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer$ProfileData;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;->mData:Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer$ProfileData;

    iput-object p1, v0, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer$ProfileData;->mClass:Ljava/lang/String;

    iput-object p2, v0, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer$ProfileData;->mItem:Lcom/sec/android/app/sbrowser/sites/provider/debug/TraceItem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer$ProfileData;->mStartTime:J

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;->mData:Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer$ProfileData;

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer$ProfileData;->mClass:Ljava/lang/String;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer$ProfileData;->mItem:Lcom/sec/android/app/sbrowser/sites/provider/debug/TraceItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/provider/debug/TraceItem;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " start"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SimpleTracer"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;->mData:Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer$ProfileData;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer$ProfileData;->mItem:Lcom/sec/android/app/sbrowser/sites/provider/debug/TraceItem;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/sites/provider/debug/TraceItem;->setTag(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;->mData:Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer$ProfileData;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer$ProfileData;->mItem:Lcom/sec/android/app/sbrowser/sites/provider/debug/TraceItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/provider/debug/TraceItem;->onStart()V

    return-void
.end method

.method public static declared-synchronized start(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/sites/provider/debug/TraceItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/sec/android/app/sbrowser/sites/provider/debug/TraceItem;",
            ")V"
        }
    .end annotation

    const-class v0, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;->instance()Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/sites/provider/debug/SimpleTracer;->onStart(Ljava/lang/String;Lcom/sec/android/app/sbrowser/sites/provider/debug/TraceItem;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
