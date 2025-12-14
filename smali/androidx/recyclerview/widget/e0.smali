.class public final Landroidx/recyclerview/widget/e0;
.super Landroidx/recyclerview/widget/d0;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Landroidx/recyclerview/widget/e0;->a:I

    iput-object p3, p0, Landroidx/recyclerview/widget/e0;->b:Ljava/lang/Object;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/d0;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/e0;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/d0;->calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F

    move-result p0

    return p0

    :pswitch_0
    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p1, p0

    return p1

    :pswitch_1
    iget-object p0, p0, Landroidx/recyclerview/widget/e0;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/f0;

    invoke-static {p0}, Landroidx/recyclerview/widget/f0;->access$100(Landroidx/recyclerview/widget/f0;)F

    move-result p0

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public calculateTimeForScrolling(I)I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/e0;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/d0;->calculateTimeForScrolling(I)I

    move-result p0

    return p0

    :pswitch_0
    const/16 v0, 0x64

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/d0;->calculateTimeForScrolling(I)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/d1;Landroidx/recyclerview/widget/a1;)V
    .locals 4

    iget p2, p0, Landroidx/recyclerview/widget/e0;->a:I

    packed-switch p2, :pswitch_data_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/d0;->getHorizontalSnapPreference()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/d0;->calculateDxToMakeVisible(Landroid/view/View;I)I

    move-result p2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/d0;->getVerticalSnapPreference()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/d0;->calculateDyToMakeVisible(Landroid/view/View;I)I

    move-result p1

    mul-int v0, p2, p2

    mul-int v1, p1, p1

    add-int/2addr v1, v0

    int-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/d0;->calculateTimeForDeceleration(I)I

    move-result v1

    if-lez v1, :cond_1

    int-to-double v0, v0

    const-wide v2, 0x3f2a36e2eb1c432dL    # 2.0E-4

    mul-double/2addr v0, v2

    const-wide v2, 0x3fdcccccc0000000L    # 0.44999998807907104

    add-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    const/16 v1, 0x320

    if-le v0, v1, :cond_0

    move v0, v1

    :cond_0
    neg-int p2, p2

    neg-int p1, p1

    iget-object p0, p0, Landroidx/recyclerview/widget/e0;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-static {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->access$000(Landroidx/recyclerview/widget/LinearLayoutManager;)Landroid/view/animation/PathInterpolator;

    move-result-object p0

    invoke-virtual {p3, p2, p1, p0, v0}, Landroidx/recyclerview/widget/a1;->b(IILandroid/view/animation/Interpolator;I)V

    :cond_1
    return-void

    :pswitch_0
    iget-object p2, p0, Landroidx/recyclerview/widget/e0;->b:Ljava/lang/Object;

    check-cast p2, Landroidx/recyclerview/widget/n0;

    iget-object v0, p2, Landroidx/recyclerview/widget/q1;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Landroidx/recyclerview/widget/n0;->calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/J0;Landroid/view/View;)[I

    move-result-object p1

    const/4 p2, 0x0

    aget p2, p1, p2

    const/4 v0, 0x1

    aget p1, p1, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/d0;->calculateTimeForDeceleration(I)I

    move-result v0

    if-lez v0, :cond_2

    iget-object p0, p0, Landroidx/recyclerview/widget/d0;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, p2, p1, p0, v0}, Landroidx/recyclerview/widget/a1;->b(IILandroid/view/animation/Interpolator;I)V

    :cond_2
    return-void

    :pswitch_1
    iget-object p2, p0, Landroidx/recyclerview/widget/e0;->b:Ljava/lang/Object;

    check-cast p2, Landroidx/recyclerview/widget/f0;

    iget-object v0, p2, Landroidx/recyclerview/widget/q1;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Landroidx/recyclerview/widget/q1;->calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/J0;Landroid/view/View;)[I

    move-result-object p1

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-static {p2}, Landroidx/recyclerview/widget/f0;->access$000(Landroidx/recyclerview/widget/f0;)I

    move-result v1

    mul-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {p2}, Landroidx/recyclerview/widget/f0;->access$000(Landroidx/recyclerview/widget/f0;)I

    move-result p2

    mul-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/d0;->calculateTimeForDeceleration(I)I

    move-result p2

    if-lez p2, :cond_4

    iget-object p0, p0, Landroidx/recyclerview/widget/d0;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, v0, p1, p0, p2}, Landroidx/recyclerview/widget/a1;->b(IILandroid/view/animation/Interpolator;I)V

    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
