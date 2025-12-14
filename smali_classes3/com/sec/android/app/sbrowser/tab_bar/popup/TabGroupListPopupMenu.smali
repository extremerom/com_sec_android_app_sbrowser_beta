.class public Lcom/sec/android/app/sbrowser/tab_bar/popup/TabGroupListPopupMenu;
.super Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;
.source "SourceFile"


# instance fields
.field private final mTabId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput p3, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabGroupListPopupMenu;->mTabId:I

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/tab_bar/popup/TabGroupListPopupMenu;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabGroupListPopupMenu;->lambda$setOnMenuItemClickListener$0(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$setOnMenuItemClickListener$0(Landroid/view/MenuItem;)Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    const v2, 0x7f0b0c80

    const/4 v3, 0x1

    if-eq v0, v2, :cond_4

    const v2, 0x7f0b0c8c

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0b0c73

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mDialogHelper:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarDialogHelper;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mAnchor:Landroid/view/View;

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabGroupListPopupMenu;->mTabId:I

    invoke-interface {p1, v0, v1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarDialogHelper;->showCreateGroupDialog(Landroid/content/Context;Landroid/view/View;I)V

    return v3

    :cond_3
    return v1

    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabGroupListPopupMenu;->mTabId:I

    invoke-interface {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->moveToOtherGroup(ILjava/lang/String;)V

    return v3

    :cond_5
    :goto_0
    return v1
.end method


# virtual methods
.method public inflateMenu()V
    .locals 5

    invoke-virtual {p0}, Lt/x0;->getMenu()Landroid/view/Menu;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    iget v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabGroupListPopupMenu;->mTabId:I

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getMovableGroupList(I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0b0c80

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v3, v2, v2, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-interface {v0, v3, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-interface {v0, v3, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    :goto_2
    invoke-virtual {p0}, Lt/x0;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p0

    const v1, 0x7f10002b

    invoke-virtual {p0, v1, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public setOnMenuItemClickListener()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/search_widget/a;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/search_widget/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lt/x0;->setOnMenuItemClickListener(Lt/w0;)V

    return-void
.end method
