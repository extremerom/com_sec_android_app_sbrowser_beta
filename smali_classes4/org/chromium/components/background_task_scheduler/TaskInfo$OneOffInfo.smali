.class public Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;
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
    name = "OneOffInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;
    }
.end annotation


# instance fields
.field private final mExpiresAfterWindowEndTime:Z

.field private final mHasWindowEndTimeConstraint:Z

.field private final mHasWindowStartTimeConstraint:Z

.field private final mWindowEndTimeMs:J

.field private final mWindowStartTimeMs:J


# direct methods
.method private constructor <init>(Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;->e(Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;->mWindowStartTimeMs:J

    invoke-static {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;->d(Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;->mWindowEndTimeMs:J

    invoke-static {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;->c(Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;->mHasWindowStartTimeConstraint:Z

    invoke-static {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;->b(Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;->mHasWindowEndTimeConstraint:Z

    invoke-static {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;->a(Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;->mExpiresAfterWindowEndTime:Z

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;-><init>(Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;)V

    return-void
.end method

.method public static create()Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;
    .locals 1

    new-instance v0, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;

    invoke-direct {v0}, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;-><init>()V

    return-object v0
.end method

.method public static getExpirationStatus(JJJ)Z
    .locals 0

    add-long/2addr p0, p2

    cmp-long p0, p4, p0

    if-ltz p0, :cond_0

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

    invoke-interface {p1, p0}, Lorg/chromium/components/background_task_scheduler/TaskInfo$TimingInfoVisitor;->visit(Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;)V

    return-void
.end method

.method public expiresAfterWindowEndTime()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;->mExpiresAfterWindowEndTime:Z

    return p0
.end method

.method public getWindowEndTimeMs()J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;->mWindowEndTimeMs:J

    return-wide v0
.end method

.method public getWindowStartTimeMs()J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;->mWindowStartTimeMs:J

    return-wide v0
.end method

.method public hasWindowEndTimeConstraint()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;->mHasWindowEndTimeConstraint:Z

    return p0
.end method

.method public hasWindowStartTimeConstraint()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;->mHasWindowStartTimeConstraint:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;->hasWindowStartTimeConstraint()Z

    move-result v1

    const-string v2, ", "

    if-eqz v1, :cond_0

    const-string v1, "windowStartTimeMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;->mWindowStartTimeMs:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;->hasWindowEndTimeConstraint()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "windowEndTimeMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;->mWindowEndTimeMs:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "expiresAfterWindowEndTime (+flex): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;->mExpiresAfterWindowEndTime:Z

    const-string v1, "}"

    invoke-static {v1, v0, p0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->k(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
