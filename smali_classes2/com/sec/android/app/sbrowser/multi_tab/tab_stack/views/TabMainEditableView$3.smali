.class Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->getDelegate()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissAnimation(ZI)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerViewAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getFilteredTabList()Ljava/util/List;

    move-result-object v0

    if-ltz p2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt p2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTabId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->getTabViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->dismissAnimation(ZLandroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->requestCloseTabByPos(IZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getContainerHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->getContentHeight()I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->getAppBarHeight()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->getItemCount()I

    move-result p0

    return p0
.end method

.method public getSpanCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mSpanCount:I

    return p0
.end method

.method public getTabIndex(Landroid/view/View;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public getTabMainView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    return-object p0
.end method

.method public getTitle(Landroid/view/View;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->getTabListItemByView(Landroid/view/View;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTitle()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public hasLockTab(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->getTabListItemByView(Landroid/view/View;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->hasLockedTab(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isAppbarExtended()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->isAppBarExtended()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGroupTab(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->getTabListItemByView(Landroid/view/View;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isGroupItem()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHideStatusBarEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->isHideStatusBarEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLockedTab(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->getTabList(Z)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p0

    if-ltz p0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lt p0, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mIsLocked:Z

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public isNoTabsShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->isNoTabsShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isReordering()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->m(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;)Z

    move-result p0

    return p0
.end method

.method public removeUnlockedMemberBySwipe(I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->requestCloseTabByPos(IZ)V

    return-void
.end method

.method public resetContainerHeight()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->resetContainerHeight()V

    :cond_0
    return-void
.end method

.method public setCloseDialog(Lm/l;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->setCloseDialog(Lm/l;)V

    :cond_0
    return-void
.end method
