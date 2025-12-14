.class public interface abstract Lorg/chromium/components/background_task_scheduler/BackgroundTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# virtual methods
.method public abstract onStartTask(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskParameters;Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)Z
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract onStopTask(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskParameters;)Z
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method
