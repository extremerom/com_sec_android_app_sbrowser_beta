.class public Landroidx/window/extensions/embedding/SplitPairRule;
.super Landroidx/window/extensions/embedding/SplitRule;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/extensions/embedding/SplitPairRule$Builder;
    }
.end annotation


# instance fields
.field private final mActivityIntentPredicate:Landroidx/window/extensions/core/util/function/Predicate;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/window/extensions/core/util/function/Predicate<",
            "Landroid/util/Pair<",
            "Landroid/app/Activity;",
            "Landroid/content/Intent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mActivityPairPredicate:Landroidx/window/extensions/core/util/function/Predicate;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/window/extensions/core/util/function/Predicate<",
            "Landroid/util/Pair<",
            "Landroid/app/Activity;",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mClearTop:Z

.field private final mFinishPrimaryWithSecondary:I

.field private final mFinishSecondaryWithPrimary:I


# direct methods
.method public constructor <init>(Landroidx/window/extensions/embedding/SplitAttributes;IIZLandroidx/window/extensions/core/util/function/Predicate;Landroidx/window/extensions/core/util/function/Predicate;Landroidx/window/extensions/core/util/function/Predicate;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroidx/window/extensions/embedding/SplitAttributes;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroidx/window/extensions/core/util/function/Predicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroidx/window/extensions/core/util/function/Predicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroidx/window/extensions/core/util/function/Predicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/window/extensions/embedding/SplitAttributes;",
            "IIZ",
            "Landroidx/window/extensions/core/util/function/Predicate<",
            "Landroid/util/Pair<",
            "Landroid/app/Activity;",
            "Landroid/app/Activity;",
            ">;>;",
            "Landroidx/window/extensions/core/util/function/Predicate<",
            "Landroid/util/Pair<",
            "Landroid/app/Activity;",
            "Landroid/content/Intent;",
            ">;>;",
            "Landroidx/window/extensions/core/util/function/Predicate<",
            "Landroid/view/WindowMetrics;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p7, p1, p8}, Landroidx/window/extensions/embedding/SplitRule;-><init>(Landroidx/window/extensions/core/util/function/Predicate;Landroidx/window/extensions/embedding/SplitAttributes;Ljava/lang/String;)V

    iput-object p5, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mActivityPairPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    iput-object p6, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mActivityIntentPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    iput p2, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mFinishPrimaryWithSecondary:I

    iput p3, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mFinishSecondaryWithPrimary:I

    iput-boolean p4, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mClearTop:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/window/extensions/embedding/SplitPairRule;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/window/extensions/embedding/SplitPairRule;

    invoke-super {p0, p1}, Landroidx/window/extensions/embedding/SplitRule;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mActivityPairPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    iget-object v3, v1, Landroidx/window/extensions/embedding/SplitPairRule;->mActivityPairPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mActivityIntentPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    iget-object v3, v1, Landroidx/window/extensions/embedding/SplitPairRule;->mActivityIntentPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mFinishPrimaryWithSecondary:I

    iget v3, v1, Landroidx/window/extensions/embedding/SplitPairRule;->mFinishPrimaryWithSecondary:I

    if-ne p1, v3, :cond_2

    iget p1, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mFinishSecondaryWithPrimary:I

    iget v3, v1, Landroidx/window/extensions/embedding/SplitPairRule;->mFinishSecondaryWithPrimary:I

    if-ne p1, v3, :cond_2

    iget-boolean p0, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mClearTop:Z

    iget-boolean p1, v1, Landroidx/window/extensions/embedding/SplitPairRule;->mClearTop:Z

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getFinishPrimaryWithSecondary()I
    .locals 0

    iget p0, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mFinishPrimaryWithSecondary:I

    return p0
.end method

.method public getFinishSecondaryWithPrimary()I
    .locals 0

    iget p0, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mFinishSecondaryWithPrimary:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Landroidx/window/extensions/embedding/SplitRule;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mActivityPairPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mActivityIntentPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mFinishPrimaryWithSecondary:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mFinishSecondaryWithPrimary:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mClearTop:Z

    add-int/2addr v0, p0

    return v0
.end method

.method public matchesActivityIntentPair(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
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

    iget-object p0, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mActivityIntentPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Landroidx/window/extensions/core/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public matchesActivityPair(Landroid/app/Activity;Landroid/app/Activity;)Z
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
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

    iget-object p0, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mActivityPairPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Landroidx/window/extensions/core/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public shouldClearTop()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mClearTop:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/EmbeddingRule;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/SplitRule;->getDefaultSplitAttributes()Landroidx/window/extensions/embedding/SplitAttributes;

    move-result-object v1

    iget v2, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mFinishPrimaryWithSecondary:I

    iget v3, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mFinishSecondaryWithPrimary:I

    iget-boolean p0, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mClearTop:Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SplitPairRule{mTag="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mDefaultSplitAttributes="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mFinishPrimaryWithSecondary="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mFinishSecondaryWithPrimary="

    const-string v1, ", mClearTop="

    invoke-static {v4, v2, v0, v3, v1}, Lt/b;->A(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v0, "}"

    invoke-static {v0, v4, p0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->k(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
