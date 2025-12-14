.class public LY2/n0;
.super LY2/f0;
.source "SourceFile"


# instance fields
.field private mChangeFlags:I

.field mCurrentListeners:I

.field private mPlayTogether:Z

.field mStarted:Z

.field mTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "LY2/f0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LY2/f0;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, LY2/n0;->mPlayTogether:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, LY2/n0;->mStarted:Z

    iput v0, p0, LY2/n0;->mChangeFlags:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, LY2/f0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, LY2/n0;->mPlayTogether:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, LY2/n0;->mStarted:Z

    iput v0, p0, LY2/n0;->mChangeFlags:I

    sget-object v1, LY2/V;->h:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    check-cast p2, Landroid/content/res/XmlResourceParser;

    const-string v1, "transitionOrdering"

    invoke-static {p1, p2, v1, v0, v0}, LW0/b;->d(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p2

    invoke-virtual {p0, p2}, LY2/n0;->setOrdering(I)LY2/n0;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public bridge synthetic addListener(LY2/d0;)LY2/f0;
    .locals 0
    .param p1    # LY2/d0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, LY2/n0;->addListener(LY2/d0;)LY2/n0;

    move-result-object p0

    return-object p0
.end method

.method public addListener(LY2/d0;)LY2/n0;
    .locals 0
    .param p1    # LY2/d0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, LY2/f0;->addListener(LY2/d0;)LY2/f0;

    return-object p0
.end method

.method public bridge synthetic addTarget(I)LY2/f0;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, LY2/n0;->addTarget(I)LY2/n0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addTarget(Landroid/view/View;)LY2/f0;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, LY2/n0;->addTarget(Landroid/view/View;)LY2/n0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addTarget(Ljava/lang/Class;)LY2/f0;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, LY2/n0;->addTarget(Ljava/lang/Class;)LY2/n0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addTarget(Ljava/lang/String;)LY2/f0;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, LY2/n0;->addTarget(Ljava/lang/String;)LY2/n0;

    move-result-object p0

    return-object p0
.end method

.method public addTarget(I)LY2/n0;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LY2/f0;

    invoke-virtual {v1, p1}, LY2/f0;->addTarget(I)LY2/f0;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, LY2/f0;->addTarget(I)LY2/f0;

    return-object p0
.end method

.method public addTarget(Landroid/view/View;)LY2/n0;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LY2/f0;

    invoke-virtual {v1, p1}, LY2/f0;->addTarget(Landroid/view/View;)LY2/f0;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, LY2/f0;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTarget(Ljava/lang/Class;)LY2/n0;
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "LY2/n0;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LY2/f0;

    invoke-virtual {v1, p1}, LY2/f0;->addTarget(Ljava/lang/Class;)LY2/f0;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, LY2/f0;->addTarget(Ljava/lang/Class;)LY2/f0;

    return-object p0
.end method

.method public addTarget(Ljava/lang/String;)LY2/n0;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LY2/f0;

    invoke-virtual {v1, p1}, LY2/f0;->addTarget(Ljava/lang/String;)LY2/f0;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, LY2/f0;->addTarget(Ljava/lang/String;)LY2/f0;

    return-object p0
.end method

.method public addTransition(LY2/f0;)LY2/n0;
    .locals 4
    .param p1    # LY2/f0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p0, p1, LY2/f0;->mParent:LY2/n0;

    iget-wide v0, p0, LY2/f0;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    invoke-virtual {p1, v0, v1}, LY2/f0;->setDuration(J)LY2/f0;

    :cond_0
    iget v0, p0, LY2/n0;->mChangeFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LY2/f0;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, LY2/f0;->setInterpolator(Landroid/animation/TimeInterpolator;)LY2/f0;

    :cond_1
    iget v0, p0, LY2/n0;->mChangeFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, LY2/f0;->getPropagation()LY2/k0;

    move-result-object v0

    invoke-virtual {p1, v0}, LY2/f0;->setPropagation(LY2/k0;)V

    :cond_2
    iget v0, p0, LY2/n0;->mChangeFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    invoke-virtual {p0}, LY2/f0;->getPathMotion()LY2/M;

    move-result-object v0

    invoke-virtual {p1, v0}, LY2/f0;->setPathMotion(LY2/M;)V

    :cond_3
    iget v0, p0, LY2/n0;->mChangeFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    invoke-virtual {p0}, LY2/f0;->getEpicenterCallback()LY2/Z;

    move-result-object v0

    invoke-virtual {p1, v0}, LY2/f0;->setEpicenterCallback(LY2/Z;)V

    :cond_4
    return-object p0
.end method

.method public cancel()V
    .locals 3
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    invoke-super {p0}, LY2/f0;->cancel()V

    iget-object v0, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LY2/f0;

    invoke-virtual {v2}, LY2/f0;->cancel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public captureEndValues(LY2/q0;)V
    .locals 2
    .param p1    # LY2/q0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p1, LY2/q0;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, LY2/f0;->isValidTarget(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LY2/f0;

    iget-object v1, p1, LY2/q0;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, LY2/f0;->isValidTarget(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, LY2/f0;->captureEndValues(LY2/q0;)V

    iget-object v1, p1, LY2/q0;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public capturePropagationValues(LY2/q0;)V
    .locals 3

    invoke-super {p0, p1}, LY2/f0;->capturePropagationValues(LY2/q0;)V

    iget-object v0, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LY2/f0;

    invoke-virtual {v2, p1}, LY2/f0;->capturePropagationValues(LY2/q0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public captureStartValues(LY2/q0;)V
    .locals 2
    .param p1    # LY2/q0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p1, LY2/q0;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, LY2/f0;->isValidTarget(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LY2/f0;

    iget-object v1, p1, LY2/q0;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, LY2/f0;->isValidTarget(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, LY2/f0;->captureStartValues(LY2/q0;)V

    iget-object v1, p1, LY2/q0;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clone()LY2/f0;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, LY2/f0;->clone()LY2/f0;

    move-result-object v0

    check-cast v0, LY2/n0;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    iget-object v1, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LY2/f0;

    invoke-virtual {v3}, LY2/f0;->clone()LY2/f0;

    move-result-object v3

    iget-object v4, v0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, v3, LY2/f0;->mParent:LY2/n0;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, LY2/n0;->clone()LY2/f0;

    move-result-object p0

    return-object p0
.end method

.method public createAnimators(Landroid/view/ViewGroup;LY2/r0;LY2/r0;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LY2/r0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # LY2/r0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "LY2/r0;",
            "LY2/r0;",
            "Ljava/util/ArrayList<",
            "LY2/q0;",
            ">;",
            "Ljava/util/ArrayList<",
            "LY2/q0;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    invoke-virtual {p0}, LY2/f0;->getStartDelay()J

    move-result-wide v1

    iget-object v3, v0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    iget-object v5, v0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, LY2/f0;

    const-wide/16 v7, 0x0

    cmp-long v5, v1, v7

    if-lez v5, :cond_2

    iget-boolean v5, v0, LY2/n0;->mPlayTogether:Z

    if-nez v5, :cond_0

    if-nez v4, :cond_2

    :cond_0
    invoke-virtual {v6}, LY2/f0;->getStartDelay()J

    move-result-wide v9

    cmp-long v5, v9, v7

    if-lez v5, :cond_1

    add-long/2addr v9, v1

    invoke-virtual {v6, v9, v10}, LY2/f0;->setStartDelay(J)LY2/f0;

    goto :goto_1

    :cond_1
    invoke-virtual {v6, v1, v2}, LY2/f0;->setStartDelay(J)LY2/f0;

    :cond_2
    :goto_1
    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-virtual/range {v6 .. v11}, LY2/f0;->createAnimators(Landroid/view/ViewGroup;LY2/r0;LY2/r0;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public excludeTarget(IZ)LY2/f0;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LY2/f0;

    invoke-virtual {v1, p1, p2}, LY2/f0;->excludeTarget(IZ)LY2/f0;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, LY2/f0;->excludeTarget(IZ)LY2/f0;

    return-object p0
.end method

.method public excludeTarget(Ljava/lang/Class;Z)LY2/f0;
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)",
            "LY2/f0;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LY2/f0;

    invoke-virtual {v1, p1, p2}, LY2/f0;->excludeTarget(Ljava/lang/Class;Z)LY2/f0;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, LY2/f0;->excludeTarget(Ljava/lang/Class;Z)LY2/f0;

    return-object p0
.end method

.method public excludeTarget(Ljava/lang/String;Z)LY2/f0;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LY2/f0;

    invoke-virtual {v1, p1, p2}, LY2/f0;->excludeTarget(Ljava/lang/String;Z)LY2/f0;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, LY2/f0;->excludeTarget(Ljava/lang/String;Z)LY2/f0;

    return-object p0
.end method

.method public getTransitionAt(I)LY2/f0;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-ltz p1, :cond_1

    iget-object v0, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LY2/f0;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTransitionCount()I
    .locals 0

    iget-object p0, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public hasAnimators()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LY2/f0;

    invoke-virtual {v2}, LY2/f0;->hasAnimators()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isSeekingSupported()Z
    .locals 4

    iget-object v0, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LY2/f0;

    invoke-virtual {v3}, LY2/f0;->isSeekingSupported()Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public pause(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    invoke-super {p0, p1}, LY2/f0;->pause(Landroid/view/View;)V

    iget-object v0, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LY2/f0;

    invoke-virtual {v2, p1}, LY2/f0;->pause(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public prepareAnimatorsForSeeking()V
    .locals 7
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LY2/f0;->mTotalDuration:J

    new-instance v0, LY2/m0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LY2/m0;-><init>(LY2/f0;I)V

    :goto_0
    iget-object v2, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LY2/f0;

    invoke-virtual {v2, v0}, LY2/f0;->addListener(LY2/d0;)LY2/f0;

    invoke-virtual {v2}, LY2/f0;->prepareAnimatorsForSeeking()V

    invoke-virtual {v2}, LY2/f0;->getTotalDurationMillis()J

    move-result-wide v3

    iget-boolean v5, p0, LY2/n0;->mPlayTogether:Z

    if-eqz v5, :cond_0

    iget-wide v5, p0, LY2/f0;->mTotalDuration:J

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, LY2/f0;->mTotalDuration:J

    goto :goto_1

    :cond_0
    iget-wide v5, p0, LY2/f0;->mTotalDuration:J

    iput-wide v5, v2, LY2/f0;->mSeekOffsetInParent:J

    add-long/2addr v5, v3

    iput-wide v5, p0, LY2/f0;->mTotalDuration:J

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic removeListener(LY2/d0;)LY2/f0;
    .locals 0
    .param p1    # LY2/d0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, LY2/n0;->removeListener(LY2/d0;)LY2/n0;

    move-result-object p0

    return-object p0
.end method

.method public removeListener(LY2/d0;)LY2/n0;
    .locals 0
    .param p1    # LY2/d0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, LY2/f0;->removeListener(LY2/d0;)LY2/f0;

    return-object p0
.end method

.method public bridge synthetic removeTarget(Landroid/view/View;)LY2/f0;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, LY2/n0;->removeTarget(Landroid/view/View;)LY2/n0;

    move-result-object p0

    return-object p0
.end method

.method public removeTarget(Landroid/view/View;)LY2/n0;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LY2/f0;

    invoke-virtual {v1, p1}, LY2/f0;->removeTarget(Landroid/view/View;)LY2/f0;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, LY2/f0;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public resume(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    invoke-super {p0, p1}, LY2/f0;->resume(Landroid/view/View;)V

    iget-object v0, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LY2/f0;

    invoke-virtual {v2, p1}, LY2/f0;->resume(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public runAnimators()V
    .locals 5
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    iget-object v0, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LY2/f0;->start()V

    invoke-virtual {p0}, LY2/f0;->end()V

    return-void

    :cond_0
    new-instance v0, LY2/m0;

    invoke-direct {v0}, LY2/m0;-><init>()V

    iput-object p0, v0, LY2/m0;->b:LY2/f0;

    iget-object v1, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LY2/f0;

    invoke-virtual {v2, v0}, LY2/f0;->addListener(LY2/d0;)LY2/f0;

    goto :goto_0

    :cond_1
    iget-object v0, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, LY2/n0;->mCurrentListeners:I

    iget-boolean v0, p0, LY2/n0;->mPlayTogether:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LY2/f0;

    iget-object v2, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LY2/f0;

    new-instance v3, LY2/m0;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v4}, LY2/m0;-><init>(LY2/f0;I)V

    invoke-virtual {v1, v3}, LY2/f0;->addListener(LY2/d0;)LY2/f0;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object p0, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LY2/f0;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, LY2/f0;->runAnimators()V

    goto :goto_3

    :cond_3
    iget-object p0, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LY2/f0;

    invoke-virtual {v0}, LY2/f0;->runAnimators()V

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public setCurrentPlayTimeMillis(JJ)V
    .locals 18
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, LY2/f0;->getTotalDurationMillis()J

    move-result-wide v5

    iget-object v7, v0, LY2/f0;->mParent:LY2/n0;

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_2

    cmp-long v7, v1, v8

    if-gez v7, :cond_0

    cmp-long v7, v3, v8

    if-ltz v7, :cond_1

    :cond_0
    cmp-long v7, v1, v5

    if-lez v7, :cond_2

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    :cond_1
    return-void

    :cond_2
    cmp-long v7, v1, v3

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-gez v7, :cond_3

    move v12, v10

    goto :goto_0

    :cond_3
    move v12, v11

    :goto_0
    cmp-long v13, v1, v8

    if-ltz v13, :cond_4

    cmp-long v14, v3, v8

    if-ltz v14, :cond_5

    :cond_4
    cmp-long v14, v1, v5

    if-gtz v14, :cond_6

    cmp-long v14, v3, v5

    if-lez v14, :cond_6

    :cond_5
    iput-boolean v11, v0, LY2/f0;->mEnded:Z

    sget-object v14, LY2/e0;->O:LA9/b;

    invoke-virtual {v0, v14, v12}, LY2/f0;->notifyListeners(LY2/e0;Z)V

    :cond_6
    iget-boolean v14, v0, LY2/n0;->mPlayTogether:Z

    if-eqz v14, :cond_7

    :goto_1
    iget-object v7, v0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v11, v7, :cond_d

    iget-object v7, v0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LY2/f0;

    invoke-virtual {v7, v1, v2, v3, v4}, LY2/f0;->setCurrentPlayTimeMillis(JJ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_7
    move v11, v10

    :goto_2
    iget-object v14, v0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v11, v14, :cond_9

    iget-object v14, v0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LY2/f0;

    iget-wide v14, v14, LY2/f0;->mSeekOffsetInParent:J

    cmp-long v14, v14, v3

    if-lez v14, :cond_8

    :goto_3
    sub-int/2addr v11, v10

    goto :goto_4

    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_9
    iget-object v11, v0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    goto :goto_3

    :goto_4
    if-ltz v7, :cond_b

    :goto_5
    iget-object v7, v0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v11, v7, :cond_d

    iget-object v7, v0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LY2/f0;

    iget-wide v14, v7, LY2/f0;->mSeekOffsetInParent:J

    move/from16 v16, v11

    sub-long v10, v1, v14

    cmp-long v17, v10, v8

    if-gez v17, :cond_a

    goto :goto_7

    :cond_a
    sub-long v14, v3, v14

    invoke-virtual {v7, v10, v11, v14, v15}, LY2/f0;->setCurrentPlayTimeMillis(JJ)V

    add-int/lit8 v11, v16, 0x1

    const/4 v10, 0x1

    goto :goto_5

    :cond_b
    :goto_6
    if-ltz v11, :cond_d

    iget-object v7, v0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LY2/f0;

    iget-wide v14, v7, LY2/f0;->mSeekOffsetInParent:J

    sub-long v8, v1, v14

    sub-long v14, v3, v14

    invoke-virtual {v7, v8, v9, v14, v15}, LY2/f0;->setCurrentPlayTimeMillis(JJ)V

    const-wide/16 v14, 0x0

    cmp-long v7, v8, v14

    if-ltz v7, :cond_c

    goto :goto_7

    :cond_c
    add-int/lit8 v11, v11, -0x1

    const-wide/16 v8, 0x0

    goto :goto_6

    :cond_d
    :goto_7
    iget-object v7, v0, LY2/f0;->mParent:LY2/n0;

    if-eqz v7, :cond_11

    cmp-long v1, v1, v5

    if-lez v1, :cond_e

    cmp-long v2, v3, v5

    if-lez v2, :cond_f

    :cond_e
    if-gez v13, :cond_11

    const-wide/16 v5, 0x0

    cmp-long v2, v3, v5

    if-ltz v2, :cond_11

    :cond_f
    if-lez v1, :cond_10

    const/4 v1, 0x1

    iput-boolean v1, v0, LY2/f0;->mEnded:Z

    :cond_10
    sget-object v1, LY2/e0;->P:LA9/b;

    invoke-virtual {v0, v1, v12}, LY2/f0;->notifyListeners(LY2/e0;Z)V

    :cond_11
    return-void
.end method

.method public bridge synthetic setDuration(J)LY2/f0;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, LY2/n0;->setDuration(J)LY2/n0;

    move-result-object p0

    return-object p0
.end method

.method public setDuration(J)LY2/n0;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-wide p1, p0, LY2/f0;->mDuration:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LY2/f0;

    invoke-virtual {v2, p1, p2}, LY2/f0;->setDuration(J)LY2/f0;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setEpicenterCallback(LY2/Z;)V
    .locals 3
    .param p1    # LY2/Z;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, LY2/f0;->setEpicenterCallback(LY2/Z;)V

    iget v0, p0, LY2/n0;->mChangeFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, LY2/n0;->mChangeFlags:I

    iget-object v0, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LY2/f0;

    invoke-virtual {v2, p1}, LY2/f0;->setEpicenterCallback(LY2/Z;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic setInterpolator(Landroid/animation/TimeInterpolator;)LY2/f0;
    .locals 0
    .param p1    # Landroid/animation/TimeInterpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, LY2/n0;->setInterpolator(Landroid/animation/TimeInterpolator;)LY2/n0;

    move-result-object p0

    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)LY2/n0;
    .locals 3
    .param p1    # Landroid/animation/TimeInterpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p0, LY2/n0;->mChangeFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, LY2/n0;->mChangeFlags:I

    iget-object v0, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LY2/f0;

    invoke-virtual {v2, p1}, LY2/f0;->setInterpolator(Landroid/animation/TimeInterpolator;)LY2/f0;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, LY2/f0;->setInterpolator(Landroid/animation/TimeInterpolator;)LY2/f0;

    return-object p0
.end method

.method public setOrdering(I)LY2/n0;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, LY2/n0;->mPlayTogether:Z

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Invalid parameter for TransitionSet ordering: "

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iput-boolean v0, p0, LY2/n0;->mPlayTogether:Z

    :goto_0
    return-object p0
.end method

.method public setPathMotion(LY2/M;)V
    .locals 2
    .param p1    # LY2/M;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, LY2/f0;->setPathMotion(LY2/M;)V

    iget v0, p0, LY2/n0;->mChangeFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, LY2/n0;->mChangeFlags:I

    iget-object v0, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LY2/f0;

    invoke-virtual {v1, p1}, LY2/f0;->setPathMotion(LY2/M;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPropagation(LY2/k0;)V
    .locals 3
    .param p1    # LY2/k0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, LY2/f0;->mPropagation:LY2/k0;

    iget v0, p0, LY2/n0;->mChangeFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, LY2/n0;->mChangeFlags:I

    iget-object v0, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LY2/f0;

    invoke-virtual {v2, p1}, LY2/f0;->setPropagation(LY2/k0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic setStartDelay(J)LY2/f0;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, LY2/n0;->setStartDelay(J)LY2/n0;

    move-result-object p0

    return-object p0
.end method

.method public setStartDelay(J)LY2/n0;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1, p2}, LY2/f0;->setStartDelay(J)LY2/f0;

    return-object p0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-super {p0, p1}, LY2/f0;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const-string v2, "\n"

    invoke-static {v0, v2}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, LY2/n0;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LY2/f0;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LY2/f0;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
