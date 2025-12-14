.class public Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/ToolbarDeletionAnimator;
.super Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;
.source "SourceFile"


# instance fields
.field mDeletePosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator$Delegate;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator$Delegate;)V

    return-void
.end method


# virtual methods
.method public prepare(ILandroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/ToolbarDeletionAnimator;->mDeletePosition:I

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;->prepareAnimation(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public preparePrevPositions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/CustomizeMenuAnimator;->getTargetViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/ToolbarDeletionAnimator;->mDeletePosition:I

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
