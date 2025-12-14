.class public Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "[MM]FlexModeOrientation"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mBlocked:Z

.field private mOrientEventListener:Landroid/view/OrientationEventListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;->lambda$setBlocked$0()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;)Landroid/view/OrientationEventListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;->mOrientEventListener:Landroid/view/OrientationEventListener;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;->mOrientEventListener:Landroid/view/OrientationEventListener;

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;->isPortrait(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;->toggleRotation()V

    return-void
.end method

.method public static bridge synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private isPortrait(I)Z
    .locals 0

    const/16 p0, 0x1e

    if-le p1, p0, :cond_1

    const/16 p0, 0x14a

    if-lt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$setBlocked$0()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;->mBlocked:Z

    return-void
.end method

.method private toggleRotation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method


# virtual methods
.method public setBlocked()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;->mBlocked:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/download/b;

    const/16 v2, 0x8

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/download/b;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public tryOrientationChange()V
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;->TAG:Ljava/lang/String;

    const-string v1, "tryOrientationChange"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeFold()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;->mBlocked:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;->mOrientEventListener:Landroid/view/OrientationEventListener;

    if-eqz v1, :cond_2

    return-void

    :cond_2
    new-instance v1, Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation$1;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x3

    invoke-direct {v1, p0, v2, v3}, Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation$1;-><init>(Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;->mOrientEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "tryOrientationChange : OrientEventListener enable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;->mOrientEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    :cond_3
    const-string v1, "tryOrientationChange : cannot detect orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;->mOrientEventListener:Landroid/view/OrientationEventListener;

    :goto_0
    return-void
.end method
