.class public final Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge$SafeBrowsingApiLookupDoneObserver;,
        Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge$Natives;,
        Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge$UrlCheckTimeObserver;,
        Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge$SafetyNetApiLookupDoneObserver;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sSafeBrowsingApiHandler:Lorg/chromium/components/safe_browsing/SafeBrowsingApiHandler;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field private static final sSafeBrowsingApiHandlerLock:Ljava/lang/Object;

.field private static sSafeBrowsingApiUrlCheckTimeObserver:Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge$UrlCheckTimeObserver;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field private static sSafetyNetApiHandler:Lorg/chromium/components/safe_browsing/SafetyNetApiHandler;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field private static sSafetyNetApiHandlerInitCalled:Z
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field private static final sSafetyNetApiHandlerLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge;->sSafetyNetApiHandlerLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge;->sSafeBrowsingApiHandlerLock:Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge;->sSafeBrowsingApiHandlerLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static bridge synthetic b()Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge$UrlCheckTimeObserver;
    .locals 1

    sget-object v0, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge;->sSafeBrowsingApiUrlCheckTimeObserver:Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge$UrlCheckTimeObserver;

    return-object v0
.end method

.method public static bridge synthetic c()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge;->sSafeBrowsingApiUrlCheckTimeObserver:Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge$UrlCheckTimeObserver;

    return-void
.end method

.method public static enableVerifyApps(J)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge;->sSafetyNetApiHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge;->sSafetyNetApiHandler:Lorg/chromium/components/safe_browsing/SafetyNetApiHandler;

    invoke-interface {v1, p0, p1}, Lorg/chromium/components/safe_browsing/SafetyNetApiHandler;->enableVerifyApps(J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static ensureSafetyNetApiInitialized()Z
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge;->sSafetyNetApiHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge;->getSafetyNetApiHandler()Lorg/chromium/components/safe_browsing/SafetyNetApiHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getSafetyNetApiHandler()Lorg/chromium/components/safe_browsing/SafetyNetApiHandler;
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    sget-boolean v0, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge;->sSafetyNetApiHandlerInitCalled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge;->initSafetyNetApiHandler()Lorg/chromium/components/safe_browsing/SafetyNetApiHandler;

    move-result-object v0

    sput-object v0, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge;->sSafetyNetApiHandler:Lorg/chromium/components/safe_browsing/SafetyNetApiHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge;->sSafetyNetApiHandlerInitCalled:Z

    :cond_0
    sget-object v0, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge;->sSafetyNetApiHandler:Lorg/chromium/components/safe_browsing/SafetyNetApiHandler;

    return-object v0
.end method

.method private static initSafetyNetApiHandler()Lorg/chromium/components/safe_browsing/SafetyNetApiHandler;
    .locals 5
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    const-string v0, "SafeBrowsingApiBridge.initSafetyNetApiHandler"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v0

    :try_start_0
    sget-object v1, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge;->sSafetyNetApiHandler:Lorg/chromium/components/safe_browsing/SafetyNetApiHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V

    :cond_0
    return-object v2

    :cond_1
    :try_start_1
    new-instance v3, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge$SafetyNetApiLookupDoneObserver;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge$SafetyNetApiLookupDoneObserver;-><init>(I)V

    invoke-interface {v1, v3}, Lorg/chromium/components/safe_browsing/SafetyNetApiHandler;->init(Lorg/chromium/components/safe_browsing/SafetyNetApiHandler$Observer;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v2, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge;->sSafetyNetApiHandler:Lorg/chromium/components/safe_browsing/SafetyNetApiHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V

    :cond_3
    return-object v2

    :goto_1
    if-eqz v0, :cond_4

    :try_start_2
    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v1
.end method

.method public static isVerifyAppsEnabled(J)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge;->sSafetyNetApiHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge;->sSafetyNetApiHandler:Lorg/chromium/components/safe_browsing/SafetyNetApiHandler;

    invoke-interface {v1, p0, p1}, Lorg/chromium/components/safe_browsing/SafetyNetApiHandler;->isVerifyAppsEnabled(J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setSafeBrowsingApiHandler(Lorg/chromium/components/safe_browsing/SafeBrowsingApiHandler;)V
    .locals 3

    sget-object v0, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge;->sSafeBrowsingApiHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge;->sSafeBrowsingApiHandler:Lorg/chromium/components/safe_browsing/SafeBrowsingApiHandler;

    new-instance v1, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge$SafeBrowsingApiLookupDoneObserver;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge$SafeBrowsingApiLookupDoneObserver;-><init>(I)V

    invoke-interface {p0, v1}, Lorg/chromium/components/safe_browsing/SafeBrowsingApiHandler;->setObserver(Lorg/chromium/components/safe_browsing/SafeBrowsingApiHandler$Observer;)V

    invoke-static {}, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridgeJni;->get()Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge$Natives;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge$Natives;->onSafeBrowsingApiHandlerAvailable()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static startAllowlistLookup(Ljava/lang/String;I)Z
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge;->sSafetyNetApiHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "SafeBrowsingApiBridge.startAllowlistLookup"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v2, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge;->sSafetyNetApiHandler:Lorg/chromium/components/safe_browsing/SafetyNetApiHandler;

    invoke-interface {v2, p0, p1}, Lorg/chromium/components/safe_browsing/SafetyNetApiHandler;->startAllowlistLookup(Ljava/lang/String;I)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Lorg/chromium/base/TraceEvent;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return p0

    :catchall_1
    move-exception p0

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Lorg/chromium/base/TraceEvent;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p0

    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method private static startUriLookupBySafeBrowsingApi(JLjava/lang/String;[II)V
    .locals 10
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge;->sSafeBrowsingApiHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge;->sSafeBrowsingApiHandler:Lorg/chromium/components/safe_browsing/SafeBrowsingApiHandler;

    if-nez v1, :cond_1

    const-wide/16 p2, -0x1

    cmp-long p2, p0, p2

    if-eqz p2, :cond_0

    const-string p2, "SBApiBridge"

    const-string p3, "startUriLookupBySafeBrowsingApi: Safe Browsing Handler is null"

    invoke-static {p2, p3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridgeJni;->get()Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge$Natives;

    move-result-object v1

    const/4 p2, 0x0

    new-array v6, p2, [I

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    move-wide v2, p0

    invoke-interface/range {v1 .. v9}, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge$Natives;->onUrlCheckDoneBySafeBrowsingApi(JII[IIJ)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lorg/chromium/components/safe_browsing/SafeBrowsingApiHandler;->startUriLookup(JLjava/lang/String;[II)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
