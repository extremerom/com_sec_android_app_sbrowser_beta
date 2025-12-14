.class public Lorg/chromium/components/background_task_scheduler/TaskParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/background_task_scheduler/TaskParameters$Builder;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mExtras:Landroid/os/PersistableBundle;

.field private final mTaskId:I


# direct methods
.method private constructor <init>(Lorg/chromium/components/background_task_scheduler/TaskParameters$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/chromium/components/background_task_scheduler/TaskParameters$Builder;->b(Lorg/chromium/components/background_task_scheduler/TaskParameters$Builder;)I

    move-result v0

    iput v0, p0, Lorg/chromium/components/background_task_scheduler/TaskParameters;->mTaskId:I

    invoke-static {p1}, Lorg/chromium/components/background_task_scheduler/TaskParameters$Builder;->a(Lorg/chromium/components/background_task_scheduler/TaskParameters$Builder;)Landroid/os/PersistableBundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Landroid/os/PersistableBundle;

    invoke-direct {p1}, Landroid/os/PersistableBundle;-><init>()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/chromium/components/background_task_scheduler/TaskParameters$Builder;->a(Lorg/chromium/components/background_task_scheduler/TaskParameters$Builder;)Landroid/os/PersistableBundle;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/chromium/components/background_task_scheduler/TaskParameters;->mExtras:Landroid/os/PersistableBundle;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/components/background_task_scheduler/TaskParameters$Builder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/components/background_task_scheduler/TaskParameters;-><init>(Lorg/chromium/components/background_task_scheduler/TaskParameters$Builder;)V

    return-void
.end method

.method public static create(I)Lorg/chromium/components/background_task_scheduler/TaskParameters$Builder;
    .locals 1

    new-instance v0, Lorg/chromium/components/background_task_scheduler/TaskParameters$Builder;

    invoke-direct {v0, p0}, Lorg/chromium/components/background_task_scheduler/TaskParameters$Builder;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getExtras()Landroid/os/PersistableBundle;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/background_task_scheduler/TaskParameters;->mExtras:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method public getTaskId()I
    .locals 0

    iget p0, p0, Lorg/chromium/components/background_task_scheduler/TaskParameters;->mTaskId:I

    return p0
.end method
