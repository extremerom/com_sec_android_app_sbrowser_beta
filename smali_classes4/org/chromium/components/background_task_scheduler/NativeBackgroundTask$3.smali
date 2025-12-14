.class Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;->buildRescheduleRunnable(Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;

.field final synthetic val$callback:Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;


# direct methods
.method public constructor <init>(Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$3;->this$0:Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;

    iput-object p2, p0, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$3;->val$callback:Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$3;->this$0:Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;

    invoke-static {v0}, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;->c(Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$3;->val$callback:Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;->taskFinished(Z)V

    return-void
.end method
