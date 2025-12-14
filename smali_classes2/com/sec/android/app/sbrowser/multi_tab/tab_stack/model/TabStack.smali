.class public Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack$TabStackDelegate;,
        Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack$TabStackCallbacks;
    }
.end annotation


# instance fields
.field private mCb:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack$TabStackCallbacks;

.field private mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack$TabStackDelegate;

.field private mFilter:Ljava/lang/String;

.field private final mFilteredList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;",
            ">;"
        }
    .end annotation
.end field

.field protected mGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRemovedTabs:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mTabList:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mFilteredList:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mFilter:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mGroupList:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mRemovedTabs:Ljava/util/Deque;

    return-void
.end method

.method private clearEmptyGroup()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mGroupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mTabList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mGroup:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->removeEmptyGroupItemInList(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private convertTabToGroup(Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mGroupList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    invoke-direct {p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;-><init>(ZLjava/lang/String;I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mFilteredList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mGroupList:Ljava/util/List;

    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private removeEmptyGroupItemInList(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mFilteredList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->title:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mFilteredList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private removeMemberTabs(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;Ljava/util/Iterator;)V
    .locals 2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mGroup:Ljava/lang/String;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->title:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mRemovedTabs:Ljava/util/Deque;

    invoke-interface {p1, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mCb:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack$TabStackCallbacks;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->getLastTab()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    move-result-object p2

    invoke-interface {p1, p0, v0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack$TabStackCallbacks;->onStackTabRemoved(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearTabList()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mTabList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mRemovedTabs:Ljava/util/Deque;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mTabList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    invoke-interface {v1, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mTabList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mGroupList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getFilter()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mFilter:Ljava/lang/String;

    return-object p0
.end method

.method public getGroupCnt()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mGroupList:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getGroupIndex(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mFilteredList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    iget-boolean v2, v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->isGroupTab:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->title:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mFilteredList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mFilteredList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public getLastTab()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mTabList:Ljava/util/List;

    check-cast p0, Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    return-object p0
.end method

.method public getOriginalItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mTabList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getOriginalTabList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mTabList:Ljava/util/List;

    return-object p0
.end method

.method public getTabFromOriginal(I)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mTabList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    iget v1, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mId:I

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTabGroupIndex(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mFilteredList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->title:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mFilteredList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getTabList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mFilteredList:Ljava/util/List;

    return-object p0
.end method

.method public indexOf(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mFilteredList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public rearrangeTabGroupForReopenedTab(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)V
    .locals 3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mTabList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mGroup:Ljava/lang/String;

    iget-object v2, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mGroup:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget p0, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mGroupColorId:I

    iput p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mGroupColorId:I

    :cond_1
    return-void
.end method

.method public remove(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[remove] tabId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabStack"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->getTabFromOriginal(I)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->remove(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)V

    return-void
.end method

.method public remove(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[remove] id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabStack"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mFilteredList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-boolean v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->isGroupTab:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mTabList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->removeMemberTabs(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;Ljava/util/Iterator;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mTabList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mRemovedTabs:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mCb:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack$TabStackCallbacks;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->getLastTab()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    move-result-object v1

    invoke-interface {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack$TabStackCallbacks;->onStackTabRemoved(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->clearEmptyGroup()V

    return-void
.end method

.method public setAll(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mTabList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mTabList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mTabList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mCb:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack$TabStackCallbacks;

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    invoke-interface {v3, p0, v2, v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack$TabStackCallbacks;->onStackTabRemoved(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mTabList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mGroupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mTabList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mCb:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack$TabStackCallbacks;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mCb:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack$TabStackCallbacks;

    invoke-interface {v1, p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack$TabStackCallbacks;->onStackTabAdded(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setCallbacks(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack$TabStackCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mCb:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack$TabStackCallbacks;

    return-void
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack$TabStackDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack$TabStackDelegate;

    return-void
.end method

.method public setRemovedTabs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mRemovedTabs:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mFilteredList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public synchronizeWithList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mTabList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    iget v3, v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->remove(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public undoCloseTab()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mRemovedTabs:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mRemovedTabs:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->rearrangeTabGroupForReopenedTab(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mTabList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->updateTabsForGroup()V

    return-object v0
.end method

.method public updateSearchedList(Ljava/lang/String;)V
    .locals 8

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mFilter:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->updateTabsForGroup()V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mFilter:Ljava/lang/String;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mFilteredList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mTabList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->url:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mGroup:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mFilter:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mGroup:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mGroup:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    iget-object v5, v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mGroup:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack$TabStackDelegate;

    invoke-interface {v6, v5}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack$TabStackDelegate;->getGroupColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v5, v6}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;-><init>(ZLjava/lang/String;I)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mFilteredList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v4, "internet-native://newtab/"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "chrome-native://newtab/"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const-string v3, ""

    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mFilter:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mFilter:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mFilteredList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    return-void
.end method

.method public updateSearchedListUsingSearchApi(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mFilter:Ljava/lang/String;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mFilteredList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack$TabStackDelegate;

    invoke-interface {v3, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack$TabStackDelegate;->getGroupColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, p1, v1, v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;-><init>(ZLjava/lang/String;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->getTabFromOriginal(I)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mFilteredList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public updateTabsForGroup()V
    .locals 6

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mFilter:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mFilteredList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mGroupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack$TabStackDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack$TabStackDelegate;->getCurrentGroup()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack$TabStackDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack$TabStackDelegate;->isSecretMode()Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mTabList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    iget-object v4, v3, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mGroup:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->mFilteredList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget v3, v3, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mGroupColorId:I

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->convertTabToGroup(Ljava/lang/String;ZLjava/lang/String;I)V

    goto :goto_0

    :cond_1
    return-void
.end method
