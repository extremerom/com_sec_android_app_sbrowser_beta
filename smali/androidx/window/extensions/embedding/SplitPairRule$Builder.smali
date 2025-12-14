.class public final Landroidx/window/extensions/embedding/SplitPairRule$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/extensions/embedding/SplitPairRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
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

.field private mClearTop:Z

.field private mDefaultSplitAttributes:Landroidx/window/extensions/embedding/SplitAttributes;

.field private mFinishPrimaryWithSecondary:I

.field private mFinishSecondaryWithPrimary:I

.field private mLayoutDirection:I

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

.field private mSplitRatio:F
    .annotation build Landroidx/annotation/FloatRange;
    .end annotation
.end field

.field private mTag:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/window/extensions/core/util/function/Predicate;Landroidx/window/extensions/core/util/function/Predicate;Landroidx/window/extensions/core/util/function/Predicate;)V
    .locals 0
    .param p1    # Landroidx/window/extensions/core/util/function/Predicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/window/extensions/core/util/function/Predicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/window/extensions/core/util/function/Predicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->mActivityPairPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    iput-object p2, p0, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->mActivityIntentPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    iput-object p3, p0, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->mParentWindowMetricsPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/function/Predicate;)V
    .locals 2
    .param p1    # Ljava/util/function/Predicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/function/Predicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/Predicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Landroid/util/Pair<",
            "Landroid/app/Activity;",
            "Landroid/app/Activity;",
            ">;>;",
            "Ljava/util/function/Predicate<",
            "Landroid/util/Pair<",
            "Landroid/app/Activity;",
            "Landroid/content/Intent;",
            ">;>;",
            "Ljava/util/function/Predicate<",
            "Landroid/view/WindowMetrics;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/window/extensions/embedding/a;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Landroidx/window/extensions/embedding/a;-><init>(Ljava/util/function/Predicate;I)V

    iput-object v0, p0, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->mActivityPairPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroidx/window/extensions/embedding/a;

    const/4 v0, 0x2

    invoke-direct {p1, p2, v0}, Landroidx/window/extensions/embedding/a;-><init>(Ljava/util/function/Predicate;I)V

    iput-object p1, p0, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->mActivityIntentPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroidx/window/extensions/embedding/b;

    invoke-direct {p1, p3}, Landroidx/window/extensions/embedding/b;-><init>(Ljava/util/function/Predicate;)V

    iput-object p1, p0, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->mParentWindowMetricsPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public build()Landroidx/window/extensions/embedding/SplitPairRule;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->mDefaultSplitAttributes:Landroidx/window/extensions/embedding/SplitAttributes;

    if-eqz v0, :cond_0

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    new-instance v0, Landroidx/window/extensions/embedding/SplitAttributes$Builder;

    invoke-direct {v0}, Landroidx/window/extensions/embedding/SplitAttributes$Builder;-><init>()V

    iget v1, p0, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->mSplitRatio:F

    invoke-static {v1}, Landroidx/window/extensions/embedding/SplitAttributes$SplitType;->createSplitTypeFromLegacySplitRatio(F)Landroidx/window/extensions/embedding/SplitAttributes$SplitType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/window/extensions/embedding/SplitAttributes$Builder;->setSplitType(Landroidx/window/extensions/embedding/SplitAttributes$SplitType;)Landroidx/window/extensions/embedding/SplitAttributes$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->mLayoutDirection:I

    invoke-virtual {v0, v1}, Landroidx/window/extensions/embedding/SplitAttributes$Builder;->setLayoutDirection(I)Landroidx/window/extensions/embedding/SplitAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/SplitAttributes$Builder;->build()Landroidx/window/extensions/embedding/SplitAttributes;

    move-result-object v0

    goto :goto_0

    :goto_1
    iput-object v2, p0, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->mDefaultSplitAttributes:Landroidx/window/extensions/embedding/SplitAttributes;

    new-instance v0, Landroidx/window/extensions/embedding/SplitPairRule;

    iget v3, p0, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->mFinishPrimaryWithSecondary:I

    iget v4, p0, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->mFinishSecondaryWithPrimary:I

    iget-boolean v5, p0, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->mClearTop:Z

    iget-object v6, p0, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->mActivityPairPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    iget-object v7, p0, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->mActivityIntentPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    iget-object v8, p0, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->mParentWindowMetricsPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    iget-object v9, p0, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->mTag:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroidx/window/extensions/embedding/SplitPairRule;-><init>(Landroidx/window/extensions/embedding/SplitAttributes;IIZLandroidx/window/extensions/core/util/function/Predicate;Landroidx/window/extensions/core/util/function/Predicate;Landroidx/window/extensions/core/util/function/Predicate;Ljava/lang/String;)V

    return-object v0
.end method

.method public setDefaultSplitAttributes(Landroidx/window/extensions/embedding/SplitAttributes;)Landroidx/window/extensions/embedding/SplitPairRule$Builder;
    .locals 0
    .param p1    # Landroidx/window/extensions/embedding/SplitAttributes;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->mDefaultSplitAttributes:Landroidx/window/extensions/embedding/SplitAttributes;

    return-object p0
.end method

.method public setFinishPrimaryWithSecondary(I)Landroidx/window/extensions/embedding/SplitPairRule$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->mFinishPrimaryWithSecondary:I

    return-object p0
.end method

.method public setFinishSecondaryWithPrimary(I)Landroidx/window/extensions/embedding/SplitPairRule$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->mFinishSecondaryWithPrimary:I

    return-object p0
.end method

.method public setLayoutDirection(I)Landroidx/window/extensions/embedding/SplitPairRule$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->mLayoutDirection:I

    return-object p0
.end method

.method public setShouldClearTop(Z)Landroidx/window/extensions/embedding/SplitPairRule$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->mClearTop:Z

    return-object p0
.end method

.method public setShouldFinishPrimaryWithSecondary(Z)Landroidx/window/extensions/embedding/SplitPairRule$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setShouldFinishSecondaryWithPrimary(Z)Landroidx/window/extensions/embedding/SplitPairRule$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setSplitRatio(F)Landroidx/window/extensions/embedding/SplitPairRule$Builder;
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->mSplitRatio:F

    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Landroidx/window/extensions/embedding/SplitPairRule$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->mTag:Ljava/lang/String;

    return-object p0
.end method
