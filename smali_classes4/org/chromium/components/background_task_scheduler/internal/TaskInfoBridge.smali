.class public Lorg/chromium/components/background_task_scheduler/internal/TaskInfoBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method private static createOneOffInfo(JJZ)Lorg/chromium/components/background_task_scheduler/TaskInfo$TimingInfo;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;->create()Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;->setWindowEndTimeMs(J)Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;

    move-result-object p2

    invoke-virtual {p2, p4}, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;->setExpiresAfterWindowEndTime(Z)Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;

    move-result-object p2

    const-wide/16 p3, 0x0

    cmp-long p3, p0, p3

    if-lez p3, :cond_0

    invoke-virtual {p2, p0, p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;->setWindowStartTimeMs(J)Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;

    :cond_0
    invoke-virtual {p2}, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;->build()Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;

    move-result-object p0

    return-object p0
.end method

.method private static createPeriodicInfo(JJZ)Lorg/chromium/components/background_task_scheduler/TaskInfo$TimingInfo;
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo;->create()Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo$Builder;->setIntervalMs(J)Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, p4}, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo$Builder;->setExpiresAfterWindowEndTime(Z)Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo$Builder;

    move-result-object p0

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_0

    invoke-virtual {p0, p2, p3}, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo$Builder;->setFlexMs(J)Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo$Builder;

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo$Builder;->build()Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo;

    move-result-object p0

    return-object p0
.end method

.method private static createTaskInfo(ILorg/chromium/components/background_task_scheduler/TaskInfo$TimingInfo;Ljava/lang/String;IZZZ)Lorg/chromium/components/background_task_scheduler/TaskInfo;
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const-string v1, "serialized_task_extras"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo;->createTask(ILorg/chromium/components/background_task_scheduler/TaskInfo$TimingInfo;)Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->setRequiredNetworkType(I)Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, p4}, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->setRequiresCharging(Z)Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, p6}, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->setUpdateCurrent(Z)Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, p5}, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->setIsPersisted(Z)Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->build()Lorg/chromium/components/background_task_scheduler/TaskInfo;

    move-result-object p0

    return-object p0
.end method
