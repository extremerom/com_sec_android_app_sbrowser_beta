.class public final Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mOrigin:Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;


# direct methods
.method public constructor <init>(ILcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo;->a(Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo;)Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/chromium/components/background_task_scheduler/TaskInfo;->createTask(ILorg/chromium/components/background_task_scheduler/TaskInfo$TimingInfo;)Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;->mOrigin:Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;)Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;->mOrigin:Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo;
    .locals 2

    new-instance v0, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo;-><init>(Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;I)V

    return-object v0
.end method

.method public setExtras(Landroid/os/PersistableBundle;)Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;->mOrigin:Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;

    invoke-virtual {v0, p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;

    return-object p0
.end method

.method public setIsPersisted(Z)Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;->mOrigin:Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;

    invoke-virtual {v0, p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->setIsPersisted(Z)Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;

    return-object p0
.end method

.method public setRequiredNetworkType(I)Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;->mOrigin:Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;

    invoke-virtual {v0, p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->setRequiredNetworkType(I)Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;

    return-object p0
.end method

.method public setUpdateCurrent(Z)Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;->mOrigin:Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;

    invoke-virtual {v0, p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->setUpdateCurrent(Z)Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;

    return-object p0
.end method
