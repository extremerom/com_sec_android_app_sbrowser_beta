.class public Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListViewLayoutManager;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListViewLayoutManager$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListViewLayoutManager$Callback;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListViewLayoutManager;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/J0;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/J0;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/d1;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/d1;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListViewLayoutManager;->mCallback:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListViewLayoutManager$Callback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListViewLayoutManager$Callback;->onLayoutCompleted()V

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListViewLayoutManager$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListViewLayoutManager;->mCallback:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListViewLayoutManager$Callback;

    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/d1;I)V
    .locals 0

    new-instance p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListViewLayoutManager$1;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListViewLayoutManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListViewLayoutManager$1;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListViewLayoutManager;Landroid/content/Context;)V

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/c1;->setTargetPosition(I)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/J0;->startSmoothScroll(Landroidx/recyclerview/widget/c1;)V

    return-void
.end method
