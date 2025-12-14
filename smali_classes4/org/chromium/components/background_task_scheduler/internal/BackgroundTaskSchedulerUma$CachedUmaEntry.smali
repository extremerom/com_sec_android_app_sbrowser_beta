.class Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma$CachedUmaEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CachedUmaEntry"
.end annotation


# instance fields
.field private mCount:I

.field private mEvent:Ljava/lang/String;

.field private mValue:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma$CachedUmaEntry;->mEvent:Ljava/lang/String;

    iput p2, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma$CachedUmaEntry;->mValue:I

    iput p3, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma$CachedUmaEntry;->mCount:I

    return-void
.end method

.method public static getStringForPartialMatching(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseEntry(Ljava/lang/String;)Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma$CachedUmaEntry;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x2

    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v3, p0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v3, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma$CachedUmaEntry;

    aget-object p0, p0, v1

    invoke-direct {v3, p0, v2, v0}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma$CachedUmaEntry;-><init>(Ljava/lang/String;II)V

    return-object v3

    :catch_0
    :cond_2
    :goto_0
    return-object v0
.end method


# virtual methods
.method public increment()V
    .locals 1

    iget v0, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma$CachedUmaEntry;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma$CachedUmaEntry;->mCount:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma$CachedUmaEntry;->mEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma$CachedUmaEntry;->mValue:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerUma$CachedUmaEntry;->mCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
