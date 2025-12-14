.class Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/background_task_scheduler/BackgroundTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTask$Delegate;
    }
.end annotation


# instance fields
.field private mDelegate:Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTask$Delegate;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTask$Delegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTask;->mDelegate:Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTask$Delegate;

    return-void
.end method


# virtual methods
.method public onStartTask(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskParameters;Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTask;->mDelegate:Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTask$Delegate;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTask$Delegate;->onStartTask(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskParameters;Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)Z

    move-result p0

    return p0
.end method

.method public onStopTask(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskParameters;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTask;->mDelegate:Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTask$Delegate;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTask$Delegate;->onStopTask(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskParameters;)Z

    move-result p0

    return p0
.end method
