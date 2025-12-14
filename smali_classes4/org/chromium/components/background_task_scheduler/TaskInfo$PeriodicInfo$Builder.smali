.class public final Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mExpiresAfterWindowEndTime:Z

.field private mFlexMs:J

.field private mHasFlex:Z

.field private mIntervalMs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo$Builder;->mExpiresAfterWindowEndTime:Z

    return p0
.end method

.method public static bridge synthetic b(Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo$Builder;)J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo$Builder;->mFlexMs:J

    return-wide v0
.end method

.method public static bridge synthetic c(Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo$Builder;->mHasFlex:Z

    return p0
.end method

.method public static bridge synthetic d(Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo$Builder;)J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo$Builder;->mIntervalMs:J

    return-wide v0
.end method


# virtual methods
.method public build()Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo;
    .locals 2

    new-instance v0, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo;-><init>(Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo$Builder;I)V

    return-object v0
.end method

.method public setExpiresAfterWindowEndTime(Z)Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo$Builder;->mExpiresAfterWindowEndTime:Z

    return-object p0
.end method

.method public setFlexMs(J)Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo$Builder;
    .locals 0

    iput-wide p1, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo$Builder;->mFlexMs:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo$Builder;->mHasFlex:Z

    return-object p0
.end method

.method public setIntervalMs(J)Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo$Builder;
    .locals 0

    iput-wide p1, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo$Builder;->mIntervalMs:J

    return-object p0
.end method
