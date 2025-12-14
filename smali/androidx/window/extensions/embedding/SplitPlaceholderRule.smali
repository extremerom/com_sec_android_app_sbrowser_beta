.class public Landroidx/window/extensions/embedding/SplitPlaceholderRule;
.super Landroidx/window/extensions/embedding/SplitRule;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;,
        Landroidx/window/extensions/embedding/SplitPlaceholderRule$SplitPlaceholderFinishBehavior;
    }
.end annotation


# instance fields
.field private final mActivityPredicate:Landroidx/window/extensions/core/util/function/Predicate;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/window/extensions/core/util/function/Predicate<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final mFinishPrimaryWithPlaceholder:I

.field private final mIntentPredicate:Landroidx/window/extensions/core/util/function/Predicate;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/window/extensions/core/util/function/Predicate<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsSticky:Z

.field private final mPlaceholderIntent:Landroid/content/Intent;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroidx/window/extensions/embedding/SplitAttributes;ZILandroidx/window/extensions/core/util/function/Predicate;Landroidx/window/extensions/core/util/function/Predicate;Landroidx/window/extensions/core/util/function/Predicate;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/window/extensions/embedding/SplitAttributes;
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
            "Landroid/content/Intent;",
            "Landroidx/window/extensions/embedding/SplitAttributes;",
            "ZI",
            "Landroidx/window/extensions/core/util/function/Predicate<",
            "Landroid/app/Activity;",
            ">;",
            "Landroidx/window/extensions/core/util/function/Predicate<",
            "Landroid/content/Intent;",
            ">;",
            "Landroidx/window/extensions/core/util/function/Predicate<",
            "Landroid/view/WindowMetrics;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p7, p2, p8}, Landroidx/window/extensions/embedding/SplitRule;-><init>(Landroidx/window/extensions/core/util/function/Predicate;Landroidx/window/extensions/embedding/SplitAttributes;Ljava/lang/String;)V

    iput-boolean p3, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mIsSticky:Z

    iput p4, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mFinishPrimaryWithPlaceholder:I

    iput-object p5, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mActivityPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    iput-object p6, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mIntentPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    iput-object p1, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mPlaceholderIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Landroidx/window/extensions/embedding/SplitPlaceholderRule;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-super {p0, p1}, Landroidx/window/extensions/embedding/SplitRule;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    check-cast p1, Landroidx/window/extensions/embedding/SplitPlaceholderRule;

    iget-boolean v0, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mIsSticky:Z

    iget-boolean v2, p1, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mIsSticky:Z

    if-eq v0, v2, :cond_3

    return v1

    :cond_3
    iget v0, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mFinishPrimaryWithPlaceholder:I

    iget v2, p1, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mFinishPrimaryWithPlaceholder:I

    if-eq v0, v2, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mActivityPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    iget-object v2, p1, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mActivityPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    :cond_5
    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mIntentPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    iget-object v2, p1, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mIntentPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object p0, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mPlaceholderIntent:Landroid/content/Intent;

    iget-object p1, p1, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mPlaceholderIntent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getFinishPrimaryWithPlaceholder()I
    .locals 0

    iget p0, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mFinishPrimaryWithPlaceholder:I

    return p0
.end method

.method public getFinishPrimaryWithSecondary()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->getFinishPrimaryWithPlaceholder()I

    move-result p0

    return p0
.end method

.method public getPlaceholderIntent()Landroid/content/Intent;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mPlaceholderIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Landroidx/window/extensions/embedding/SplitRule;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mActivityPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mIntentPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mPlaceholderIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mIsSticky:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget p0, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mFinishPrimaryWithPlaceholder:I

    add-int/2addr v1, p0

    return v1
.end method

.method public isSticky()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mIsSticky:Z

    return p0
.end method

.method public matchesActivity(Landroid/app/Activity;)Z
    .locals 0
    .param p1    # Landroid/app/Activity;
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

    iget-object p0, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mActivityPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    invoke-interface {p0, p1}, Landroidx/window/extensions/core/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public matchesIntent(Landroid/content/Intent;)Z
    .locals 0
    .param p1    # Landroid/content/Intent;
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

    iget-object p0, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mIntentPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    invoke-interface {p0, p1}, Landroidx/window/extensions/core/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

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

    iget-object v2, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mActivityPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    iget-boolean v3, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mIsSticky:Z

    iget p0, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mFinishPrimaryWithPlaceholder:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SplitPlaceholderRule{mTag="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mDefaultSplitAttributes="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mActivityPredicate="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mIsSticky="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mFinishPrimaryWithPlaceholder="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-static {v4, p0, v0}, LB/e;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
