.class public abstract Landroidx/recyclerview/widget/D0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAddDuration:J

.field private mChangeDuration:J

.field private mFinishedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/A0;",
            ">;"
        }
    .end annotation
.end field

.field private mHostView:Landroid/view/View;

.field private mListener:Landroidx/recyclerview/widget/B0;

.field private mMoveDuration:J

.field private mRemoveDuration:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/D0;->mListener:Landroidx/recyclerview/widget/B0;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/D0;->mFinishedListeners:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/recyclerview/widget/D0;->mHostView:Landroid/view/View;

    const-wide/16 v0, 0x78

    iput-wide v0, p0, Landroidx/recyclerview/widget/D0;->mAddDuration:J

    iput-wide v0, p0, Landroidx/recyclerview/widget/D0;->mRemoveDuration:J

    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Landroidx/recyclerview/widget/D0;->mMoveDuration:J

    iput-wide v0, p0, Landroidx/recyclerview/widget/D0;->mChangeDuration:J

    return-void
.end method

.method public static buildAdapterChangeFlagsForAnimations(Landroidx/recyclerview/widget/h1;)I
    .locals 4

    iget v0, p0, Landroidx/recyclerview/widget/h1;->mFlags:I

    and-int/lit8 v1, v0, 0xe

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->isInvalid()Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_0

    return v3

    :cond_0
    and-int/2addr v0, v3

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getOldPosition()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAbsoluteAdapterPosition()I

    move-result p0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-eq p0, v2, :cond_1

    if-eq v0, p0, :cond_1

    or-int/lit16 v1, v1, 0x800

    :cond_1
    return v1
.end method


# virtual methods
.method public abstract animateAppearance(Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/C0;Landroidx/recyclerview/widget/C0;)Z
.end method

.method public abstract animateChange(Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/C0;Landroidx/recyclerview/widget/C0;)Z
.end method

.method public abstract animateDisappearance(Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/C0;Landroidx/recyclerview/widget/C0;)Z
.end method

.method public abstract animatePersistence(Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/C0;Landroidx/recyclerview/widget/C0;)Z
.end method

.method public abstract canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/h1;Ljava/util/List;)Z
.end method

.method public final dispatchAnimationFinished(Landroidx/recyclerview/widget/h1;)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/D0;->onAnimationFinished(Landroidx/recyclerview/widget/h1;)V

    iget-object p0, p0, Landroidx/recyclerview/widget/D0;->mListener:Landroidx/recyclerview/widget/B0;

    if-eqz p0, :cond_3

    check-cast p0, Landroidx/recyclerview/widget/o0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/h1;->setIsRecyclable(Z)V

    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->mShadowedHolder:Landroidx/recyclerview/widget/h1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->mShadowingHolder:Landroidx/recyclerview/widget/h1;

    if-nez v0, :cond_0

    iput-object v1, p1, Landroidx/recyclerview/widget/h1;->mShadowedHolder:Landroidx/recyclerview/widget/h1;

    :cond_0
    iput-object v1, p1, Landroidx/recyclerview/widget/h1;->mShadowingHolder:Landroidx/recyclerview/widget/h1;

    iget-object p0, p0, Landroidx/recyclerview/widget/o0;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/F0;

    instance-of v3, v1, Landroidx/recyclerview/widget/X;

    if-eqz v3, :cond_1

    check-cast v1, Landroidx/recyclerview/widget/X;

    invoke-virtual {v1, p1, v2}, Landroidx/recyclerview/widget/X;->g(Landroidx/recyclerview/widget/h1;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/h1;->shouldBeKeptAsChild()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeAnimatingView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/h1;->isTmpDetached()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_3
    return-void
.end method

.method public final dispatchAnimationsFinished()V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/D0;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/recyclerview/widget/D0;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/A0;

    check-cast v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/y;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/y;->a:Landroidx/recyclerview/widget/h1;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;->f(Landroidx/recyclerview/widget/h1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/D0;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public abstract endAnimation(Landroidx/recyclerview/widget/h1;)V
.end method

.method public abstract endAnimations()V
.end method

.method public getHostView()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    iget-object p0, p0, Landroidx/recyclerview/widget/D0;->mHostView:Landroid/view/View;

    return-object p0
.end method

.method public abstract getMoveDuration()J
.end method

.method public abstract getRemoveDuration()J
.end method

.method public abstract isRunning()Z
.end method

.method public final isRunning(Landroidx/recyclerview/widget/A0;)Z
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/A0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/recyclerview/widget/D0;->isRunning()Z

    move-result v0

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/y;

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/y;->a:Landroidx/recyclerview/widget/h1;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;->f(Landroidx/recyclerview/widget/h1;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/D0;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return v0
.end method

.method public obtainHolderInfo()Landroidx/recyclerview/widget/C0;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p0, Landroidx/recyclerview/widget/C0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0
.end method

.method public onAnimationFinished(Landroidx/recyclerview/widget/h1;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public recordPostLayoutInformation(Landroidx/recyclerview/widget/d1;Landroidx/recyclerview/widget/h1;)Landroidx/recyclerview/widget/C0;
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/d1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroidx/recyclerview/widget/D0;->obtainHolderInfo()Landroidx/recyclerview/widget/C0;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p2, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/C0;->a:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/C0;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    return-object p0
.end method

.method public recordPreLayoutInformation(Landroidx/recyclerview/widget/d1;Landroidx/recyclerview/widget/h1;ILjava/util/List;)Landroidx/recyclerview/widget/C0;
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/d1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/d1;",
            "Landroidx/recyclerview/widget/h1;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/recyclerview/widget/C0;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/recyclerview/widget/D0;->obtainHolderInfo()Landroidx/recyclerview/widget/C0;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p2, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/C0;->a:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/C0;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    return-object p0
.end method

.method public abstract runPendingAnimations()V
.end method

.method public setHostView(Landroid/view/View;)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    iput-object p1, p0, Landroidx/recyclerview/widget/D0;->mHostView:Landroid/view/View;

    return-void
.end method

.method public setListener(Landroidx/recyclerview/widget/B0;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/D0;->mListener:Landroidx/recyclerview/widget/B0;

    return-void
.end method
