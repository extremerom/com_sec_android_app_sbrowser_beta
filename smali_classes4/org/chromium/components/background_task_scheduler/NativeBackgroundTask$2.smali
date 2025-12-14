.class Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;->runWithNative(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;

.field final synthetic val$rescheduleRunnable:Ljava/lang/Runnable;

.field final synthetic val$startWithNativeRunnable:Ljava/lang/Runnable;

.field final synthetic val$wasInMinimalBrowserMode:Z


# direct methods
.method public constructor <init>(Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;ZLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$2;->this$0:Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;

    iput-boolean p2, p0, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$2;->val$wasInMinimalBrowserMode:Z

    iput-object p3, p0, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$2;->val$startWithNativeRunnable:Ljava/lang/Runnable;

    iput-object p4, p0, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$2;->val$rescheduleRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$2;->this$0:Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;

    invoke-static {v0}, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;->c(Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$2;->val$wasInMinimalBrowserMode:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$2;->this$0:Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;

    invoke-static {v0}, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;->d(Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;)Lorg/chromium/components/background_task_scheduler/BackgroundTaskSchedulerExternalUma;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$2;->this$0:Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;

    iget v1, v1, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;->mTaskId:I

    invoke-virtual {v0, v1}, Lorg/chromium/components/background_task_scheduler/BackgroundTaskSchedulerExternalUma;->reportTaskStartedNative(I)V

    :cond_1
    iget-object v0, p0, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$2;->this$0:Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;

    invoke-static {v0}, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;->a(Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;)Lorg/chromium/components/background_task_scheduler/NativeBackgroundTaskDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$2;->this$0:Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;

    invoke-static {v1}, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;->b(Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;)Z

    move-result v1

    iget-object v2, p0, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$2;->val$startWithNativeRunnable:Ljava/lang/Runnable;

    iget-object p0, p0, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$2;->val$rescheduleRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTaskDelegate;->initializeNativeAsync(ZLjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method
