.class Lcom/sec/terrace/browser/background_task_scheduler/TinNativeBackgroundTaskDelegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content_public/browser/BrowserStartupController$StartupCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/background_task_scheduler/TinNativeBackgroundTaskDelegate;->initializeNativeAsync(ZLjava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/background_task_scheduler/TinNativeBackgroundTaskDelegate;

.field final synthetic val$onFailure:Ljava/lang/Runnable;

.field final synthetic val$onSuccess:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/background_task_scheduler/TinNativeBackgroundTaskDelegate;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/background_task_scheduler/TinNativeBackgroundTaskDelegate$1;->this$0:Lcom/sec/terrace/browser/background_task_scheduler/TinNativeBackgroundTaskDelegate;

    iput-object p2, p0, Lcom/sec/terrace/browser/background_task_scheduler/TinNativeBackgroundTaskDelegate$1;->val$onSuccess:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/sec/terrace/browser/background_task_scheduler/TinNativeBackgroundTaskDelegate$1;->val$onFailure:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 1

    const/4 v0, 0x7

    iget-object p0, p0, Lcom/sec/terrace/browser/background_task_scheduler/TinNativeBackgroundTaskDelegate$1;->val$onFailure:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    const/4 v0, 0x7

    iget-object p0, p0, Lcom/sec/terrace/browser/background_task_scheduler/TinNativeBackgroundTaskDelegate$1;->val$onSuccess:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    return-void
.end method
