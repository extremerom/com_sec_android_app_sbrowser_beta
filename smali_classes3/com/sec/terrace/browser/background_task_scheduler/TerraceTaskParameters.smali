.class public Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mTaskParameters:Lorg/chromium/components/background_task_scheduler/TaskParameters;


# direct methods
.method private constructor <init>(Lorg/chromium/components/background_task_scheduler/TaskParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskParameters;->mTaskParameters:Lorg/chromium/components/background_task_scheduler/TaskParameters;

    return-void
.end method

.method public static from(Lorg/chromium/components/background_task_scheduler/TaskParameters;)Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskParameters;
    .locals 1

    new-instance v0, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskParameters;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskParameters;-><init>(Lorg/chromium/components/background_task_scheduler/TaskParameters;)V

    return-object v0
.end method


# virtual methods
.method public getExtras()Landroid/os/PersistableBundle;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskParameters;->mTaskParameters:Lorg/chromium/components/background_task_scheduler/TaskParameters;

    invoke-virtual {p0}, Lorg/chromium/components/background_task_scheduler/TaskParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    return-object p0
.end method
