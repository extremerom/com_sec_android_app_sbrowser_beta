.class public final Landroidx/window/extensions/embedding/SplitAttributes$SplitType$RatioSplitType;
.super Landroidx/window/extensions/embedding/SplitAttributes$SplitType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/extensions/embedding/SplitAttributes$SplitType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RatioSplitType"
.end annotation


# instance fields
.field private final mRatio:F
    .annotation build Landroidx/annotation/FloatRange;
    .end annotation
.end field


# direct methods
.method public constructor <init>(F)V
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ratio:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/window/extensions/embedding/SplitAttributes$SplitType;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_0

    iput p1, p0, Landroidx/window/extensions/embedding/SplitAttributes$SplitType$RatioSplitType;->mRatio:F

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Ratio must be in range (0.0, 1.0).  Use SplitType.ExpandContainersSplitType() instead of 0 or 1."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static splitEqually()Landroidx/window/extensions/embedding/SplitAttributes$SplitType$RatioSplitType;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroidx/window/extensions/embedding/SplitAttributes$SplitType$RatioSplitType;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Landroidx/window/extensions/embedding/SplitAttributes$SplitType$RatioSplitType;-><init>(F)V

    return-object v0
.end method


# virtual methods
.method public getRatio()F
    .locals 0
    .annotation build Landroidx/annotation/FloatRange;
    .end annotation

    iget p0, p0, Landroidx/window/extensions/embedding/SplitAttributes$SplitType$RatioSplitType;->mRatio:F

    return p0
.end method
