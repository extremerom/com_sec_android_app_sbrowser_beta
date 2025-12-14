.class public Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sBoundHeight:I = 0x0

.field private static sBoundWidth:I = 0x0

.field private static sNoDisplayFeatures:Z = false

.field private static sPosture:I


# direct methods
.method public static getBoundHeight()I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget v0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeUtil;->sBoundHeight:I

    return v0
.end method

.method public static getBoundWidth()I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget v0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeUtil;->sBoundWidth:I

    return v0
.end method

.method public static getDevicePosture()I
    .locals 1

    sget v0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeUtil;->sPosture:I

    return v0
.end method

.method public static isHalfOpened()Z
    .locals 2

    sget v0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeUtil;->sPosture:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget v0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeUtil;->sBoundWidth:I

    if-gtz v0, :cond_0

    sget v0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeUtil;->sBoundHeight:I

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isHorizontalLayout()Z
    .locals 1

    sget v0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeUtil;->sBoundWidth:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNoDisplayFeatures()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeUtil;->sNoDisplayFeatures:Z

    return v0
.end method

.method public static resetDisplayFeatureBound()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeUtil;->sBoundWidth:I

    sput v0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeUtil;->sBoundHeight:I

    return-void
.end method

.method public static setDevicePosture(I)V
    .locals 3

    sput p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeUtil;->sPosture:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isEngBinary()Z

    move-result v0

    const-string v1, "FlexModeUtil"

    if-nez v0, :cond_0

    const-string v0, "postures = "

    invoke-static {p0, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, "DeviceState.POSTURE_FLIPPED"

    goto :goto_0

    :cond_2
    const-string v0, "DeviceState.POSTURE_OPENED"

    goto :goto_0

    :cond_3
    const-string v0, "DeviceState.POSTURE_HALF_OPENED"

    goto :goto_0

    :cond_4
    const-string v0, "DeviceState.POSTURE_CLOSED"

    goto :goto_0

    :cond_5
    const-string v0, "DeviceState.POSTURE_UNKNOWN"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static updateDisplayFeature(Landroidx/window/WindowLayoutInfo;)V
    .locals 3
    .param p0    # Landroidx/window/WindowLayoutInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateDisplayFeature: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlexModeUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/window/WindowLayoutInfo;->getDisplayFeatures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string p0, "No display features"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeUtil;->resetDisplayFeatureBound()V

    sput-boolean v2, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeUtil;->sNoDisplayFeatures:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeUtil;->sNoDisplayFeatures:Z

    invoke-virtual {p0}, Landroidx/window/WindowLayoutInfo;->getDisplayFeatures()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/window/DisplayFeature;

    invoke-virtual {v0}, Landroidx/window/DisplayFeature;->getType()I

    move-result v1

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/window/DisplayFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sput v0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeUtil;->sBoundWidth:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    sput p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeUtil;->sBoundHeight:I

    :cond_2
    return-void
.end method
