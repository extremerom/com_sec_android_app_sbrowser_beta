.class public Landroidx/recyclerview/widget/v;
.super Landroidx/recyclerview/widget/o1;
.source "SourceFile"


# static fields
.field private static final ITEM_MOVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static sDefaultInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field mAddAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/h1;",
            ">;"
        }
    .end annotation
.end field

.field mAdditionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/h1;",
            ">;>;"
        }
    .end annotation
.end field

.field mChangeAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/h1;",
            ">;"
        }
    .end annotation
.end field

.field mChangesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/t;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEnableRemoveDelay:Z

.field private mLastItemBottom:I

.field mMoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/h1;",
            ">;"
        }
    .end annotation
.end field

.field mMovesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/u;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPendingAdditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/h1;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingAnimFlag:I

.field private mPendingChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/t;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingMoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/u;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingRemovals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/h1;",
            ">;"
        }
    .end annotation
.end field

.field mRemoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/h1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ecccccd    # 0.4f

    const v4, 0x3f19999a    # 0.6f

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroidx/recyclerview/widget/v;->ITEM_MOVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/D0;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/o1;->mSupportsChangeAnimations:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/v;->mPendingRemovals:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/v;->mPendingAdditions:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/v;->mPendingMoves:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/v;->mPendingChanges:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/v;->mAdditionsList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/v;->mMovesList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/v;->mChangesList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/v;->mAddAnimations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/v;->mMoveAnimations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/v;->mRemoveAnimations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/v;->mChangeAnimations:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/v;->mPendingAnimFlag:I

    iput v0, p0, Landroidx/recyclerview/widget/v;->mLastItemBottom:I

    iput-boolean v0, p0, Landroidx/recyclerview/widget/v;->mEnableRemoveDelay:Z

    return-void
.end method

.method public static synthetic access$000(Landroidx/recyclerview/widget/v;)I
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/v;->mPendingAnimFlag:I

    return p0
.end method

.method public static synthetic access$072(Landroidx/recyclerview/widget/v;I)I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/v;->mPendingAnimFlag:I

    and-int/2addr p1, v0

    iput p1, p0, Landroidx/recyclerview/widget/v;->mPendingAnimFlag:I

    return p1
.end method

