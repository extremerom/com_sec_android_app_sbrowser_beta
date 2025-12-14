.class public Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma;
.super Lorg/chromium/components/background_task_scheduler/BackgroundTaskSchedulerExternalUma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma$CachedUmaEntry;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final KEY_CACHED_UMA:Ljava/lang/String; = "bts_cached_uma"

.field private static sInstance:Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/components/background_task_scheduler/BackgroundTaskSchedulerExternalUma;-><init>()V

    return-void
.end method

.method public static getCachedUmaEntries(Landroid/content/SharedPreferences;)Ljava/util/Set;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "bts_cached_uma"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma;->sanitizeEntrySet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma;
    .locals 1

    sget-object v0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma;->sInstance:Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma;

    invoke-direct {v0}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma;-><init>()V

    sput-object v0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma;->sInstance:Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma;

    :cond_0
    sget-object v0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma;->sInstance:Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma;

    return-object v0
.end method

.method private static sanitizeEntrySet(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public static updateCachedUma(Landroid/content/SharedPreferences;Ljava/util/Set;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "bts_cached_uma"

    invoke-static {p1}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma;->sanitizeEntrySet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public cacheEvent(Ljava/lang/String;I)V
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma;->getCachedUmaEntries(Landroid/content/SharedPreferences;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, p2}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma$CachedUmaEntry;->getStringForPartialMatching(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x1

    if-eqz v3, :cond_3

    invoke-static {v3}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma$CachedUmaEntry;->parseEntry(Ljava/lang/String;)Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma$CachedUmaEntry;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma$CachedUmaEntry;

    invoke-direct {v2, p1, p2, v0}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma$CachedUmaEntry;-><init>(Ljava/lang/String;II)V

    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma$CachedUmaEntry;->increment()V

    goto :goto_1

    :cond_3
    new-instance v2, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma$CachedUmaEntry;

    invoke-direct {v2, p1, p2, v0}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma$CachedUmaEntry;-><init>(Ljava/lang/String;II)V

    :goto_1
    invoke-virtual {v2}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma$CachedUmaEntry;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v1}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma;->updateCachedUma(Landroid/content/SharedPreferences;Ljava/util/Set;)V

    return-void
.end method

.method public recordEnumeratedHistogram(Ljava/lang/String;II)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {p1, p2, p3}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    return-void
.end method

.method public reportTaskCreatedAndExpirationState(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    const-string p2, "Android.BackgroundTaskScheduler.TaskCreated.WithExpiration"

    invoke-static {p1}, Lorg/chromium/components/background_task_scheduler/BackgroundTaskSchedulerExternalUma;->toUmaEnumValueFromTaskId(I)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma;->cacheEvent(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string p2, "Android.BackgroundTaskScheduler.TaskCreated.WithoutExpiration"

    invoke-static {p1}, Lorg/chromium/components/background_task_scheduler/BackgroundTaskSchedulerExternalUma;->toUmaEnumValueFromTaskId(I)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma;->cacheEvent(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public reportTaskFinished(IJ)V
    .locals 9

    const-string v0, "Android.BackgroundTaskScheduler.TaskFinished2"

    invoke-static {p1}, Lorg/chromium/components/background_task_scheduler/BackgroundTaskSchedulerExternalUma;->toUmaEnumValueFromTaskId(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma;->cacheEvent(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Android.BackgroundTaskScheduler.TaskFinished."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/chromium/components/background_task_scheduler/BackgroundTaskSchedulerExternalUma;->getHistogramPatternForTaskId(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v6, 0x5265c00

    const/16 v8, 0x32

    const-wide/16 v4, 0x1

    move-wide v2, p2

    invoke-static/range {v1 .. v8}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomTimesHistogram(Ljava/lang/String;JJJI)V

    return-void
.end method

.method public reportTaskStartedNative(I)V
    .locals 1

    invoke-static {p1}, Lorg/chromium/components/background_task_scheduler/BackgroundTaskSchedulerExternalUma;->toUmaEnumValueFromTaskId(I)I

    move-result p1

    const-string v0, "Android.BackgroundTaskScheduler.TaskLoadedNative"

    invoke-virtual {p0, v0, p1}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma;->cacheEvent(Ljava/lang/String;I)V

    return-void
.end method
