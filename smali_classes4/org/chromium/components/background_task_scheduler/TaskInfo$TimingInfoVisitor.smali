.class public interface abstract Lorg/chromium/components/background_task_scheduler/TaskInfo$TimingInfoVisitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/background_task_scheduler/TaskInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TimingInfoVisitor"
.end annotation


# virtual methods
.method public abstract visit(Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;)V
.end method

.method public abstract visit(Lorg/chromium/components/background_task_scheduler/TaskInfo$PeriodicInfo;)V
.end method
