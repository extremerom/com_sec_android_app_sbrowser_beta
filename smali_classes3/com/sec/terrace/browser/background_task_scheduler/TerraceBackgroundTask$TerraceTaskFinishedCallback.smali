.class public Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask$TerraceTaskFinishedCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TerraceTaskFinishedCallback"
.end annotation


# instance fields
.field private mCallback:Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;


# direct methods
.method private constructor <init>(Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask$TerraceTaskFinishedCallback;->mCallback:Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;

    return-void
.end method

.method public static from(Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask$TerraceTaskFinishedCallback;
    .locals 1

    new-instance v0, Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask$TerraceTaskFinishedCallback;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask$TerraceTaskFinishedCallback;-><init>(Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;)V

    return-object v0
.end method


# virtual methods
.method public taskFinished(Z)V
    .locals 0
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask$TerraceTaskFinishedCallback;->mCallback:Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;

    invoke-interface {p0, p1}, Lorg/chromium/components/background_task_scheduler/BackgroundTask$TaskFinishedCallback;->taskFinished(Z)V

    return-void
.end method
