.class public abstract Landroidx/window/extensions/embedding/SplitRule;
.super Landroidx/window/extensions/embedding/EmbeddingRule;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/extensions/embedding/SplitRule$SplitFinishBehavior;
    }
.end annotation


# static fields
.field public static final FINISH_ADJACENT:I = 0x2

.field public static final FINISH_ALWAYS:I = 0x1

.field public static final FINISH_NEVER:I


# instance fields
.field private final mDefaultSplitAttributes:Landroidx/window/extensions/embedding/SplitAttributes;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mParentWindowMetricsPredicate:Landroidx/window/extensions/core/util/function/Predicate;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/window/extensions/core/util/function/Predicate<",
            "Landroid/view/WindowMetrics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/window/extensions/core/util/function/Predicate;Landroidx/window/extensions/embedding/SplitAttributes;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroidx/window/extensions/core/util/function/Predicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/window/extensions/embedding/SplitAttributes;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/window/extensions/core/util/function/Predicate<",
            "Landroid/view/WindowMetrics;",
            ">;",
            "Landroidx/window/extensions/embedding/SplitAttributes;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p3}, Landroidx/window/extensions/embedding/EmbeddingRule;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/window/extensions/embedding/SplitRule;->mParentWindowMetricsPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    iput-object p2, p0, Landroidx/window/extensions/embedding/SplitRule;->mDefaultSplitAttributes:Landroidx/window/extensions/embedding/SplitAttributes;

    return-void
.end method


# virtual methods
.method public checkParentMetrics(Landroid/view/WindowMetrics;)Z
    .locals 0
    .param p1    # Landroid/view/WindowMetrics;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClassVerificationFailure"
        }
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    iget-object p0, p0, Landroidx/window/extensions/embedding/SplitRule;->mParentWindowMetricsPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    invoke-interface {p0, p1}, Landroidx/window/extensions/core/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/window/extensions/embedding/SplitRule;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/window/extensions/embedding/SplitRule;

    invoke-super {p0, p1}, Landroidx/window/extensions/embedding/EmbeddingRule;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitRule;->mDefaultSplitAttributes:Landroidx/window/extensions/embedding/SplitAttributes;

    iget-object v3, p1, Landroidx/window/extensions/embedding/SplitRule;->mDefaultSplitAttributes:Landroidx/window/extensions/embedding/SplitAttributes;

    invoke-virtual {v1, v3}, Landroidx/window/extensions/embedding/SplitAttributes;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroidx/window/extensions/embedding/SplitRule;->mParentWindowMetricsPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    iget-object p1, p1, Landroidx/window/extensions/embedding/SplitRule;->mParentWindowMetricsPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getDefaultSplitAttributes()Landroidx/window/extensions/embedding/SplitAttributes;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Landroidx/window/extensions/embedding/SplitRule;->mDefaultSplitAttributes:Landroidx/window/extensions/embedding/SplitAttributes;

    return-object p0
.end method

.method public getLayoutDirection()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroidx/window/extensions/embedding/SplitRule;->mDefaultSplitAttributes:Landroidx/window/extensions/embedding/SplitAttributes;

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/SplitAttributes;->getLayoutDirection()I

    move-result p0

    return p0
.end method

.method public getSplitRatio()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroidx/window/extensions/embedding/SplitRule;->mDefaultSplitAttributes:Landroidx/window/extensions/embedding/SplitAttributes;

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/SplitAttributes;->getSplitType()Landroidx/window/extensions/embedding/SplitAttributes$SplitType;

    move-result-object p0

    instance-of v0, p0, Landroidx/window/extensions/embedding/SplitAttributes$SplitType$RatioSplitType;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/window/extensions/embedding/SplitAttributes$SplitType$RatioSplitType;

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/SplitAttributes$SplitType$RatioSplitType;->getRatio()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Landroidx/window/extensions/embedding/EmbeddingRule;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitRule;->mParentWindowMetricsPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Landroidx/window/extensions/embedding/SplitRule;->mDefaultSplitAttributes:Landroidx/window/extensions/embedding/SplitAttributes;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/EmbeddingRule;->getTag()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Landroidx/window/extensions/embedding/SplitRule;->mDefaultSplitAttributes:Landroidx/window/extensions/embedding/SplitAttributes;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SplitRule{mTag="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mDefaultSplitAttributes="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
