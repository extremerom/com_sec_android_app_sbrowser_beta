.class public Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/background_task_scheduler/TaskInfo$TimingInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/background_task_scheduler/TaskInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeriodicInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo$Builder;
    }
.end annotation


# instance fields
.field private final mExpiresAfterWindowEndTime:Z

.field private final mFlexMs:J

.field private final mHasFlex:Z

.field private final mIntervalMs:J


# direct methods
.method private constructor <init>(Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo$Builder;->d(Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo;->mIntervalMs:J

    invoke-static {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo$Builder;->b(Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo;->mFlexMs:J

    invoke-static {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo$Builder;->c(Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo;->mHasFlex:Z

    invoke-static {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo$Builder;->a(Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo;->mExpiresAfterWindowEndTime:Z

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo$Builder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo;-><init>(Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo$Builder;)V

    return-void
.end method

.method public static create()Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo$Builder;
    .locals 1

    new-instance v0, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo$Builder;

    invoke-direct {v0}, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo$Builder;-><init>()V

    return-object v0
.end method

.method public static getExpirationStatus(JJJJ)Z
    .locals 0

    sub-long/2addr p6, p0

    rem-long/2addr p6, p2

    sub-long p0, p2, p4

    cmp-long p0, p6, p0

    if-gez p0, :cond_0

    cmp-long p0, p4, p2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public accept(Lorg/chromium/components/background_task_scheduler/TaskInfo$TimingInfoVisitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lorg/chromium/components/background_task_scheduler/TaskInfo$TimingInfoVisitor;->visit(Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo;)V

    return-void
.end method

.method public expiresAfterWindowEndTime()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo;->mExpiresAfterWindowEndTime:Z

    return p0
.end method

.method public getFlexMs()J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo;->mFlexMs:J

    return-wide v0
.end method

.method public getIntervalMs()J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo;->mIntervalMs:J

    return-wide v0
.end method

.method public hasFlex()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo;->mHasFlex:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{intervalMs: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo;->mIntervalMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo;->mHasFlex:Z

    if-eqz v2, :cond_0

    const-string v2, ", flexMs: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo;->mFlexMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "expiresAfterWindowEndTime (+flex): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo;->mExpiresAfterWindowEndTime:Z

    const-string v1, "}"

    invoke-static {v1, v0, p0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->k(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
