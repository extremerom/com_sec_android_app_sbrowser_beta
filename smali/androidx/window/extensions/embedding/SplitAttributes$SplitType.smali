.class public Landroidx/window/extensions/embedding/SplitAttributes$SplitType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/extensions/embedding/SplitAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplitType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/extensions/embedding/SplitAttributes$SplitType$ExpandContainersSplitType;,
        Landroidx/window/extensions/embedding/SplitAttributes$SplitType$RatioSplitType;,
        Landroidx/window/extensions/embedding/SplitAttributes$SplitType$HingeSplitType;
    }
.end annotation


# instance fields
.field private final mDescription:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/extensions/embedding/SplitAttributes$SplitType;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public static createSplitTypeFromLegacySplitRatio(F)Landroidx/window/extensions/embedding/SplitAttributes$SplitType;
    .locals 4
    .param p0    # F
        .annotation build Landroidx/annotation/FloatRange;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    float-to-double v0, p0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/window/extensions/embedding/SplitAttributes$SplitType$RatioSplitType;

    invoke-direct {v0, p0}, Landroidx/window/extensions/embedding/SplitAttributes$SplitType$RatioSplitType;-><init>(F)V

    return-object v0

    :cond_1
    :goto_0
    new-instance p0, Landroidx/window/extensions/embedding/SplitAttributes$SplitType$ExpandContainersSplitType;

    invoke-direct {p0}, Landroidx/window/extensions/embedding/SplitAttributes$SplitType$ExpandContainersSplitType;-><init>()V

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Landroidx/window/extensions/embedding/SplitAttributes$SplitType;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Landroidx/window/extensions/embedding/SplitAttributes$SplitType;

    iget-object p0, p0, Landroidx/window/extensions/embedding/SplitAttributes$SplitType;->mDescription:Ljava/lang/String;

    iget-object p1, p1, Landroidx/window/extensions/embedding/SplitAttributes$SplitType;->mDescription:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/window/extensions/embedding/SplitAttributes$SplitType;->mDescription:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Landroidx/window/extensions/embedding/SplitAttributes$SplitType;->mDescription:Ljava/lang/String;

    return-object p0
.end method
