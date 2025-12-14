.class public final Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mOrigin:Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo;->create()Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo$Builder;->mOrigin:Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo$Builder;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo$Builder;)Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo$Builder;->mOrigin:Lorg/chromium/components/background_task_scheduler/TaskInfo$OneOffInfo$Builder;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo;
    .locals 2

    new-instance v0, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo;-><init>(Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo$Builder;I)V

    return-object v0
.end method
