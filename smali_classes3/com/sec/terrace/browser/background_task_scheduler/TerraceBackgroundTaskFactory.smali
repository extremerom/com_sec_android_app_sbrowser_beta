.class public abstract Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTaskFactory;
.super Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTaskFactory$Delegate;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTaskFactory$Delegate;-><init>()V

    return-void
.end method

.method public static setAsDefault(Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTaskFactory;)V
    .locals 0
    .param p0    # Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTaskFactory;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTaskFactory;->setAsDefault(Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTaskFactory$Delegate;)V

    return-void
.end method


# virtual methods
.method public abstract getBackgroundExternalTaskFromTaskId(I)Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask;
.end method

.method public getBackgroundTaskFromTaskId(I)Lorg/chromium/components/background_task_scheduler/BackgroundTask;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTaskFactory;->getBackgroundExternalTaskFromTaskId(I)Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask;->getOrigin()Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTask;

    move-result-object p0

    return-object p0
.end method
