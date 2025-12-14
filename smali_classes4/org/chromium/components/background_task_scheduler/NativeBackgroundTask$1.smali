.class Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;->onStartTask(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskParameters;Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)Z
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

    iput-object p1, p0, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$1;->this$0:Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;

    iput-object p2, p0, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$1;->val$callback:Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;Z)V
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$1;->lambda$taskFinished$0(Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;Z)V

    return-void
.end method

.method private static synthetic lambda$taskFinished$0(Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;Z)V
    .locals 0

    invoke-interface {p0, p1}, Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;->taskFinished(Z)V

    return-void
.end method


# virtual methods
.method public taskFinished(Z)V
    .locals 1

    iget-object p0, p0, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$1;->val$callback:Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;

    new-instance v0, Lorg/chromium/components/background_task_scheduler/a;

    invoke-direct {v0, p0, p1}, Lorg/chromium/components/background_task_scheduler/a;-><init>(Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;Z)V

    const/4 p0, 0x7

    invoke-static {p0, v0}, Lorg/chromium/base/task/PostTask;->runOrPostTask(ILjava/lang/Runnable;)V

    return-void
.end method
