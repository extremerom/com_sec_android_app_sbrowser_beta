.class public final Landroidx/window/extensions/embedding/SplitAttributes$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/extensions/embedding/SplitAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAnimationBackgroundColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private mLayoutDirection:I

.field private mSplitType:Landroidx/window/extensions/embedding/SplitAttributes$SplitType;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/window/extensions/embedding/SplitAttributes$SplitType$RatioSplitType;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Landroidx/window/extensions/embedding/SplitAttributes$SplitType$RatioSplitType;-><init>(F)V

    iput-object v0, p0, Landroidx/window/extensions/embedding/SplitAttributes$Builder;->mSplitType:Landroidx/window/extensions/embedding/SplitAttributes$SplitType;

    const/4 v0, 0x3

    iput v0, p0, Landroidx/window/extensions/embedding/SplitAttributes$Builder;->mLayoutDirection:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/window/extensions/embedding/SplitAttributes$Builder;->mAnimationBackgroundColor:I

    return-void
.end method


# virtual methods
.method public build()Landroidx/window/extensions/embedding/SplitAttributes;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroidx/window/extensions/embedding/SplitAttributes;

    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitAttributes$Builder;->mSplitType:Landroidx/window/extensions/embedding/SplitAttributes$SplitType;

    iget v2, p0, Landroidx/window/extensions/embedding/SplitAttributes$Builder;->mLayoutDirection:I

    iget p0, p0, Landroidx/window/extensions/embedding/SplitAttributes$Builder;->mAnimationBackgroundColor:I

    invoke-direct {v0, v1, v2, p0}, Landroidx/window/extensions/embedding/SplitAttributes;-><init>(Landroidx/window/extensions/embedding/SplitAttributes$SplitType;II)V

    return-object v0
.end method

.method public setAnimationBackgroundColor(I)Landroidx/window/extensions/embedding/SplitAttributes$Builder;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Landroidx/window/extensions/embedding/SplitAttributes$Builder;->mAnimationBackgroundColor:I

    return-object p0
.end method

.method public setLayoutDirection(I)Landroidx/window/extensions/embedding/SplitAttributes$Builder;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Landroidx/window/extensions/embedding/SplitAttributes$Builder;->mLayoutDirection:I

    return-object p0
.end method

.method public setSplitType(Landroidx/window/extensions/embedding/SplitAttributes$SplitType;)Landroidx/window/extensions/embedding/SplitAttributes$Builder;
    .locals 0
    .param p1    # Landroidx/window/extensions/embedding/SplitAttributes$SplitType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Landroidx/window/extensions/embedding/SplitAttributes$Builder;->mSplitType:Landroidx/window/extensions/embedding/SplitAttributes$SplitType;

    return-object p0
.end method
