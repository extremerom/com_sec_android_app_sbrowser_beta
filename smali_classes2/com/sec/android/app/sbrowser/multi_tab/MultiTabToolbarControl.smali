.class public Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$Delegate;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$Delegate;

.field protected mEditToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;

.field private mEditToolbarDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar$Delegate;

.field protected mMoveGroupToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar;

.field private mMoveGroupToolbarListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar$Listener;

.field protected mNormalToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;

.field private mNormalToolbarListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar$Listener;

.field private final mRecents:Landroid/view/View;

.field mSearchToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

.field private mSearchToolbarListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$Delegate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$1;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mNormalToolbarListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar$Listener;

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$2;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mMoveGroupToolbarListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar$Listener;

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$3;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mSearchToolbarListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar$Listener;

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$4;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mEditToolbarDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar$Delegate;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mRecents:Landroid/view/View;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$Delegate;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->initNormalToolbar()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->initMoveGroupToolbar()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->initSearchToolbar()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->initEditToolbar()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mNormalToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f14103b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$Delegate;

    return-object p0
.end method

.method private initEditToolbar()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mRecents:Landroid/view/View;

    const v1, 0x7f0b0cdd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mEditToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mEditToolbarDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar$Delegate;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->onCreateView(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar$Delegate;)V

    :cond_0
    return-void
.end method

.method private initMoveGroupToolbar()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mRecents:Landroid/view/View;

    const v1, 0x7f0b0ce1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mMoveGroupToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mMoveGroupToolbarListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar$Listener;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar;->onCreateView(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar$Listener;)V

    :cond_0
    return-void
.end method

.method private initNormalToolbar()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mRecents:Landroid/view/View;

    const v1, 0x7f0b0cee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mNormalToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mNormalToolbarListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar$Listener;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->onCreateView(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar$Listener;)V

    :cond_0
    return-void
.end method

.method private initSearchToolbar()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mRecents:Landroid/view/View;

    const v1, 0x7f0b0cf0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mSearchToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mSearchToolbarListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar$Listener;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;->onCreateView(Landroid/content/Context;Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar$Listener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearSearchText()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mSearchToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;->clearSearchText()V

    :cond_0
    return-void
.end method

.method public enterEditMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mEditToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->enterSelectEditMode(Z)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mNormalToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;

    if-eqz p0, :cond_1

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public enterMoveMode()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mNormalToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mMoveGroupToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public exitEditMode()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mNormalToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mEditToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->exitEditModeWithoutList()V

    :cond_1
    return-void
.end method

.method public exitMoveMode()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mNormalToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mMoveGroupToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public focusEditToolbar()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mEditToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->focusToolbar()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public focusMoveToolbar()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mMoveGroupToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar;->focusToolbar()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public focusNormalToolbar()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mNormalToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->focusToolbar()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public focusSearchToolbar()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mSearchToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;->focusToolbar()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getFilterString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mSearchToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;->getFilterString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getMoreMenuButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mNormalToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->getMoreMenuButton()Landroid/view/View;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public hideKeyboard()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mSearchToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;->hideKeyboard()V

    :cond_0
    return-void
.end method

.method public isEditMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mEditToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMoreMenuButton(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mNormalToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->isMoreMenuButton(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMoveToolbar(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mMoveGroupToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar;->isMoveToolbar(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNormalToolbar(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mNormalToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->isNormalToolbar(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNormalToolbarShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mNormalToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSearchBar(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mSearchToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;->isSearchBar(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSearchBarButton(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mSearchToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;->isSearchBarButton(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSearchBarShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mSearchToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSearchToolbar(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mSearchToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;->isSearchToolbar(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSelectAllCheckbox(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mEditToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->isSelectAllCheckbox(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSelectAllChecked()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mEditToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->isSelectAllChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDestroyView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mSearchToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardTurnedOn(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mSearchToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;->hideKeyboard()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mNormalToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->onDestroyView()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mNormalToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mEditToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->onDestroyView()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mEditToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mSearchToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;->onDestroyView()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mSearchToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mMoveGroupToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar;->onDestroyView()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mMoveGroupToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar;

    :cond_4
    return-void
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mNormalToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mNormalToolbarListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar$Listener;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mMoveGroupToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mMoveGroupToolbarListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar$Listener;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mSearchToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mSearchToolbarListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar$Listener;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mEditToolbarDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar$Delegate;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mEditToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;

    return-void
.end method

.method public onKeyCharacterOnSearchToolbar(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mSearchToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;->onKeyCharacter(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyLeft(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mNormalToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->onKeyLeft(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mSearchToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;->onKeyLeft(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onKeyRight(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mNormalToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->onKeyRight(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mSearchToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;->onKeyRight(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onKeyTab(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mNormalToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->onKeyTab(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mSearchToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;->onKeyTab(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->isSearchBarShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mSearchToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;->showKeyboardWithDelay()V

    :cond_0
    return-void
.end method

.method public onVoiceRecognizerResult(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->isSearchBarShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mSearchToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;->onVoiceRecognizerResult(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mSearchToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;->getSearchEditText()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mSearchToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;->getSearchEditText()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mSearchToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;->getSearchEditText()Landroid/view/View;

    move-result-object p0

    const-wide/16 v0, 0x28a

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->showKeyboardWithDelayIfFocused(Landroid/view/View;J)V

    :cond_0
    return-void
.end method

.method public requestFocusToSearchEditText()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mSearchToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;->getSearchEditText()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public restoreSearchToolbarFromEditMode()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$Delegate;->isNoTabsShowing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$Delegate;->isMoveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mNormalToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mSearchToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mSearchToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mSearchToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_2
    :goto_0
    return-void
.end method

.method public selectAllText()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mSearchToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;->selectAllText()V

    :cond_0
    return-void
.end method

.method public setEditToolbarTitle(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mEditToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->setEditToolbarTitle(I)V

    :cond_0
    return-void
.end method

.method public setNormalToolbarTitle(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mNormalToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->setNormalToolbarTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSelectAllCheck(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mEditToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->setSelectAllCheck(Z)V

    :cond_0
    return-void
.end method

.method public showButtons(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mNormalToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->showButtons(Z)V

    :cond_0
    return-void
.end method

.method public showGroupListButtons(ZLjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->showSearchButton(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mContext:Landroid/content/Context;

    const p2, 0x7f14103b

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->setNormalToolbarTitle(Ljava/lang/String;)V

    return-void
.end method

.method public showSearchBar(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mSearchToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;->showSearchBar(Z)V

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mNormalToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$Delegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$Delegate;->isNormalMode()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mNormalToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mNormalToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->focusBackButton()Z

    :cond_2
    :goto_0
    return-void
.end method

.method public showSearchButton(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mNormalToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->showSearchButton(Z)V

    :cond_0
    return-void
.end method

.method public updateToolBarBackground(ILcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mNormalToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->setTitleTextColor(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->mNormalToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->updateMoreButtonBackground(Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;)V

    return-void
.end method
