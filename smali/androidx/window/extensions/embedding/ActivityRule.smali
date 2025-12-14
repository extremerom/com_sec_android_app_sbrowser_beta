.class public Landroidx/window/extensions/embedding/ActivityRule;
.super Landroidx/window/extensions/embedding/EmbeddingRule;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/extensions/embedding/ActivityRule$Builder;
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

.field private final mShouldAlwaysExpand:Z


# direct methods
.method public constructor <init>(Landroidx/window/extensions/core/util/function/Predicate;Landroidx/window/extensions/core/util/function/Predicate;ZLjava/lang/String;)V
    .locals 0
    .param p1    # Landroidx/window/extensions/core/util/function/Predicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/window/extensions/core/util/function/Predicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/window/extensions/core/util/function/Predicate<",
            "Landroid/app/Activity;",
            ">;",
            "Landroidx/window/extensions/core/util/function/Predicate<",
            "Landroid/content/Intent;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p4}, Landroidx/window/extensions/embedding/EmbeddingRule;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/window/extensions/embedding/ActivityRule;->mActivityPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    iput-object p2, p0, Landroidx/window/extensions/embedding/ActivityRule;->mIntentPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    iput-boolean p3, p0, Landroidx/window/extensions/embedding/ActivityRule;->mShouldAlwaysExpand:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/window/extensions/embedding/ActivityRule;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/window/extensions/embedding/ActivityRule;

    invoke-super {p0, p1}, Landroidx/window/extensions/embedding/EmbeddingRule;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroidx/window/extensions/embedding/ActivityRule;->mShouldAlwaysExpand:Z

    iget-boolean v3, v1, Landroidx/window/extensions/embedding/ActivityRule;->mShouldAlwaysExpand:Z

    if-ne p1, v3, :cond_2

    iget-object p1, p0, Landroidx/window/extensions/embedding/ActivityRule;->mActivityPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    iget-object v3, v1, Landroidx/window/extensions/embedding/ActivityRule;->mActivityPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroidx/window/extensions/embedding/ActivityRule;->mIntentPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    iget-object p1, v1, Landroidx/window/extensions/embedding/ActivityRule;->mIntentPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Landroidx/window/extensions/embedding/EmbeddingRule;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/window/extensions/embedding/ActivityRule;->mActivityPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/window/extensions/embedding/ActivityRule;->mIntentPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Landroidx/window/extensions/embedding/ActivityRule;->mShouldAlwaysExpand:Z

    add-int/2addr v0, p0

    return v0
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

    iget-object p0, p0, Landroidx/window/extensions/embedding/ActivityRule;->mActivityPredicate:Landroidx/window/extensions/core/util/function/Predicate;

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

    iget-object p0, p0, Landroidx/window/extensions/embedding/ActivityRule;->mIntentPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    invoke-interface {p0, p1}, Landroidx/window/extensions/core/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public shouldAlwaysExpand()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/window/extensions/embedding/ActivityRule;->mShouldAlwaysExpand:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/EmbeddingRule;->getTag()Ljava/lang/String;

    move-result-object v0

    iget-boolean p0, p0, Landroidx/window/extensions/embedding/ActivityRule;->mShouldAlwaysExpand:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ActivityRule{mTag="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mShouldAlwaysExpand="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
