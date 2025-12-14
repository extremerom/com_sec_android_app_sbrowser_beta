.class public Landroidx/window/extensions/embedding/SplitAttributes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/extensions/embedding/SplitAttributes$LayoutDirection;,
        Landroidx/window/extensions/embedding/SplitAttributes$SplitType;,
        Landroidx/window/extensions/embedding/SplitAttributes$Builder;,
        Landroidx/window/extensions/embedding/SplitAttributes$ExtLayoutDirection;
    }
.end annotation


# static fields
.field public static final DEFAULT_ANIMATION_BACKGROUND_COLOR:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation
.end field


# instance fields
.field private final mAnimationBackgroundColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private final mLayoutDirection:I

.field private final mSplitType:Landroidx/window/extensions/embedding/SplitAttributes$SplitType;


# direct methods
.method public constructor <init>(Landroidx/window/extensions/embedding/SplitAttributes$SplitType;II)V
    .locals 0
    .param p1    # Landroidx/window/extensions/embedding/SplitAttributes$SplitType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/extensions/embedding/SplitAttributes;->mSplitType:Landroidx/window/extensions/embedding/SplitAttributes$SplitType;

    iput p2, p0, Landroidx/window/extensions/embedding/SplitAttributes;->mLayoutDirection:I

    iput p3, p0, Landroidx/window/extensions/embedding/SplitAttributes;->mAnimationBackgroundColor:I

    return-void
.end method

.method private layoutDirectionToString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p0, Landroidx/window/extensions/embedding/SplitAttributes;->mLayoutDirection:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const-string p0, "BOTTOM_TO_TOP"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget p0, p0, Landroidx/window/extensions/embedding/SplitAttributes;->mLayoutDirection:I

    const-string v1, "Invalid layout direction:"

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "TOP_TO_BOTTOM"

    return-object p0

    :cond_2
    const-string p0, "LOCALE"

    return-object p0

    :cond_3
    const-string p0, "RIGHT_TO_LEFT"

    return-object p0

    :cond_4
    const-string p0, "LEFT_TO_RIGHT"

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/window/extensions/embedding/SplitAttributes;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/window/extensions/embedding/SplitAttributes;

    iget v1, p0, Landroidx/window/extensions/embedding/SplitAttributes;->mLayoutDirection:I

    iget v3, p1, Landroidx/window/extensions/embedding/SplitAttributes;->mLayoutDirection:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitAttributes;->mSplitType:Landroidx/window/extensions/embedding/SplitAttributes$SplitType;

    iget-object v3, p1, Landroidx/window/extensions/embedding/SplitAttributes;->mSplitType:Landroidx/window/extensions/embedding/SplitAttributes$SplitType;

    invoke-virtual {v1, v3}, Landroidx/window/extensions/embedding/SplitAttributes$SplitType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget p0, p0, Landroidx/window/extensions/embedding/SplitAttributes;->mAnimationBackgroundColor:I

    iget p1, p1, Landroidx/window/extensions/embedding/SplitAttributes;->mAnimationBackgroundColor:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getAnimationBackgroundColor()I
    .locals 0
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    iget p0, p0, Landroidx/window/extensions/embedding/SplitAttributes;->mAnimationBackgroundColor:I

    return p0
.end method

.method public getLayoutDirection()I
    .locals 0

    iget p0, p0, Landroidx/window/extensions/embedding/SplitAttributes;->mLayoutDirection:I

    return p0
.end method

.method public getSplitType()Landroidx/window/extensions/embedding/SplitAttributes$SplitType;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Landroidx/window/extensions/embedding/SplitAttributes;->mSplitType:Landroidx/window/extensions/embedding/SplitAttributes$SplitType;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitAttributes;->mSplitType:Landroidx/window/extensions/embedding/SplitAttributes$SplitType;

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/SplitAttributes$SplitType;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/window/extensions/embedding/SplitAttributes;->mLayoutDirection:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/window/extensions/embedding/SplitAttributes;->mAnimationBackgroundColor:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-direct {p0}, Landroidx/window/extensions/embedding/SplitAttributes;->layoutDirectionToString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitAttributes;->mSplitType:Landroidx/window/extensions/embedding/SplitAttributes$SplitType;

    iget p0, p0, Landroidx/window/extensions/embedding/SplitAttributes;->mAnimationBackgroundColor:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SplitAttributes{layoutDir="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ratio="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", animationBgColor="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-static {v2, p0, v0}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
