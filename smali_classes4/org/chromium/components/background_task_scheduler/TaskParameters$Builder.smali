.class public final Lorg/chromium/components/background_task_scheduler/TaskParameters$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/background_task_scheduler/TaskParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mExtras:Landroid/os/PersistableBundle;

.field private final mTaskId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/components/background_task_scheduler/TaskParameters$Builder;->mTaskId:I

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/components/background_task_scheduler/TaskParameters$Builder;)Landroid/os/PersistableBundle;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/background_task_scheduler/TaskParameters$Builder;->mExtras:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/chromium/components/background_task_scheduler/TaskParameters$Builder;)I
    .locals 0

    iget p0, p0, Lorg/chromium/components/background_task_scheduler/TaskParameters$Builder;->mTaskId:I

    return p0
.end method


# virtual methods
.method public addExtras(Landroid/os/PersistableBundle;)Lorg/chromium/components/background_task_scheduler/TaskParameters$Builder;
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/background_task_scheduler/TaskParameters$Builder;->mExtras:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method public build()Lorg/chromium/components/background_task_scheduler/TaskParameters;
    .locals 2

    new-instance v0, Lorg/chromium/components/background_task_scheduler/TaskParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/components/background_task_scheduler/TaskParameters;-><init>(Lorg/chromium/components/background_task_scheduler/TaskParameters$Builder;I)V

    return-object v0
.end method
