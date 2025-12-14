.class Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl$SchedulingVisitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/background_task_scheduler/TaskInfo$TimingInfoVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SchedulingVisitor"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSuccess:Z

.field private mTaskInfo:Lorg/chromium/components/background_task_scheduler/TaskInfo;

.field final synthetic this$0:Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl;Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskInfo;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl$SchedulingVisitor;->this$0:Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl$SchedulingVisitor;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl$SchedulingVisitor;->mTaskInfo:Lorg/chromium/components/background_task_scheduler/TaskInfo;

    return-void
.end method


# virtual methods
.method public getSuccess()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl$SchedulingVisitor;->mSuccess:Z

    return p0
.end method

.method public visit(Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;)V
    .locals 2

    iget-object p1, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl$SchedulingVisitor;->this$0:Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl;

    invoke-static {p1}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl;->a(Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl;)Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerDelegate;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl$SchedulingVisitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl$SchedulingVisitor;->mTaskInfo:Lorg/chromium/components/background_task_scheduler/TaskInfo;

    invoke-interface {p1, v0, v1}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerDelegate;->schedule(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskInfo;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl$SchedulingVisitor;->mSuccess:Z

    return-void
.end method

.method public visit(Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo;)V
    .locals 2

    iget-object p1, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl$SchedulingVisitor;->this$0:Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl;

    invoke-static {p1}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl;->a(Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl;)Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerDelegate;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl$SchedulingVisitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl$SchedulingVisitor;->mTaskInfo:Lorg/chromium/components/background_task_scheduler/TaskInfo;

    invoke-interface {p1, v0, v1}, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerDelegate;->schedule(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskInfo;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/chromium/components/background_task_scheduler/internal/BackgroundTaskSchedulerImpl$SchedulingVisitor;->mSuccess:Z

    return-void
.end method
