.class Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->createTabRecyclerAdapterListener()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->lambda$onItemLongClick$2(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->lambda$onCloseTab$0(ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->lambda$onCloseTab$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic lambda$onCloseTab$0(ILandroid/content/DialogInterface;I)V
    .locals 0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->setCloseDialog(Lm/l;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->requestCloseTabByPos(IZ)V

    return-void
.end method

.method private static synthetic lambda$onCloseTab$1(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$onItemLongClick$2(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->q(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;F)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public dragTabToGroup(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->o(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;ILjava/lang/String;)V

    return-void
.end method

.method public dragTabToTab(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->p(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;II)V

    return-void
.end method

.method public exitSearchMode()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->exitSearchMode()V

    return-void
.end method

.method public getBottomPaddingHeight()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->getBottomPaddingHeight()I

    move-result p0

    return p0
.end method

.method public getCurrentGroup()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getCurrentGroup()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTabId()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p0

    return p0
.end method

.method public getModeType()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mModeType:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    return-object p0
.end method

.method public getSpanCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mSpanCount:I

    return p0
.end method

.method public getTabRecyclerView()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;

    return-object p0
.end method

.method public isEditModeFromSearch()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->isEditModeFromSearch()Z

    move-result p0

    return p0
.end method

.method public isMoveMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mModeType:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->isMoveMode()Z

    move-result p0

    return p0
.end method

.method public isSearchBarShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->isSearchBarShowing()Z

    move-result p0

    return p0
.end method

.method public isTabDragging()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mIsTabDragging:Z

    return p0
.end method

.method public onCloseTab(ILandroid/view/View;)V
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->shouldIgnoreClicked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerViewAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isGroupItem()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->hasLockedTab(Ljava/lang/String;)Z

    move-result v6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/c;

    invoke-direct {v7, p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/c;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;I)V

    new-instance v8, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/d;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    move-object v4, p2

    invoke-static/range {v3 .. v8}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabUtil;->showCloseGroupDialog(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lm/l;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->setCloseDialog(Lm/l;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const-string p2, "4531"

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->setIsClosing(Z)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->requestCloseTabByPos(IZ)V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f141034

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onDragEnd()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->finishDrag()V

    return-void
.end method

.method public onDragStart(Landroidx/recyclerview/widget/h1;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mTouchHelper:Landroidx/recyclerview/widget/X;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->t(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mTouchHelper:Landroidx/recyclerview/widget/X;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/X;->n(Landroidx/recyclerview/widget/h1;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->setBottomButtonEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onGroupDragEnd()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->u(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->n(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;)V

    return-void
.end method

.method public onGroupDragLocation(F)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->q(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;F)V

    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .locals 4

    const-string v0, "[onItemClick] tabId : "

    const-string v1, "TabMainEditableView"

    invoke-static {p2, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->shouldIgnoreClicked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "[onItemClick] ItemClick ignored"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerViewAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/J0;->getPosition(Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->getItem(I)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mModeType:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->isNormalMode()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-boolean p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mIsShiftKeyPressed:Z

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    const-string p1, "[onItemClick] is shift key pressed"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    sget-object p2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->EDIT:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->enterEditModeWithType(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mCallBacks:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;->onEnterEditMode(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerViewAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;

    invoke-virtual {p1, v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->setLastSelectedItem(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerViewAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->selectWithShift(I)Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->updateViewsBySelect()V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isGroupItem()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->isSearchBarShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->exitSearchMode()V

    :cond_4
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->setCurrentGroup(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->refreshRecyclerView()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->updateTabCountInFloatingMenu()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p0, v0, v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->sendSALoggingForTabClick(ZZ)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->getCurrentTabId()I

    move-result v1

    if-ne v1, p2, :cond_6

    goto :goto_0

    :cond_6
    move v0, v3

    :goto_0
    invoke-interface {p1, v3, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->sendSALoggingForTabClick(ZZ)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->changeCurrentTab(I)V

    goto :goto_1

    :cond_7
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mModeType:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->isMoveMode()Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v2, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->r(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-boolean v1, p2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mIsShiftKeyPressed:Z

    if-eqz v1, :cond_9

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerViewAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->selectWithShift(I)Z

    move-result p2

    if-nez p2, :cond_a

    :cond_9
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerViewAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;

    invoke-virtual {p2, p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->toggleCheckbox(Landroid/view/View;I)V

    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->updateViewsBySelect()V

    :cond_b
    :goto_1
    return-void
.end method

.method public onItemDetached(I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getTabById(I)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->unloadTabData(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;Z)V

    :cond_0
    return-void
.end method

.method public onItemLongClick(Landroid/view/View;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)Z
    .locals 5

    const-string v0, "TabMainEditableView"

    const-string v1, "[onItemLongClick]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->isMultiTabAnimating()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-boolean v2, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mIsLongPressDragging:Z

    if-nez v2, :cond_6

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mModeType:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->isMoveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerViewAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/J0;->getPosition(Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iput v0, v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mLongClickedPosition:I

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isChecked()Z

    move-result v3

    iput-boolean v3, v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mIsCheckedBeforeLongClick:Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mModeType:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->isNormalMode()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->isSearchBarShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getScreenID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "4076"

    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    sget-object v3, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->EDIT:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->enterEditModeWithType(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mCallBacks:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;

    invoke-interface {v2, v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;->onEnterEditMode(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;)V

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-boolean v3, v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mIsShiftKeyPressed:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerViewAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->setLastSelectedItem(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerViewAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->selectWithShift(I)Z

    goto :goto_0

    :cond_4
    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerViewAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;

    invoke-virtual {v2, p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->updateSelectionByLongClick(Landroid/view/View;I)V

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->seslStartLongPressMultiSelection()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerViewAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mModeType:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isSelectable(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;)Z

    move-result v0

    if-nez v0, :cond_5

    return v4

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->updateViewsBySelect()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mModeType:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->getCurrentGroup()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->isEditModeFromSearch()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->isSecretModeEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->getFilteredTabList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerViewAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->startDragTimer(Landroid/view/View;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    new-instance p2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/e;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/e;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    :cond_6
    :goto_1
    return v1
.end method

.method public onItemMoved(II)V
    .locals 8

    const-string v0, "[onItemMoved] fromPos: "

    const-string v1, ", toPos: "

    const-string v2, "TabMainEditableView"

    invoke-static {p1, p2, v0, v1, v2}, Lt/b;->w(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mNeedFullUpdate:Z

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->getItem(I)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    invoke-virtual {v3, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->getItem(I)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    move-result-object v3

    if-eqz v0, :cond_b

    if-nez v3, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isGroupItem()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isGroupItem()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerViewAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTabId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getIndexOnOriginalList(I)I

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerViewAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTabId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getIndexOnOriginalList(I)I

    move-result p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->moveTabOrder(II)V

    return-void

    :cond_2
    const/4 v4, 0x0

    if-ge p1, p2, :cond_3

    move v5, v1

    goto :goto_0

    :cond_3
    move v5, v4

    :goto_0
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isGroupItem()Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v5, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerViewAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getLastOfGroup(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerViewAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getFirstOfGroup(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerViewAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTabId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getIndexOnOriginalList(I)I

    move-result v6

    :goto_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isGroupItem()Z

    move-result v7

    if-eqz v7, :cond_a

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 p2, 0x2

    if-ge p1, p2, :cond_6

    move v4, v1

    :cond_6
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isGroupItem()Z

    move-result p1

    if-nez p1, :cond_9

    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    const-string p1, "[onItemMoved] optimize group reordering"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerViewAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getFirstOfGroup(Ljava/lang/String;)I

    move-result p1

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerViewAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getLastOfGroup(Ljava/lang/String;)I

    move-result p1

    :goto_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    xor-int/lit8 p2, v5, 0x1

    invoke-interface {p0, v6, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->reorderTabWithGroup(IIZ)V

    goto :goto_4

    :cond_9
    :goto_3
    const-string p1, "[onItemMoved] cannot optimize group reordering"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v6, v5}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->reorderGroup(Ljava/lang/String;IZ)V

    goto :goto_4

    :cond_a
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerViewAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTabId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getIndexOnOriginalList(I)I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p0, p1, v6, v5}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->reorderTabWithGroup(IIZ)V

    :cond_b
    :goto_4
    return-void
.end method

.method public onRequestTabData(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->loadTabData(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;Z)V

    return-void
.end method

.method public onTabUnlocked(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->unlockTab(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public scrollToPosition(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public scrollToTop()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method public setCurrentGroup(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->setCurrentGroup(Ljava/lang/String;)V

    return-void
.end method

.method public setIsTabDragging(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mIsTabDragging:Z

    return-void
.end method

.method public updateTabList()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->reload()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->getOriginalTabListItems(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->setTabListToAdapter(Ljava/util/ArrayList;)V

    return-void
.end method

.method public updateViewsBySelect()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->updateViewsBySelect()V

    return-void
.end method