.method public static synthetic access$076(Landroidx/recyclerview/widget/v;I)I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/v;->mPendingAnimFlag:I

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/recyclerview/widget/v;->mPendingAnimFlag:I

    return p1
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/h1;Ljava/util/List;)V
    .locals 3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/t;

    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/v;->b(Landroidx/recyclerview/widget/t;Landroidx/recyclerview/widget/h1;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroidx/recyclerview/widget/t;->a:Landroidx/recyclerview/widget/h1;

    if-nez v2, :cond_0

    iget-object v2, v1, Landroidx/recyclerview/widget/t;->b:Landroidx/recyclerview/widget/h1;

    if-nez v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public animateAdd(Landroidx/recyclerview/widget/h1;)Z
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/v;->c(Landroidx/recyclerview/widget/h1;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Landroidx/recyclerview/widget/v;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Landroidx/recyclerview/widget/v;->mPendingAnimFlag:I

    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Landroidx/recyclerview/widget/v;->mPendingAnimFlag:I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public animateAddImpl(Landroidx/recyclerview/widget/h1;)V
    .locals 6

    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/v;->getAddDuration()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "preferencecategory"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-wide/16 v2, 0x0

    :cond_0
    iget-object v4, p0, Landroidx/recyclerview/widget/v;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroidx/recyclerview/widget/p;

    invoke-direct {v3, p0, p1, v0, v1}, Landroidx/recyclerview/widget/p;-><init>(Landroidx/recyclerview/widget/v;Landroidx/recyclerview/widget/h1;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public animateChange(Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/h1;IIII)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    if-ne p1, p2, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/v;->animateMove(Landroidx/recyclerview/widget/h1;IIII)Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iget-object v1, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    iget-object v2, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/v;->c(Landroidx/recyclerview/widget/h1;)V

    sub-int v3, p5, p3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    float-to-int v3, v3

    sub-int v4, p6, p4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    float-to-int v4, v4

    iget-object v5, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/v;->c(Landroidx/recyclerview/widget/h1;)V

    iget-object v0, p2, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    neg-int v1, v3

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p2, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    neg-int v1, v4

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p2, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/v;->mPendingChanges:Ljava/util/ArrayList;

    new-instance v1, Landroidx/recyclerview/widget/t;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p1, v1, Landroidx/recyclerview/widget/t;->a:Landroidx/recyclerview/widget/h1;

    iput-object p2, v1, Landroidx/recyclerview/widget/t;->b:Landroidx/recyclerview/widget/h1;

    iput p3, v1, Landroidx/recyclerview/widget/t;->c:I

    iput p4, v1, Landroidx/recyclerview/widget/t;->d:I

    iput p5, v1, Landroidx/recyclerview/widget/t;->e:I

    iput p6, v1, Landroidx/recyclerview/widget/t;->f:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Landroidx/recyclerview/widget/v;->mPendingAnimFlag:I

    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Landroidx/recyclerview/widget/v;->mPendingAnimFlag:I

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public animateChangeImpl(Landroidx/recyclerview/widget/t;)V
    .locals 13

    iget-object v0, p1, Landroidx/recyclerview/widget/t;->a:Landroidx/recyclerview/widget/h1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v6, v1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    move-object v6, v0

    :goto_0
    iget-object v0, p1, Landroidx/recyclerview/widget/t;->b:Landroidx/recyclerview/widget/h1;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    :cond_1
    move-object v11, v1

    const/4 v0, 0x0

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/v;->getChangeDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget-object v1, p0, Landroidx/recyclerview/widget/v;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v2, p1, Landroidx/recyclerview/widget/t;->a:Landroidx/recyclerview/widget/h1;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p1, Landroidx/recyclerview/widget/t;->e:I

    iget v2, p1, Landroidx/recyclerview/widget/t;->c:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    iget v1, p1, Landroidx/recyclerview/widget/t;->f:I

    iget v2, p1, Landroidx/recyclerview/widget/t;->d:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v5, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/v;->getChangeDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Landroidx/recyclerview/widget/v;->ITEM_MOVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v8, Landroidx/recyclerview/widget/s;

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Landroidx/recyclerview/widget/s;-><init>(Landroidx/recyclerview/widget/v;Landroidx/recyclerview/widget/t;Landroid/view/ViewPropertyAnimator;Landroid/view/View;I)V

    invoke-virtual {v1, v8}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    iget-object v1, p0, Landroidx/recyclerview/widget/v;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v2, p1, Landroidx/recyclerview/widget/t;->b:Landroidx/recyclerview/widget/h1;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/v;->getChangeDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroidx/recyclerview/widget/v;->ITEM_MOVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroidx/recyclerview/widget/s;

    const/4 v12, 0x1

    move-object v7, v1

    move-object v8, p0

    move-object v9, p1

    invoke-direct/range {v7 .. v12}, Landroidx/recyclerview/widget/s;-><init>(Landroidx/recyclerview/widget/v;Landroidx/recyclerview/widget/t;Landroid/view/ViewPropertyAnimator;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    return-void
.end method

.method public animateMove(Landroidx/recyclerview/widget/h1;IIII)Z
    .locals 3

    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr p2, v1

    iget-object v1, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr p3, v1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/v;->c(Landroidx/recyclerview/widget/h1;)V

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/o1;->dispatchMoveFinished(Landroidx/recyclerview/widget/h1;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz v1, :cond_1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_1
    if-eqz v2, :cond_2

    neg-int v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/v;->mPendingMoves:Ljava/util/ArrayList;

    new-instance v1, Landroidx/recyclerview/widget/u;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p1, v1, Landroidx/recyclerview/widget/u;->a:Landroidx/recyclerview/widget/h1;

    iput p2, v1, Landroidx/recyclerview/widget/u;->b:I

    iput p3, v1, Landroidx/recyclerview/widget/u;->c:I

    iput p4, v1, Landroidx/recyclerview/widget/u;->d:I

    iput p5, v1, Landroidx/recyclerview/widget/u;->e:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Landroidx/recyclerview/widget/v;->mPendingAnimFlag:I

    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_3

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroidx/recyclerview/widget/v;->mPendingAnimFlag:I

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public animateMoveImpl(Landroidx/recyclerview/widget/h1;IIII)V
    .locals 7

    iget-object v4, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    sub-int v3, p4, p2

    sub-int v5, p5, p3

    const/4 p2, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    sget-object p2, Landroidx/recyclerview/widget/v;->ITEM_MOVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object p2, p0, Landroidx/recyclerview/widget/v;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/D0;->getHostView()Landroid/view/View;

    move-result-object p2

    instance-of p2, p2, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/D0;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iget p3, p2, Landroidx/recyclerview/widget/RecyclerView;->mBlackTop:I

    const/4 p4, -0x1

    if-eq p3, p4, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/h1;->getLayoutPosition()I

    move-result p3

    iget-object p4, p2, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/k;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/k;->e()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    if-ne p3, p4, :cond_2

    new-instance p3, Landroidx/recyclerview/widget/q;

    const/4 p4, 0x0

    invoke-direct {p3, p2, p4}, Landroidx/recyclerview/widget/q;-><init>(Landroidx/recyclerview/widget/RecyclerView;I)V

    invoke-virtual {v6, p3}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/v;->getMoveDuration()J

    move-result-wide p2

    invoke-virtual {v6, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance p3, Landroidx/recyclerview/widget/r;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Landroidx/recyclerview/widget/r;-><init>(Landroidx/recyclerview/widget/v;Landroidx/recyclerview/widget/h1;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public animateRemove(Landroidx/recyclerview/widget/h1;)Z
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/v;->c(Landroidx/recyclerview/widget/h1;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/v;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Landroidx/recyclerview/widget/v;->mLastItemBottom:I

    if-le v0, v1, :cond_0

    iget-object p1, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/v;->mLastItemBottom:I

    :cond_0
    iget p1, p0, Landroidx/recyclerview/widget/v;->mPendingAnimFlag:I

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-nez v0, :cond_1

    or-int/2addr p1, v1

    iput p1, p0, Landroidx/recyclerview/widget/v;->mPendingAnimFlag:I

    :cond_1
    return v1
.end method

.method public final b(Landroidx/recyclerview/widget/t;Landroidx/recyclerview/widget/h1;)Z
    .locals 4

    iget-object v0, p1, Landroidx/recyclerview/widget/t;->b:Landroidx/recyclerview/widget/h1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, p2, :cond_0

    iput-object v2, p1, Landroidx/recyclerview/widget/t;->b:Landroidx/recyclerview/widget/h1;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/t;->a:Landroidx/recyclerview/widget/h1;

    if-ne v0, p2, :cond_1

    iput-object v2, p1, Landroidx/recyclerview/widget/t;->a:Landroidx/recyclerview/widget/h1;

    move v3, v1

    :goto_0
    iget-object p1, p2, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p2, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p2, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0, p2, v3}, Landroidx/recyclerview/widget/o1;->dispatchChangeFinished(Landroidx/recyclerview/widget/h1;Z)V

    return v1

    :cond_1
    return v3
.end method

.method public final c(Landroidx/recyclerview/widget/h1;)V
    .locals 2

    sget-object v0, Landroidx/recyclerview/widget/v;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    sput-object v0, Landroidx/recyclerview/widget/v;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroidx/recyclerview/widget/v;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/v;->endAnimation(Landroidx/recyclerview/widget/h1;)V

    return-void
.end method

.method public canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/h1;Ljava/util/List;)Z
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/h1;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/o1;->canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/h1;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public cancelAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/h1;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/h1;

    iget-object v0, v0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearPendingAnimFlag()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/v;->mPendingAnimFlag:I

    return-void
.end method

.method public dispatchFinishedWhenDone()V
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/v;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/D0;->dispatchAnimationsFinished()V

    :cond_0
    return-void
.end method

.method public endAnimation(Landroidx/recyclerview/widget/h1;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, p0, Landroidx/recyclerview/widget/v;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/4 v2, 0x0

    if-ltz v1, :cond_1

    iget-object v3, p0, Landroidx/recyclerview/widget/v;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/u;

    iget-object v3, v3, Landroidx/recyclerview/widget/u;->a:Landroidx/recyclerview/widget/h1;

    if-ne v3, p1, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/o1;->dispatchMoveFinished(Landroidx/recyclerview/widget/h1;)V

    iget-object v2, p0, Landroidx/recyclerview/widget/v;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/v;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/v;->a(Landroidx/recyclerview/widget/h1;Ljava/util/List;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/v;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/o1;->dispatchRemoveFinished(Landroidx/recyclerview/widget/h1;)V

    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/v;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/o1;->dispatchAddFinished(Landroidx/recyclerview/widget/h1;)V

    :cond_3
    iget-object v1, p0, Landroidx/recyclerview/widget/v;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_5

    iget-object v4, p0, Landroidx/recyclerview/widget/v;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v4}, Landroidx/recyclerview/widget/v;->a(Landroidx/recyclerview/widget/h1;Ljava/util/List;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroidx/recyclerview/widget/v;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_5
    iget-object v1, p0, Landroidx/recyclerview/widget/v;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_8

    iget-object v4, p0, Landroidx/recyclerview/widget/v;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_3
    if-ltz v5, :cond_7

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/u;

    iget-object v6, v6, Landroidx/recyclerview/widget/u;->a:Landroidx/recyclerview/widget/h1;

    if-ne v6, p1, :cond_6

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/o1;->dispatchMoveFinished(Landroidx/recyclerview/widget/h1;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroidx/recyclerview/widget/v;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_7
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_8
    iget-object v1, p0, Landroidx/recyclerview/widget/v;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_5
    if-ltz v1, :cond_a

    iget-object v2, p0, Landroidx/recyclerview/widget/v;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/o1;->dispatchAddFinished(Landroidx/recyclerview/widget/h1;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroidx/recyclerview/widget/v;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_a
    iget-object v0, p0, Landroidx/recyclerview/widget/v;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/recyclerview/widget/v;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/recyclerview/widget/v;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/recyclerview/widget/v;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/v;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public endAnimations()V
    .locals 7

    iget-object v0, p0, Landroidx/recyclerview/widget/v;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_0

    iget-object v2, p0, Landroidx/recyclerview/widget/v;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/u;

    iget-object v3, v2, Landroidx/recyclerview/widget/u;->a:Landroidx/recyclerview/widget/h1;

    iget-object v3, v3, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, v2, Landroidx/recyclerview/widget/u;->a:Landroidx/recyclerview/widget/h1;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/o1;->dispatchMoveFinished(Landroidx/recyclerview/widget/h1;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/v;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/v;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/v;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/h1;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/o1;->dispatchRemoveFinished(Landroidx/recyclerview/widget/h1;)V

    iget-object v2, p0, Landroidx/recyclerview/widget/v;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/v;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    const/high16 v2, 0x3f800000    # 1.0f

    if-ltz v0, :cond_2

    iget-object v3, p0, Landroidx/recyclerview/widget/v;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/h1;

    iget-object v4, v3, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/o1;->dispatchAddFinished(Landroidx/recyclerview/widget/h1;)V

    iget-object v2, p0, Landroidx/recyclerview/widget/v;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/v;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_5

    iget-object v3, p0, Landroidx/recyclerview/widget/v;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/t;

    iget-object v4, v3, Landroidx/recyclerview/widget/t;->a:Landroidx/recyclerview/widget/h1;

    if-eqz v4, :cond_3

    invoke-virtual {p0, v3, v4}, Landroidx/recyclerview/widget/v;->b(Landroidx/recyclerview/widget/t;Landroidx/recyclerview/widget/h1;)Z

    :cond_3
    iget-object v4, v3, Landroidx/recyclerview/widget/t;->b:Landroidx/recyclerview/widget/h1;

    if-eqz v4, :cond_4

    invoke-virtual {p0, v3, v4}, Landroidx/recyclerview/widget/v;->b(Landroidx/recyclerview/widget/t;Landroidx/recyclerview/widget/h1;)Z

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/v;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/v;->isRunning()Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Landroidx/recyclerview/widget/v;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_9

    iget-object v3, p0, Landroidx/recyclerview/widget/v;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_5
    if-ltz v4, :cond_8

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/u;

    iget-object v6, v5, Landroidx/recyclerview/widget/u;->a:Landroidx/recyclerview/widget/h1;

    iget-object v6, v6, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v5, v5, Landroidx/recyclerview/widget/u;->a:Landroidx/recyclerview/widget/h1;

    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/o1;->dispatchMoveFinished(Landroidx/recyclerview/widget/h1;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroidx/recyclerview/widget/v;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_9
    iget-object v0, p0, Landroidx/recyclerview/widget/v;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_c

    iget-object v1, p0, Landroidx/recyclerview/widget/v;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_7
    if-ltz v3, :cond_b

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/h1;

    iget-object v5, v4, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/o1;->dispatchAddFinished(Landroidx/recyclerview/widget/h1;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Landroidx/recyclerview/widget/v;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_c
    iget-object v0, p0, Landroidx/recyclerview/widget/v;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_11

    iget-object v1, p0, Landroidx/recyclerview/widget/v;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_9
    if-ltz v2, :cond_10

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/t;

    iget-object v4, v3, Landroidx/recyclerview/widget/t;->a:Landroidx/recyclerview/widget/h1;

    if-eqz v4, :cond_d

    invoke-virtual {p0, v3, v4}, Landroidx/recyclerview/widget/v;->b(Landroidx/recyclerview/widget/t;Landroidx/recyclerview/widget/h1;)Z

    :cond_d
    iget-object v4, v3, Landroidx/recyclerview/widget/t;->b:Landroidx/recyclerview/widget/h1;

    if-eqz v4, :cond_e

    invoke-virtual {p0, v3, v4}, Landroidx/recyclerview/widget/v;->b(Landroidx/recyclerview/widget/t;Landroidx/recyclerview/widget/h1;)Z

    :cond_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Landroidx/recyclerview/widget/v;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    :cond_10
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_11
    iget-object v0, p0, Landroidx/recyclerview/widget/v;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/v;->cancelAll(Ljava/util/List;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/v;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/v;->cancelAll(Ljava/util/List;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/v;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/v;->cancelAll(Ljava/util/List;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/v;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/v;->cancelAll(Ljava/util/List;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/D0;->dispatchAnimationsFinished()V

    return-void
.end method

.method public getAddDuration()J
    .locals 2

    const-wide/16 v0, 0xc8

    return-wide v0
.end method

.method public getChangeDuration()J
    .locals 2

    const-wide/16 v0, 0x190

    return-wide v0
.end method

.method public getLastItemBottom()I
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/v;->mLastItemBottom:I

    return p0
.end method

.method public getMoveDuration()J
    .locals 2

    const-wide/16 v0, 0x190

    return-wide v0
.end method

.method public getPendingAnimFlag()I
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/v;->mPendingAnimFlag:I

    return p0
.end method

.method public getRemoveDuration()J
    .locals 2

    const-wide/16 v0, 0x64

    return-wide v0
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/v;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/v;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/v;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/v;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/v;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/v;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/v;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/v;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/v;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/v;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/v;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public runPendingAnimations()V
    .locals 13

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/recyclerview/widget/v;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/v;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/v;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    iget-object v4, p0, Landroidx/recyclerview/widget/v;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Landroidx/recyclerview/widget/v;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "preferencecategory"

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/h1;

    iget-object v8, v6, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {p0}, Landroidx/recyclerview/widget/v;->getRemoveDuration()J

    move-result-wide v10

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_1

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-wide/16 v10, 0x0

    :cond_1
    iget-object v7, p0, Landroidx/recyclerview/widget/v;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    new-instance v10, Landroidx/recyclerview/widget/p;

    invoke-direct {v10, p0, v6, v9, v8}, Landroidx/recyclerview/widget/p;-><init>(Landroidx/recyclerview/widget/v;Landroidx/recyclerview/widget/h1;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v7, v10}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Landroidx/recyclerview/widget/v;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    if-nez v2, :cond_4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Landroidx/recyclerview/widget/v;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v6, p0, Landroidx/recyclerview/widget/v;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Landroidx/recyclerview/widget/v;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    new-instance v6, Landroidx/recyclerview/widget/o;

    invoke-direct {v6, v0, p0, v5}, Landroidx/recyclerview/widget/o;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    if-nez v1, :cond_3

    iget-boolean v8, p0, Landroidx/recyclerview/widget/v;->mEnableRemoveDelay:Z

    if-eqz v8, :cond_3

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/u;

    iget-object v5, v5, Landroidx/recyclerview/widget/u;->a:Landroidx/recyclerview/widget/h1;

    iget-object v5, v5, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/v;->getRemoveDuration()J

    move-result-wide v8

    sget-object v10, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v6, v8, v9}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Landroidx/recyclerview/widget/o;->run()V

    :cond_4
    :goto_1
    if-nez v3, :cond_6

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Landroidx/recyclerview/widget/v;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v6, p0, Landroidx/recyclerview/widget/v;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Landroidx/recyclerview/widget/v;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    new-instance v6, Landroidx/recyclerview/widget/o;

    const/4 v8, 0x1

    invoke-direct {v6, v8, p0, v5}, Landroidx/recyclerview/widget/o;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    if-nez v1, :cond_5

    iget-boolean v8, p0, Landroidx/recyclerview/widget/v;->mEnableRemoveDelay:Z

    if-eqz v8, :cond_5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/t;

    iget-object v5, v5, Landroidx/recyclerview/widget/t;->a:Landroidx/recyclerview/widget/h1;

    iget-object v5, v5, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/v;->getRemoveDuration()J

    move-result-wide v8

    sget-object v10, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v6, v8, v9}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_2

    :cond_5
    invoke-virtual {v6}, Landroidx/recyclerview/widget/o;->run()V

    :cond_6
    :goto_2
    if-nez v4, :cond_a

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Landroidx/recyclerview/widget/v;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v5, p0, Landroidx/recyclerview/widget/v;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Landroidx/recyclerview/widget/v;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    new-instance v5, Landroidx/recyclerview/widget/o;

    const/4 v6, 0x2

    invoke-direct {v5, v6, p0, v4}, Landroidx/recyclerview/widget/o;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    if-nez v3, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v5}, Landroidx/recyclerview/widget/o;->run()V

    goto :goto_4

    :cond_8
    :goto_3
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/h1;

    iget-object p0, p0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v5}, Landroidx/recyclerview/widget/o;->run()V

    goto :goto_4

    :cond_9
    sget-object v0, Lf1/W;->a:Ljava/util/WeakHashMap;

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v5, v0, v1}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :cond_a
    :goto_4
    return-void
.end method
