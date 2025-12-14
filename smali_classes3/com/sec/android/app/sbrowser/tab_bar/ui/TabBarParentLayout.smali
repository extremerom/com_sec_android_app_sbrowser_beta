.class public Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private mCurrentTabButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private calculateChildIndex(I)I
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    if-ne v2, p1, :cond_0

    move v0, v1

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    check-cast v3, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getTabCount()I

    move-result v3

    add-int/2addr v3, v2

    move v2, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "[calculateChildIndex] index : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", return child index : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TabBarParentLayout"

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isGroupView(Landroid/view/View;)Z
    .locals 0

    instance-of p0, p1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    return p0
.end method

.method private removeTabWithAnimation(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->removeTabWithAnimation()V

    return-void
.end method


# virtual methods
.method public addTabButtonView(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;Ljava/lang/String;I)V
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "[addTabButtonView] id : ["

    const-string v2, "TabBarParentLayout"

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->getTabGroupByName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getTabId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] into ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] at "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, p3, v2}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    if-eqz p0, :cond_1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setIsInGroup(Z)V

    invoke-virtual {p0, p1, p3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->addTabButton(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->calculateChildIndex(I)I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getTabId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] into [root] at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " (actual : "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setIsInGroup(Z)V

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public addTabGroupView(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;I)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->calculateChildIndex(I)I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[addTabGroupView] add tab group : ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabBarParentLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public cleanDummyTabButtons()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    instance-of v3, v2, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getTabButtons()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isDummyTab()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    check-cast v2, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isDummyTab()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "cleanDummyTabButtons(): "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TabBarParentLayout"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->removeTabButtonView(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V

    goto :goto_3

    :cond_5
    return-void
.end method

.method public getActualTabButtonCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->getShowingTabButtonCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->getRemovingTabCount()I

    move-result p0

    sub-int/2addr v0, p0

    const/4 p0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getCurrentTabButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->mCurrentTabButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    return-object p0
.end method

.method public getCurrentTabIndex()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->mCurrentTabButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getIndex()I

    move-result p0

    return p0
.end method

.method public getHiddenTabGroupViewByScroll(I)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    instance-of v3, v2, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->isHiddenByScroll(I)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRemovingTabCount()I
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    check-cast v3, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getRemovingChildCount()I

    move-result v3

    add-int/2addr v3, v2

    move v2, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "[getRemovingTabCount] child count : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " / showing count : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TabBarParentLayout"

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public getShowingTabButtonCount()I
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    check-cast v3, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getShowingChildCount()I

    move-result v3

    add-int/2addr v3, v2

    move v2, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "[getShowingTabButtonCount] child count : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " / showing count : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TabBarParentLayout"

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public getTabButtonByIndex(I)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->isGroupView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    check-cast v3, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getTabButtonByIndex(I)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object v4

    if-eqz v4, :cond_1

    return-object v4

    :cond_1
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getTabButtonCount()I

    move-result v3

    add-int/2addr v3, v2

    move v2, v3

    goto :goto_1

    :cond_2
    if-ne v2, p1, :cond_3

    check-cast v3, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    return-object v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTabButtonByTabId(I)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->isGroupView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    check-cast v2, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getTabButtonByTabId(I)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_1
    check-cast v2, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getTabId()I

    move-result v3

    if-ne v3, p1, :cond_2

    return-object v2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTabGroupByName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->isGroupView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    check-cast v3, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public indexOfTabButton(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isInGroup()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getGroupName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->getTabGroupByName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public isFirstTabButton(Landroid/view/View;)Z
    .locals 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_7

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    instance-of v4, v3, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    check-cast v3, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->isClosing()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    instance-of p0, p1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    if-eqz p0, :cond_3

    if-ne v3, p1, :cond_2

    move v1, v5

    :cond_2
    return v1

    :cond_3
    instance-of p0, p1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    if-eqz p0, :cond_4

    check-cast p1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->isFirstTabButton(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)Z

    move-result p0

    return p0

    :cond_4
    return v1

    :cond_5
    check-cast v3, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isClosing()Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    if-ne v3, p1, :cond_7

    move v1, v5

    :cond_7
    return v1
.end method

.method public isLastTabButton(Landroid/view/View;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_7

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    instance-of v4, v3, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    if-eqz v4, :cond_4

    check-cast v3, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    instance-of p0, p1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    if-eqz p0, :cond_2

    if-ne v3, p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1

    :cond_2
    instance-of p0, p1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    if-eqz p0, :cond_3

    check-cast p1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->isLastTabButton(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)Z

    move-result p0

    return p0

    :cond_3
    return v2

    :cond_4
    check-cast v3, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isClosing()Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    if-ne v3, p1, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    return v1

    :cond_7
    return v2
.end method

.method public moveTabGroup(Ljava/lang/String;IZ)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->getTabGroupByName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->getTabButtonByTabId(I)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->indexOfTabButton(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)I

    move-result v1

    if-eqz p3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    const-string v2, "[moveTabGroup] move ["

    const-string v3, "] to "

    invoke-static {v2, p1, v3}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz p3, :cond_2

    const-string p3, "behind of "

    goto :goto_0

    :cond_2
    const-string p3, "front of "

    :goto_0
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " at "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TabBarParentLayout"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public printTabs()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    check-cast v3, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->printTabs()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public removeAllTabsInGroup(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->getTabGroupByName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->removeAllTabs()V

    return-void
.end method

.method public removeAllUnlockedTabs()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->isGroupView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    check-cast v2, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->removeUnlockedTabs()V

    goto :goto_1

    :cond_1
    check-cast v2, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isLocked()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->removeTabWithAnimation(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public removeAllUnlockedTabsInGroup(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->getTabGroupByName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->removeUnlockedTabs()V

    return-void
.end method

.method public removeOtherTabs(I)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->isGroupView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    check-cast v2, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->removeOtherTabs(I)V

    goto :goto_1

    :cond_1
    check-cast v2, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getTabId()I

    move-result v3

    if-eq v3, p1, :cond_2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isLocked()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->removeTabWithAnimation(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public removeOtherTabsInGroup(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->getTabGroupByName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->removeOtherTabs(I)V

    return-void
.end method

.method public removeTabButtonView(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[removeTabButtonView] id : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getTabId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabBarParentLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->removeTab(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public removeTabGroupView(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[removeTabGroupView] group ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabBarParentLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setAccessibilityEnabled(Landroid/view/ViewGroup;Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    check-cast v2, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    invoke-interface {v2, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->setEnabled(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public ungroup(Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->getTabGroupByName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getTabButtons()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getIndex()I

    move-result v4

    invoke-virtual {p1, v3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->removeTab(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V

    const-string v5, ""

    invoke-virtual {p0, v3, v5, v4}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->addTabButtonView(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;Ljava/lang/String;I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public updateActivatedTab(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->mCurrentTabButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->mCurrentTabButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setActivated(Z)V

    :cond_0
    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setEnableCloseUnlockButton(Z)V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->mCurrentTabButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {p0}, Landroid/view/View;->isActivated()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setActivated(Z)V

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_2
    return-void
.end method

.method public updateDrawable()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    check-cast v2, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->updateDrawable()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateLayout()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    check-cast v2, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->updateLayout()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateTabGroupColor(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->getTabGroupByName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->updateDrawable(I)V

    return-void
.end method

.method public updateTabGroupName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->getTabGroupByName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->updateGroupName(Ljava/lang/String;)V

    return-void
.end method
