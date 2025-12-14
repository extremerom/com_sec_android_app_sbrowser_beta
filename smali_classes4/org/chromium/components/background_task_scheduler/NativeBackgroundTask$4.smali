.class Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;->buildStartWithNativeRunnable(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskParameters;Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;

.field final synthetic val$callback:Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$taskParameters:Lorg/chromium/components/background_task_scheduler/TaskParameters;


# direct methods
.method public constructor <init>(Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskParameters;Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$4;->this$0:Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;

    iput-object p2, p0, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$4;->val$taskParameters:Lorg/chromium/components/background_task_scheduler/TaskParameters;

    iput-object p4, p0, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$4;->val$callback:Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$4;->this$0:Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;

    invoke-static {v0}, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;->c(Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$4;->this$0:Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;

    iget-object v1, p0, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$4;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$4;->val$taskParameters:Lorg/chromium/components/background_task_scheduler/TaskParameters;

    iget-object p0, p0, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask$4;->val$callback:Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;

    invoke-virtual {v0, v1, v2, p0}, Lorg/chromium/components/background_task_scheduler/NativeBackgroundTask;->onStartTaskWithNative(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskParameters;Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)V

    return-void
.end method
