.class public Lcom/sec/android/app/sbrowser/tab_bar/popup/TabGroupPopupMenu;
.super Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;
.source "SourceFile"


# instance fields
.field private final mGroupName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabGroupPopupMenu;->mGroupName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/tab_bar/popup/TabGroupPopupMenu;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabGroupPopupMenu;->lambda$setOnMenuItemClickListener$0(Landroid/view/MenuItem;)Z

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
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v1

    :pswitch_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabGroupPopupMenu;->mGroupName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->ungroup(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "4156"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mDialogHelper:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarDialogHelper;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mAnchor:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabGroupPopupMenu;->mGroupName:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarDialogHelper;->showCloseAllTabInGroupDialog(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "4154"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mDialogHelper:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarDialogHelper;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mAnchor:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabGroupPopupMenu;->mGroupName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v3, v2}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getGroupColorId(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarDialogHelper;->showRenameGroupDialog(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "4155"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabGroupPopupMenu;->mGroupName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->addNewTabToGroup(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "4153"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0c78
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public inflateMenu()V
    .locals 4

    invoke-virtual {p0}, Lt/x0;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p0}, Lt/x0;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f10002a

    invoke-virtual {p0}, Lt/x0;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v1, 0x7f0b0c78

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabGroupPopupMenu;->mGroupName:Ljava/lang/String;

    invoke-interface {v1, p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getUnlockedGroupTabCount(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const v1, 0x7f0b0c7a

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const p0, 0x7f0b0c79

    invoke-interface {v0, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const p0, 0x7f0b0c7c

    invoke-interface {v0, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

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

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/search_widget/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lt/x0;->setOnMenuItemClickListener(Lt/w0;)V

    return-void
.end method
