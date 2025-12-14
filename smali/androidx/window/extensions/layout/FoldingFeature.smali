.class public Landroidx/window/extensions/layout/FoldingFeature;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/window/extensions/layout/DisplayFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/extensions/layout/FoldingFeature$State;,
        Landroidx/window/extensions/layout/FoldingFeature$Type;
    }
.end annotation


# static fields
.field public static final STATE_FLAT:I = 0x1

.field public static final STATE_HALF_OPENED:I = 0x2

.field public static final TYPE_FOLD:I = 0x1

.field public static final TYPE_HINGE:I = 0x2


# instance fields
.field private final mBounds:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mState:I

.field private final mType:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;II)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/window/extensions/layout/FoldingFeature;->validateFeatureBounds(Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroidx/window/extensions/layout/FoldingFeature;->mBounds:Landroid/graphics/Rect;

    iput p2, p0, Landroidx/window/extensions/layout/FoldingFeature;->mType:I

    iput p3, p0, Landroidx/window/extensions/layout/FoldingFeature;->mState:I

    return-void
.end method

.method private static hashBounds(Landroid/graphics/Rect;)I
    .locals 2

    iget v0, p0, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p0

    return v0
.end method

.method private static stateToString(I)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string v0, "Unknown feature state ("

    const-string v1, ")"

    invoke-static {p0, v0, v1}, Lt/b;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "HALF_OPENED"

    return-object p0

    :cond_1
    const-string p0, "FLAT"

    return-object p0
.end method

.method private static typeToString(I)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string v0, "Unknown feature type ("

    const-string v1, ")"

    invoke-static {p0, v0, v1}, Lt/b;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "HINGE"

    return-object p0

    :cond_1
    const-string p0, "FOLD"

    return-object p0
.end method

.method private static validateFeatureBounds(Landroid/graphics/Rect;)V
    .locals 3
    .param p0    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bounds must be non zero.  Bounds: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bounding rectangle must start at the top or left window edge for folding features.  Bounds: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Landroidx/window/extensions/layout/FoldingFeature;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Landroidx/window/extensions/layout/FoldingFeature;

    iget v0, p0, Landroidx/window/extensions/layout/FoldingFeature;->mType:I

    iget v2, p1, Landroidx/window/extensions/layout/FoldingFeature;->mType:I

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget v0, p0, Landroidx/window/extensions/layout/FoldingFeature;->mState:I

    iget v2, p1, Landroidx/window/extensions/layout/FoldingFeature;->mState:I

    if-eq v0, v2, :cond_3

    return v1

    :cond_3
    iget-object p0, p0, Landroidx/window/extensions/layout/FoldingFeature;->mBounds:Landroid/graphics/Rect;

    iget-object p1, p1, Landroidx/window/extensions/layout/FoldingFeature;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Landroidx/window/extensions/layout/FoldingFeature;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getState()I
    .locals 0

    iget p0, p0, Landroidx/window/extensions/layout/FoldingFeature;->mState:I

    return p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Landroidx/window/extensions/layout/FoldingFeature;->mType:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/window/extensions/layout/FoldingFeature;->mBounds:Landroid/graphics/Rect;

    invoke-static {v0}, Landroidx/window/extensions/layout/FoldingFeature;->hashBounds(Landroid/graphics/Rect;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/window/extensions/layout/FoldingFeature;->mType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/window/extensions/layout/FoldingFeature;->mState:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/window/extensions/layout/FoldingFeature;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroidx/window/extensions/layout/FoldingFeature;->getType()I

    move-result v1

    invoke-static {v1}, Landroidx/window/extensions/layout/FoldingFeature;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Landroidx/window/extensions/layout/FoldingFeature;->mState:I

    invoke-static {p0}, Landroidx/window/extensions/layout/FoldingFeature;->stateToString(I)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ExtensionDisplayFoldFeature { "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", state="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " }"

    invoke-static {v2, p0, v0}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
