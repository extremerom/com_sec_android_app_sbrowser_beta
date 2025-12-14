.class public Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TerraceOneOffInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo$Builder;
    }
.end annotation


# instance fields
.field private final mOrigin:Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;


# direct methods
.method private constructor <init>(Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo$Builder;->a(Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo$Builder;)Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;->build()Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo;->mOrigin:Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo$Builder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo;-><init>(Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo$Builder;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo;)Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo;->mOrigin:Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;

    return-object p0
.end method

.method public static create()Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo$Builder;
    .locals 2

    new-instance v0, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo$Builder;-><init>(I)V

    return-object v0
.end method
