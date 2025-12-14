.class public Lorg/chromium/base/StrictModeContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/StrictModeContext$Impl;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowAllThreadPolicies()Lorg/chromium/base/StrictModeContext;
    .locals 4

    sget-boolean v0, Lorg/chromium/build/BuildConfig;->DISABLE_STRICT_MODE_CONTEXT:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/chromium/base/StrictModeContext;

    invoke-direct {v0}, Lorg/chromium/base/StrictModeContext;-><init>()V

    return-object v0

    :cond_0
    const-string v0, "StrictModeContext.allowAllThreadPolicies"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v0

    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    sget-object v2, Landroid/os/StrictMode$ThreadPolicy;->LAX:Landroid/os/StrictMode$ThreadPolicy;

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    new-instance v2, Lorg/chromium/base/StrictModeContext$Impl;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lorg/chromium/base/StrictModeContext$Impl;-><init>(Landroid/os/StrictMode$ThreadPolicy;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V

    :cond_1
    return-object v2

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
.end method

.method public static allowAllVmPolicies()Lorg/chromium/base/StrictModeContext;
    .locals 4

    sget-boolean v0, Lorg/chromium/build/BuildConfig;->DISABLE_STRICT_MODE_CONTEXT:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/chromium/base/StrictModeContext;

    invoke-direct {v0}, Lorg/chromium/base/StrictModeContext;-><init>()V

    return-object v0

    :cond_0
    const-string v0, "StrictModeContext.allowAllVmPolicies"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v0

    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    sget-object v2, Landroid/os/StrictMode$VmPolicy;->LAX:Landroid/os/StrictMode$VmPolicy;

    invoke-static {v2}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    new-instance v2, Lorg/chromium/base/StrictModeContext$Impl;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lorg/chromium/base/StrictModeContext$Impl;-><init>(Landroid/os/StrictMode$VmPolicy;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V

    :cond_1
    return-object v2

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
.end method

.method public static allowDiskReads()Lorg/chromium/base/StrictModeContext;
    .locals 4

    sget-boolean v0, Lorg/chromium/build/BuildConfig;->DISABLE_STRICT_MODE_CONTEXT:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/chromium/base/StrictModeContext;

    invoke-direct {v0}, Lorg/chromium/base/StrictModeContext;-><init>()V

    return-object v0

    :cond_0
    const-string v0, "StrictModeContext.allowDiskReads"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v0

    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    new-instance v2, Lorg/chromium/base/StrictModeContext$Impl;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lorg/chromium/base/StrictModeContext$Impl;-><init>(Landroid/os/StrictMode$ThreadPolicy;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V

    :cond_1
    return-object v2

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
.end method

.method public static allowDiskWrites()Lorg/chromium/base/StrictModeContext;
    .locals 4

    sget-boolean v0, Lorg/chromium/build/BuildConfig;->DISABLE_STRICT_MODE_CONTEXT:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/chromium/base/StrictModeContext;

    invoke-direct {v0}, Lorg/chromium/base/StrictModeContext;-><init>()V

    return-object v0

    :cond_0
    const-string v0, "StrictModeContext.allowDiskWrites"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v0

    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    new-instance v2, Lorg/chromium/base/StrictModeContext$Impl;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lorg/chromium/base/StrictModeContext$Impl;-><init>(Landroid/os/StrictMode$ThreadPolicy;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V

    :cond_1
    return-object v2

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
.end method

.method public static allowUnbufferedIo()Lorg/chromium/base/StrictModeContext;
    .locals 4

    sget-boolean v0, Lorg/chromium/build/BuildConfig;->DISABLE_STRICT_MODE_CONTEXT:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/chromium/base/StrictModeContext;

    invoke-direct {v0}, Lorg/chromium/base/StrictModeContext;-><init>()V

    return-object v0

    :cond_0
    const-string v0, "StrictModeContext.allowUnbufferedIo"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v0

    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    new-instance v2, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v2, v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitUnbufferedIo()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    new-instance v2, Lorg/chromium/base/StrictModeContext$Impl;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lorg/chromium/base/StrictModeContext$Impl;-><init>(Landroid/os/StrictMode$ThreadPolicy;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V

    :cond_1
    return-object v2

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method
