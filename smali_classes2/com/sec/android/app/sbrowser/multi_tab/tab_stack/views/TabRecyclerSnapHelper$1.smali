.class Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper$1;
.super Landroidx/recyclerview/widget/d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;->createScroller(Landroidx/recyclerview/widget/J0;)Landroidx/recyclerview/widget/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;

.field final synthetic val$layoutManager:Landroidx/recyclerview/widget/J0;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;Landroid/content/Context;Landroidx/recyclerview/widget/J0;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper$1;->val$layoutManager:Landroidx/recyclerview/widget/J0;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/d0;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 0

    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p1, p0

    return p1
.end method

.method public onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/d1;Landroidx/recyclerview/widget/a1;)V
    .locals 3

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper$1;->val$layoutManager:Landroidx/recyclerview/widget/J0;

    invoke-virtual {p2, v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerSnapHelper;->calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/J0;Landroid/view/View;)[I

    move-result-object p1

    const/4 p2, 0x0

    aget p2, p1, p2

    const/4 v0, 0x1

    aget p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/d0;->calculateTimeForDeceleration(I)I

    move-result v1

    const/16 v2, 0x7d0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object p0, p0, Landroidx/recyclerview/widget/d0;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, p2, p1, p0, v0}, Landroidx/recyclerview/widget/a1;->b(IILandroid/view/animation/Interpolator;I)V

    return-void
.end method
