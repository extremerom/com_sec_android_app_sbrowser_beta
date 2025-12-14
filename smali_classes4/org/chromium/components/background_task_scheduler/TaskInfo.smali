.class public Lorg/chromium/components/background_task_scheduler/TaskInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;,
        Lorg/chromium/components/background_task_scheduler/TaskInfo$TimingInfo;,
        Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;,
        Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo;,
        Lorg/chromium/components/background_task_scheduler/TaskInfo$NetworkType;,
        Lorg/chromium/components/background_task_scheduler/TaskInfo$TimingInfoVisitor;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final SERIALIZED_TASK_EXTRAS:Ljava/lang/String; = "serialized_task_extras"


# instance fields
.field private final mExtras:Landroid/os/PersistableBundle;

.field private final mIsPersisted:Z

.field private final mRequiredNetworkType:I

.field private final mRequiresCharging:Z

.field private final mTaskId:I

.field private final mTimingInfo:Lorg/chromium/components/background_task_scheduler/TaskInfo$TimingInfo;

.field private final mUpdateCurrent:Z

.field private final mUserInitiated:Z


# direct methods
.method private constructor <init>(Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->e(Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;)I

    move-result v0

    iput v0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo;->mTaskId:I

    invoke-static {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->a(Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;)Landroid/os/PersistableBundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->a(Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;)Landroid/os/PersistableBundle;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo;->mExtras:Landroid/os/PersistableBundle;

    invoke-static {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->c(Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;)I

    move-result v0

    iput v0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo;->mRequiredNetworkType:I

    invoke-static {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->d(Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo;->mRequiresCharging:Z

    invoke-static {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->h(Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo;->mUserInitiated:Z

    invoke-static {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->b(Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo;->mIsPersisted:Z

    invoke-static {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->g(Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo;->mUpdateCurrent:Z

    invoke-static {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->f(Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;)Lorg/chromium/components/background_task_scheduler/TaskInfo$TimingInfo;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo;->mTimingInfo:Lorg/chromium/components/background_task_scheduler/TaskInfo$TimingInfo;

    instance-of p0, p1, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo;-><init>(Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;)V

    return-void
.end method

.method public static createOneOffTask(IJJ)Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;->create()Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;->setWindowStartTimeMs(J)Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;->setWindowEndTimeMs(J)Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;->build()Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;

    move-result-object p1

    new-instance p2, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;

    invoke-direct {p2, p0, p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;-><init>(ILorg/chromium/components/background_task_scheduler/TaskInfo$TimingInfo;)V

    return-object p2
.end method

.method public static createTask(ILorg/chromium/components/background_task_scheduler/TaskInfo$TimingInfo;)Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;
    .locals 1

    new-instance v0, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;

    invoke-direct {v0, p0, p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;-><init>(ILorg/chromium/components/background_task_scheduler/TaskInfo$TimingInfo;)V

    return-object v0
.end method


# virtual methods
.method public getExtras()Landroid/os/PersistableBundle;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo;->mExtras:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method public getRequiredNetworkType()I
    .locals 0

    iget p0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo;->mRequiredNetworkType:I

    return p0
.end method

.method public getTaskId()I
    .locals 0

    iget p0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo;->mTaskId:I

    return p0
.end method

.method public getTimingInfo()Lorg/chromium/components/background_task_scheduler/TaskInfo$TimingInfo;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo;->mTimingInfo:Lorg/chromium/components/background_task_scheduler/TaskInfo$TimingInfo;

    return-object p0
.end method

.method public isPersisted()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo;->mIsPersisted:Z

    return p0
.end method

.method public isUserInitiated()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo;->mUserInitiated:Z

    return p0
.end method

.method public requiresCharging()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo;->mRequiresCharging:Z

    return p0
.end method

.method public shouldUpdateCurrent()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo;->mUpdateCurrent:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{taskId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extras: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requiredNetworkType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo;->mRequiredNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requiresCharging: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo;->mRequiresCharging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", userInitiated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo;->mUserInitiated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPersisted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo;->mIsPersisted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", updateCurrent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo;->mUpdateCurrent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", timingInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo;->mTimingInfo:Lorg/chromium/components/background_task_scheduler/TaskInfo$TimingInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
