.class Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask;->onStartTask(Landroid/content/Context;Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskParameters;Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask$TerraceTaskFinishedCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask;

.field final synthetic val$callback:Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask$TerraceTaskFinishedCallback;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask;Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask$TerraceTaskFinishedCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask$2;->this$0:Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask$2;->val$callback:Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask$TerraceTaskFinishedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask$2;->val$callback:Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask$TerraceTaskFinishedCallback;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask$TerraceTaskFinishedCallback;->taskFinished(Z)V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask$2;->val$callback:Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask$TerraceTaskFinishedCallback;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask$TerraceTaskFinishedCallback;->taskFinished(Z)V

    return-void
.end method
