.class public Lcom/sec/android/app/sbrowser/common/utils/RotationManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;,
        Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Listener;,
        Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;,
        Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;
    }
.end annotation


# instance fields
.field private mLastRotation:I

.field private mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager;->mListeners:Ljava/util/HashSet;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/RotationManager;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager;->mLastRotation:I

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/common/utils/RotationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/RotationManager;->lambda$onDisplayChanged$0()V

    return-void
.end method

.method private getRotation()I
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    return p0
.end method

.method private synthetic lambda$onDisplayChanged$0()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/RotationManager;->getRotation()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager;->mLastRotation:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput v0, p0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager;->mLastRotation:I

    new-instance v2, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;

    invoke-direct {v2, v0, v3, v1}, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;-><init>(IIZ)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager;->mListeners:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Listener;

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Listener;->onRotationChanged(Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public addListener(Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Listener;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager;->mLastRotation:I

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;-><init>(II)V

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Listener;->onRotationChanged(Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;)V

    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 3

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, LG6/e;

    const/16 v1, 0x1a

    invoke-direct {v0, v1, p0}, LG6/e;-><init>(ILjava/lang/Object;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method public removeListener(Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager;->mListeners:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
