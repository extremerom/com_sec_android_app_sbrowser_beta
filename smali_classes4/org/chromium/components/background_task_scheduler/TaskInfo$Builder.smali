.class public final Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/background_task_scheduler/TaskInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mExtras:Landroid/os/PersistableBundle;

.field private mIsPersisted:Z

.field private mRequiredNetworkType:I

.field private mRequiresCharging:Z

.field private final mTaskId:I

.field private mTimingInfo:Lorg/chromium/components/background_task_scheduler/TaskInfo$TimingInfo;

.field private mUpdateCurrent:Z

.field private mUserInitiated:Z


# direct methods
.method public constructor <init>(ILorg/chromium/components/background_task_scheduler/TaskInfo$TimingInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->mTaskId:I

    iput-object p2, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->mTimingInfo:Lorg/chromium/components/background_task_scheduler/TaskInfo$TimingInfo;

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;)Landroid/os/PersistableBundle;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->mIsPersisted:Z

    return p0
.end method

.method public static bridge synthetic c(Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;)I
    .locals 0

    iget p0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->mRequiredNetworkType:I

    return p0
.end method

.method public static bridge synthetic d(Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->mRequiresCharging:Z

    return p0
.end method

.method public static bridge synthetic e(Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;)I
    .locals 0

    iget p0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->mTaskId:I

    return p0
.end method

.method public static bridge synthetic f(Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;)Lorg/chromium/components/background_task_scheduler/TaskInfo$TimingInfo;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->mTimingInfo:Lorg/chromium/components/background_task_scheduler/TaskInfo$TimingInfo;

    return-object p0
.end method

.method public static bridge synthetic g(Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->mUpdateCurrent:Z

    return p0
.end method

.method public static bridge synthetic h(Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->mUserInitiated:Z

    return p0
.end method


# virtual methods
.method public build()Lorg/chromium/components/background_task_scheduler/TaskInfo;
    .locals 2

    new-instance v0, Lorg/chromium/components/background_task_scheduler/TaskInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/components/background_task_scheduler/TaskInfo;-><init>(Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;I)V

    return-object v0
.end method

.method public setExtras(Landroid/os/PersistableBundle;)Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method public setIsPersisted(Z)Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->mIsPersisted:Z

    return-object p0
.end method

.method public setRequiredNetworkType(I)Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;
    .locals 0

    iput p1, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->mRequiredNetworkType:I

    return-object p0
.end method

.method public setRequiresCharging(Z)Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->mRequiresCharging:Z

    return-object p0
.end method

.method public setUpdateCurrent(Z)Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->mUpdateCurrent:Z

    return-object p0
.end method
