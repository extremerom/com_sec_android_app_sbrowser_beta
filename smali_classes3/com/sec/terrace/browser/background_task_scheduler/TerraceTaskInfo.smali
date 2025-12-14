.class public Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;,
        Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo;,
        Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TaskNetworkType;
    }
.end annotation


# instance fields
.field private final mOrigin:Lorg/chromium/components/background_task_scheduler/TaskInfo;


# direct methods
.method private constructor <init>(Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;->a(Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;)Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->build()Lorg/chromium/components/background_task_scheduler/TaskInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo;->mOrigin:Lorg/chromium/components/background_task_scheduler/TaskInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo;-><init>(Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;)V

    return-void
.end method

.method public static create(ILcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo;)Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;
    .locals 1

    new-instance v0, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;

    invoke-direct {v0, p0, p1}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;-><init>(ILcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo;)V

    return-object v0
.end method


# virtual methods
.method public getOrigin()Lorg/chromium/components/background_task_scheduler/TaskInfo;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo;->mOrigin:Lorg/chromium/components/background_task_scheduler/TaskInfo;

    return-object p0
.end method
