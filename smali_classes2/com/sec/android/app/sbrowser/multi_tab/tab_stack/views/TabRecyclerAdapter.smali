.class public abstract Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabReorderListener;
.implements Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabAccessibilityDelegate$CustomActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mDragTimer:Ljava/util/Timer;

.field protected mFilter:Ljava/lang/String;

.field private mFilteredListData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsSecretMode:Z

.field private mLastSelectedItem:I

.field protected mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

.field private mOriginalData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSrcTabId:I

.field private mSuggestedTabsForDeletionShown:Z

.field protected mTabAccDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabAccessibilityDelegate;

.field private mTabDeleteSuggestionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

.field private mViewDragStart:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;)V
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mTabDeleteSuggestionList:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mSuggestedTabsForDeletionShown:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mOriginalData:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mGroupList:Ljava/util/List;

    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilter:Ljava/lang/String;

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mLastSelectedItem:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mSrcTabId:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mIsSecretMode:Z

    new-instance p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabAccessibilityDelegate;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabAccessibilityDelegate;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mTabAccDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabAccessibilityDelegate;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabAccessibilityDelegate;->setCustomActionListener(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabAccessibilityDelegate$CustomActionListener;)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->lambda$postNotifyDataSetChangedWithScroll$0()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;Landroid/view/View;Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->lambda$setOnDragListener$1(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;Landroid/view/View;Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mTabDeleteSuggestionList:Ljava/util/List;

    return-object p0
.end method

.method private checkAndUpdateTabImportance()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;Ljava/util/List;Ljava/util/HashSet;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private createGroupItem(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mOriginalData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->generateVirtualTabId(I)I

    move-result p0

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getGroupColorId()I

    move-result p1

    invoke-direct {v0, p2, p1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method private createGroupItemForTargetGroup(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mOriginalData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->generateVirtualTabIdForTargetGroup(I)I

    move-result p0

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getGroupColorId()I

    move-result p1

    invoke-direct {v0, v1, p1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method private dragTabToGroup(II)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getGroupFromGroupItem(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->dragTabToGroup(ILjava/lang/String;)V

    return-void
.end method

.method private dragTabToTab(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->dragTabToTab(II)V

    return-void
.end method

.method private getGroupFromGroupItem(I)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTabId()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private isDragAllowed(I)Z
    .locals 0

    if-ltz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const-string p0, "TabRecyclerAdapter"

    const-string p1, "[isDragAllowed] is not allowed position"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$postNotifyDataSetChangedWithScroll$0()V
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->scrollToTop()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setOnDragListener$1(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;Landroid/view/View;Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTabId()I

    move-result p1

    iget p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mSrcTabId:I

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p4}, Landroid/view/DragEvent;->getAction()I

    move-result p3

    const/4 v2, 0x2

    if-eq p3, v2, :cond_9

    const/4 v2, 0x3

    if-eq p3, v2, :cond_7

    const/4 p4, 0x4

    if-eq p3, p4, :cond_4

    const/4 p4, 0x5

    if-eq p3, p4, :cond_2

    const/4 p4, 0x6

    if-eq p3, p4, :cond_1

    goto :goto_0

    :cond_1
    iget p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mSrcTabId:I

    if-eq p1, p3, :cond_a

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->onDragExit(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mSrcTabId:I

    if-eq p1, p3, :cond_3

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->onDragEnter(Landroid/view/View;)V

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    if-eqz p0, :cond_a

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->setIsTabDragging(Z)V

    goto :goto_0

    :cond_4
    iget p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mSrcTabId:I

    if-eq p1, p3, :cond_5

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->onDragExit(Landroid/view/View;)V

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->onGroupDragEnd()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->setIsTabDragging(Z)V

    :cond_6
    iput v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mSrcTabId:I

    goto :goto_0

    :cond_7
    iget p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mSrcTabId:I

    if-eq p1, p3, :cond_8

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->onDragExit(Landroid/view/View;)V

    :cond_8
    invoke-direct {p0, p4, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->onDrop(Landroid/view/DragEvent;I)V

    goto :goto_0

    :cond_9
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    if-eqz p0, :cond_a

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result p1

    invoke-virtual {p4}, Landroid/view/DragEvent;->getY()F

    move-result p2

    add-float/2addr p2, p1

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->onGroupDragLocation(F)V

    :cond_a
    :goto_0
    return v0
.end method

.method private onDrop(Landroid/view/DragEvent;I)V
    .locals 3

    const-string v0, "TabRecyclerAdapter"

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mSrcTabId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, p2, :cond_1

    return-void

    :cond_1
    const-string v1, "[onDrop] srcTabId: "

    const-string v2, ", dstTabId: "

    invoke-static {p1, p2, v1, v2, v0}, Lt/b;->w(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mIsSecretMode:Z

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object v0

    if-gez p2, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->dragTabToGroup(II)V

    const-string p0, "4546"

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->dragTabToTab(II)V

    const-string p0, "4545"

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[onDrop] "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateOriginalTabList()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->updateTabList()V

    return-void
.end method


# virtual methods
.method public canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/h1;II)Z
    .locals 0

    invoke-direct {p0, p5}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->isDragAllowed(I)Z

    move-result p0

    return p0
.end method

.method public cancelDragTimer()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mDragTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mDragTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mViewDragStart:Landroid/view/View;

    return-void
.end method

.method public abstract checkItem(Landroid/view/View;IZ)V
.end method

.method public abstract cleanUpViewHolder(Landroidx/recyclerview/widget/h1;)V
.end method

.method public abstract clearAllTextHighlight(Landroidx/recyclerview/widget/RecyclerView;)V
.end method

.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->highlightOnReorder(Landroidx/recyclerview/widget/h1;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->onDragEnd()V

    return-void
.end method

.method public enterSelectMode()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->postNotifyDataSetChanged()V

    return-void
.end method

.method public exitSelectMode()V
    .locals 5

    const-string v0, "[exitSelectMode]"

    const-string v1, "TabRecyclerAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mSuggestedTabsForDeletionShown:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->checkAndUpdateTabImportance()V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->updateGroupedList(Z)V

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mSuggestedTabsForDeletionShown:Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->getModeType()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->isGroupMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->getCurrentGroup()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->isSelectMode()Z

    move-result v3

    if-nez v3, :cond_2

    return-void

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->setChecked(Z)V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    const-string v0, "[exitSelectMode] restore tabs in current group"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->updateGroupedList(Z)V

    :cond_4
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->setLastSelectedItem(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->postNotifyDataSetChanged()V

    return-void
.end method

.method public generateVirtualTabId(I)I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    neg-int p0, p1

    add-int/lit8 p0, p0, -0x2

    return p0
.end method

.method public generateVirtualTabIdForTargetGroup(I)I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    neg-int p0, p1

    add-int/lit8 p0, p0, -0x3

    return p0
.end method

.method public getAdjustedY(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;F)F
    .locals 0

    return p3
.end method

.method public getFilter()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilter:Ljava/lang/String;

    return-object p0
.end method

.method public getFilteredTabList()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    return-object p0
.end method

.method public getFirstOfGroup(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mOriginalData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mOriginalData:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getGroupCnt()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mGroupList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getGroupIndex(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isGroupItem()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public getGroupMembers(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mOriginalData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getGroupPosition(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getFilteredTabList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getIndexOnOriginalList(I)I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mOriginalData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTabId()I

    move-result v2

    if-ne v2, p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mOriginalData:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getItem(I)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTabId()I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_1
    :goto_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getType()I

    move-result p0

    return p0
.end method

.method public getLastOfGroup(Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mOriginalData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mOriginalData:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getMemberCount(Ljava/lang/String;)I
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mOriginalData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getGroup()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getOriginalTabList()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mOriginalData:Ljava/util/List;

    return-object p0
.end method

.method public getSelectedGroupCount()I
    .locals 3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isGroupItem()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getSelectedItemCount()I
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getSelectedTabIndexList()Ljava/util/List;
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

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSelectedTabsCount()I
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isGroupItem()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getGroupMembers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public getTabFromOriginal(I)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mOriginalData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTabId()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTabGroupIndex(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public abstract getTabId(Landroidx/recyclerview/widget/h1;)I
.end method

.method public getTabIndex(I)I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTabId()I

    move-result v2

    if-ne v2, p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public getTitle(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabUtil;->getTabTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTitle()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public abstract highlightOnReorder(Landroidx/recyclerview/widget/h1;Z)V
.end method

.method public isDarkMode()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result p0

    return p0
.end method

.method public isInLongClickStartedTab(II)Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mViewDragStart:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v0, v2, v1

    if-le p1, v0, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mViewDragStart:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    if-ge p1, v3, :cond_1

    const/4 p1, 0x1

    aget v0, v2, p1

    if-le p2, v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mViewDragStart:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, v0

    if-ge p2, p0, :cond_1

    move v1, p1

    :cond_1
    return v1
.end method

.method public isNormalMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->getModeType()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->isNormalMode()Z

    move-result p0

    return p0
.end method

.method public isSearchMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->isSearchBarShowing()Z

    move-result p0

    return p0
.end method

.method public isSelectMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->getModeType()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->isSelectMode()Z

    move-result p0

    return p0
.end method

.method public isSelectedItemSharable()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isGroupItem()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getGroupMembers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isSharable()Z

    move-result v2

    if-nez v2, :cond_2

    return v3

    :cond_3
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isSharable()Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public isSuggestedTabsForDeletionShown()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mSuggestedTabsForDeletionShown:Z

    return p0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mOriginalData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mTabAccDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabAccessibilityDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->postNotifyDataSetChanged()V

    return-void
.end method

.method public abstract onDragEnter(Landroid/view/View;)V
.end method

.method public abstract onDragExit(Landroid/view/View;)V
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/h1;II)Z
    .locals 0

    const-string p1, "[onMove] fromPos: "

    const-string p2, ", toPos: "

    const-string p3, "TabRecyclerAdapter"

    invoke-static {p4, p5, p1, p2, p3}, Lt/b;->w(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p5}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->isDragAllowed(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->isDragAllowed(I)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;

    move-result-object p1

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->runHapticFeedbackEffect(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    invoke-interface {p1, p4, p5}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->onItemMoved(II)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    invoke-interface {p1, p5, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->updateOriginalTabList()V

    invoke-virtual {p0, p4, p5}, Landroidx/recyclerview/widget/u0;->notifyItemMoved(II)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;ILandroidx/recyclerview/widget/h1;III)V
    .locals 0

    return-void
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/h1;I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/16 v0, 0x8

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->highlightOnReorder(Landroidx/recyclerview/widget/h1;Z)V

    :cond_1
    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/h1;)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getTabId(Landroidx/recyclerview/widget/h1;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[onViewRecycled] tabId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TabRecyclerAdapter"

    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->onItemDetached(I)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->cleanUpViewHolder(Landroidx/recyclerview/widget/h1;)V

    return-void
.end method

.method public performCustomActionReorder(II)V
    .locals 7

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    if-eq p1, p2, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    move v5, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/h1;II)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->scrollToPosition(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public postNotifyDataSetChanged()V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/i;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/i;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postNotifyDataSetChangedWithScroll()V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/i;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeGroup(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mGroupList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public renameGroup(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->setGroupName(Ljava/lang/String;)V

    return-void
.end method

.method public selectAll(Z)V
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mLastSelectedItem:I

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->getModeType()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isSelectable(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->setChecked(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->postNotifyDataSetChanged()V

    return-void
.end method

.method public selectSuggestedTabsForDeletion(Ljava/util/HashSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mSuggestedTabsForDeletionShown:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mTabDeleteSuggestionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mOriginalData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->getModeType()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isSelectable(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTabId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mTabDeleteSuggestionList:Ljava/util/List;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTabId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->setChecked(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->postNotifyDataSetChanged()V

    return-void
.end method

.method public selectWithShift(I)Z
    .locals 5

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mLastSelectedItem:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    if-le v0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v4, v0

    move v0, p1

    move p1, v4

    :goto_0
    const/4 v1, 0x1

    if-gt p1, v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->getModeType()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isSelectable(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->setChecked(Z)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->postNotifyDataSetChanged()V

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public setBackgroundColor(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    const p1, 0x7f0b015d

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method public setCustomActionModeTag(Landroid/view/View;IIILandroid/content/Context;)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const p2, 0x7f0b07bf

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const p2, 0x7f0b07be

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const p2, 0x7f0b07c0

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const p0, 0x7f140767

    invoke-virtual {p5, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const p2, 0x7f0b07bc

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const p0, 0x7f140761

    invoke-virtual {p5, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const p2, 0x7f0b07b2

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const p0, 0x7f140763

    invoke-virtual {p5, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const p2, 0x7f0b07b4

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const p0, 0x7f140764

    invoke-virtual {p5, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const p2, 0x7f0b07b6

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const p0, 0x7f140765

    invoke-virtual {p5, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const p2, 0x7f0b07b8

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const p0, 0x7f140766

    invoke-virtual {p5, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const p2, 0x7f0b07ba

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public setFilterSelectableForGroup()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mOriginalData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getGroup()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->scrollToTop()V

    :cond_2
    return-void
.end method

.method public setIsSecretMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mIsSecretMode:Z

    return-void
.end method

.method public setLastSelectedItem(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mLastSelectedItem:I

    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    return-void
.end method

.method public setOnDragListener(Landroid/view/View;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/j;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/j;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;Landroid/view/View;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOriginalTabList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mOriginalData:Ljava/util/List;

    return-void
.end method

.method public setSelectedTabs(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, v0, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[setSelectedTabs] select item, index: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TabRecyclerAdapter"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->setChecked(Z)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public setTabDeleteSuggestionList()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mOriginalData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->getModeType()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isSelectable(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mTabDeleteSuggestionList:Ljava/util/List;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTabId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setTalkBackCustomAction(Landroid/view/View;III)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->getModeType()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->isSelectMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->setCustomActionModeTag(Landroid/view/View;IIILandroid/content/Context;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mTabAccDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabAccessibilityDelegate;

    invoke-virtual {p1, p0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_0
    return-void
.end method

.method public showTargetGroup()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->getCurrentGroup()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f1400be

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-direct {v2, v1, v3, v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;-><init>(Ljava/lang/String;II)V

    const/4 v1, 0x3

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->setType(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mOriginalData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getGroup()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->createGroupItemForTargetGroup(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->postNotifyDataSetChanged()V

    return-void
.end method

.method public startDrag(Landroid/view/View;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)V
    .locals 6

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isGroupItem()Z

    move-result v0

    const-string v1, "TabRecyclerAdapter"

    if-eqz v0, :cond_0

    const-string p0, "[startDragForGroup] cannot drag group item"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTabId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[startDragForGroup] tabId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/ClipData$Item;

    invoke-direct {v2, v0}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/content/ClipData;

    const-string v4, "text/plain"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4, v2}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const-string v2, "com.samsung.android.content.clipdescription.extra.IGNORE_LEFT_EDGE"

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "com.samsung.android.content.clipdescription.extra.IGNORE_RIGHT_EDGE"

    invoke-virtual {v0, v2, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v3}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ClipDescription;->setExtras(Landroid/os/PersistableBundle;)V

    new-instance v0, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v0, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    :try_start_0
    sget v2, Lcom/sec/sbrowser/spl/util/PlatformInfo;->ONEUI_VERSION:I

    const v4, 0xc544

    const/4 v5, 0x0

    if-lt v2, v4, :cond_1

    const/16 v2, 0x100

    invoke-virtual {p1, v3, v0, v5, v2}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v3, v0, v5, v2}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTabId()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mSrcTabId:I

    return-void

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[startDrag] RuntimeException:\n"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startDragTimer(Landroid/view/View;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->isTabDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "TabRecyclerAdapter"

    const-string p1, "[startDragTimer] already tab dragging"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mViewDragStart:Landroid/view/View;

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$2;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;Landroid/view/View;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)V

    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mDragTimer:Ljava/util/Timer;

    const-wide/16 v1, 0x320

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public toggleCheckbox(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->getModeType()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isSelectable(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->checkItem(Landroid/view/View;IZ)V

    :cond_0
    return-void
.end method

.method public abstract updateCurrentTabThumbnail(Landroid/graphics/Bitmap;)V
.end method

.method public updateGroupedList(Z)V
    .locals 5

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilter:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mGroupList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mOriginalData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getGroup()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->getCurrentGroup()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;->getCurrentGroup()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mGroupList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->createGroupItem(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mGroupList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->postNotifyDataSetChanged()V

    goto :goto_1

    :cond_4
    :try_start_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->postNotifyDataSetChanged()V

    :goto_1
    return-void
.end method

.method public updateSearchedList(Ljava/lang/String;)V
    .locals 12

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getSelectedTabIndexList()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    if-nez p1, :cond_0

    move-object p1, v1

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilter:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->updateGroupedList(Z)V

    goto/16 :goto_1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mOriginalData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getGroup()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v7, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getGroup()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getGroup()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, -0x1

    add-int/lit8 v7, v7, -0x2

    new-instance v8, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getGroup()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getGroup()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getGroupColorId(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v8, v9, v10, v7}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;-><init>(Ljava/lang/String;II)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v7, "internet-native://newtab/"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "chrome-native://newtab/"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    move-object v6, v1

    :cond_5
    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v6, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_6
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->postNotifyDataSetChangedWithScroll()V

    :goto_1
    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->setSelectedTabs(Ljava/util/List;)V

    :cond_8
    return-void
.end method

.method public updateSearchedListUsingSearchApi(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
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

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getSelectedTabIndexList()Ljava/util/List;

    move-result-object v0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilter:Ljava/lang/String;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    move v1, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    mul-int/lit8 v3, v3, -0x1

    add-int/lit8 v3, v3, -0x2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    invoke-virtual {v5, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getGroupColorId(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v2, v5, v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;-><init>(Ljava/lang/String;II)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getTabFromOriginal(I)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    move-result-object v4

    :goto_1
    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->mFilteredListData:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->postNotifyDataSetChangedWithScroll()V

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->setSelectedTabs(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method public updateSelectionByLongClick(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->checkItem(Landroid/view/View;IZ)V

    return-void
.end method
