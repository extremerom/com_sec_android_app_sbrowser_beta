.class public abstract Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask;
.super Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTask$Delegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask$TerraceTaskFinishedCallback;
    }
.end annotation


# instance fields
.field private final mOrigin:Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTask$Delegate;-><init>()V

    new-instance v0, Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTask;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTask;-><init>(Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTask$Delegate;)V

    iput-object v0, p0, Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask;->mOrigin:Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTask;

    return-void
.end method


# virtual methods
.method public getOrigin()Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTask;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask;->mOrigin:Lcom/sec/terrace/browser/background_task_scheduler/TinBackgroundTask;

    return-object p0
.end method

.method public abstract onStartTask(Landroid/content/Context;Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskParameters;Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask$TerraceTaskFinishedCallback;)Z
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public onStartTask(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskParameters;Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)Z
    .locals 0

    invoke-static {p2}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskParameters;->from(Lorg/chromium/components/background_task_scheduler/TaskParameters;)Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskParameters;

    move-result-object p2

    invoke-static {p3}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask$TerraceTaskFinishedCallback;->from(Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask$TerraceTaskFinishedCallback;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask;->onStartTask(Landroid/content/Context;Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskParameters;Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask$TerraceTaskFinishedCallback;)Z

    move-result p0

    return p0
.end method

.method public abstract onStopTask(Landroid/content/Context;Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskParameters;)Z
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public onStopTask(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskParameters;)Z
    .locals 0

    invoke-static {p2}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskParameters;->from(Lorg/chromium/components/background_task_scheduler/TaskParameters;)Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskParameters;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask;->onStopTask(Landroid/content/Context;Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskParameters;)Z

    move-result p0

    return p0
.end method
