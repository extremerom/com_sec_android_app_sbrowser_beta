.class public interface abstract Lorg/chromium/components/background_task_scheduler/BackgroundTaskScheduler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# virtual methods
.method public abstract cancel(Landroid/content/Context;I)V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract schedule(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskInfo;)Z
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method
