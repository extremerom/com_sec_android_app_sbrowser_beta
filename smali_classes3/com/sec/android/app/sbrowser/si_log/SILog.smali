.class public Lcom/sec/android/app/sbrowser/si_log/SILog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;,
        Lcom/sec/android/app/sbrowser/si_log/SILog$ResultListener;
    }
.end annotation


# static fields
.field private static sInitialized:Z


# direct methods
.method public static synthetic a(IILjava/util/Map;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/si_log/SILog;->lambda$showToastMessage$0(IILjava/util/Map;Landroid/content/Context;)V

    return-void
.end method

.method public static convertToMap(Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;)Ljava/util/Map;
    .locals 0
    .param p0    # Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;->getParams()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized initialize()V
    .locals 2

    const-class v0, Lcom/sec/android/app/sbrowser/si_log/SILog;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/sec/android/app/sbrowser/si_log/SILog;->sInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/sec/android/app/sbrowser/si_log/SILog;->sInitialized:Z

    new-instance v1, Lcom/sec/android/app/sbrowser/si_log/SILog$1;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/si_log/SILog$1;-><init>()V

    invoke-static {v1}, Lcom/sec/terrace/browser/si_log/TerraceSILog;->setDelegate(Lcom/sec/terrace/browser/si_log/TerraceSILog$Delegate;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static synthetic lambda$showToastMessage$0(IILjava/util/Map;Landroid/content/Context;)V
    .locals 1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-nez p2, :cond_0

    const-string p2, "N/A"

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "[SILog] Service ID : (%d), Event ID : (%06d), Extra Parameters: %s"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p3, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static send(ILjava/lang/String;ILcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/si_log/SILog;->send(ILjava/lang/String;ILjava/lang/String;Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;Lcom/sec/android/app/sbrowser/si_log/SILog$ResultListener;)V

    return-void
.end method

.method public static send(ILjava/lang/String;ILcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;Lcom/sec/android/app/sbrowser/si_log/SILog$ResultListener;)V
    .locals 6
    .param p4    # Lcom/sec/android/app/sbrowser/si_log/SILog$ResultListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v3, 0x0

    move v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/si_log/SILog;->send(ILjava/lang/String;ILjava/lang/String;Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;Lcom/sec/android/app/sbrowser/si_log/SILog$ResultListener;)V

    return-void
.end method

.method public static send(ILjava/lang/String;ILjava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/si_log/SILog;->send(ILjava/lang/String;ILjava/lang/String;Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;Lcom/sec/android/app/sbrowser/si_log/SILog$ResultListener;)V

    return-void
.end method

.method public static send(ILjava/lang/String;ILjava/lang/String;Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;)V
    .locals 6
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v5, 0x0

    move v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/si_log/SILog;->send(ILjava/lang/String;ILjava/lang/String;Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;Lcom/sec/android/app/sbrowser/si_log/SILog$ResultListener;)V

    return-void
.end method

.method public static send(ILjava/lang/String;ILjava/lang/String;Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;Lcom/sec/android/app/sbrowser/si_log/SILog$ResultListener;)V
    .locals 6
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/sec/android/app/sbrowser/si_log/SILog$ResultListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/si_log/SILog;->convertToMap(Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;)Ljava/util/Map;

    move-result-object v4

    move v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/si_log/SILog;->sendInternal(ILjava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/sec/android/app/sbrowser/si_log/SILog$ResultListener;)V

    return-void
.end method

.method public static sendInternal(ILjava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/sec/android/app/sbrowser/si_log/SILog$ResultListener;)V
    .locals 8
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/sec/android/app/sbrowser/si_log/SILog$ResultListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/android/app/sbrowser/si_log/SILog$ResultListener;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->getInstance(Landroid/app/Application;)Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;

    move-result-object v1

    new-instance v7, Lcom/sec/android/app/sbrowser/si_log/SILog$2;

    invoke-direct {v7, p5, p0, p2, p4}, Lcom/sec/android/app/sbrowser/si_log/SILog$2;-><init>(Lcom/sec/android/app/sbrowser/si_log/SILog$ResultListener;IILjava/util/Map;)V

    move v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->sendSILog(ILjava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$ResultListener;)V

    return-void
.end method

.method public static sendStatus(IILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/si_log/SILog;->sendStatus(IILjava/lang/String;Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;)V

    return-void
.end method

.method public static sendStatus(IILjava/lang/String;Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;->getIUID()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/sec/android/app/sbrowser/si_log/SILog;->sendStatusLogInternal(IILjava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;)V

    return-void
.end method

.method public static sendStatusLogInternal(IILjava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;)V
    .locals 8
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->getInstance(Landroid/app/Application;)Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;

    move-result-object v0

    new-instance v7, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/si_log/SILog;->convertToMap(Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;)Ljava/util/Map;

    move-result-object v6

    move-object v1, v7

    move v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0, v7}, Lcom/sec/android/app/sbrowser/si_log/model/SILogModelUtils;->updateSIStatusLogWithScope(Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;)V

    return-void
.end method

.method public static sendStatusLogInternal(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->getInstance(Landroid/app/Application;)Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;

    move-result-object v0

    new-instance v7, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;

    move-object v1, v7

    move v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0, v7}, Lcom/sec/android/app/sbrowser/si_log/model/SILogModelUtils;->updateSIStatusLogWithScope(Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;)V

    return-void
.end method

.method public static showToastMessage(IILjava/util/Map;)V
    .locals 2
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isSILogToastEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/sec/android/app/sbrowser/si_log/a;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/si_log/a;-><init>(IILjava/util/Map;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
