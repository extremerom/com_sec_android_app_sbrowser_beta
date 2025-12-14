.class public Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarDialogHelper;


# instance fields
.field private mCloseConfirmDialog:Lm/l;

.field private mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

.field private mGroupNameDialog:Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;

.field private mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

.field private mPopupMenu:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->EMPTY:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->EMPTY:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->lambda$showCreateGroupDialog$3(ILjava/lang/String;I)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->lambda$showRenameGroupDialog$4(Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public static synthetic c(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->lambda$showCloseAllTabInGroupDialog$10(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->lambda$showCloseAllTabDialog$5(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->lambda$showCloseOtherTabDialog$7(ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;Lt/x0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->lambda$showPopupMenu$1(Lt/x0;)V

    return-void
.end method

.method public static synthetic g(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->lambda$showCloseOtherTabDialog$8(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->lambda$showCloseAllTabInGroupDialog$9(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;Lt/x0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->lambda$showMoveToGroupPopup$2(Lt/x0;)V

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;Lt/x0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->lambda$showPopupMenu$0(Lt/x0;)V

    return-void
.end method

.method public static synthetic k(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->lambda$showCloseAllTabDialog$6(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic lambda$showCloseAllTabDialog$5(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->closeAllTabs()V

    return-void
.end method

.method private static synthetic lambda$showCloseAllTabDialog$6(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$showCloseAllTabInGroupDialog$10(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$showCloseAllTabInGroupDialog$9(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->closeAllTabsInGroup(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showCloseOtherTabDialog$7(ILandroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->closeOtherTabs(I)V

    return-void
.end method

.method private static synthetic lambda$showCloseOtherTabDialog$8(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$showCreateGroupDialog$3(ILjava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[onPositiveButtonClicked] create tab group : ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabBarPopupMenuHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->createTabGroupWithTab(ILjava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$showMoveToGroupPopup$2(Lt/x0;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mPopupMenu:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;

    return-void
.end method

.method private synthetic lambda$showPopupMenu$0(Lt/x0;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mPopupMenu:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;

    return-void
.end method

.method private synthetic lambda$showPopupMenu$1(Lt/x0;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mPopupMenu:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;

    return-void
.end method

.method private synthetic lambda$showRenameGroupDialog$4(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[onPositiveButtonClicked] rename tab group : ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabBarPopupMenuHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    invoke-interface {v0, p1, p3}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->renameGroup(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eq p2, p4, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    invoke-interface {p0, p3, p4}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->changeGroupColor(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public dismissCloseConfirmDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mCloseConfirmDialog:Lm/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lm/y;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mCloseConfirmDialog:Lm/l;

    return-void
.end method

.method public dismissGroupNameDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mGroupNameDialog:Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->dismissDialog()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mGroupNameDialog:Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;

    return-void
.end method

.method public dismissPopupMenu()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mPopupMenu:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lt/x0;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mPopupMenu:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;

    return-void
.end method

.method public getCloseConfirmDialog()Lm/l;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mCloseConfirmDialog:Lm/l;

    return-object p0
.end method

.method public getGroupNameDialog()Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mGroupNameDialog:Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;

    return-object p0
.end method

.method public getPopupMenu()Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mPopupMenu:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;

    return-object p0
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    return-void
.end method

.method public showCloseAllTabDialog(Landroid/content/Context;Landroid/view/View;)V
    .locals 10

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->dismissCloseConfirmDialog()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isSecretModeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getGroupCount()I

    move-result v3

    if-lez v3, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v1

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->hasLockedTab()Z

    move-result v0

    if-eqz v0, :cond_1

    move v7, v2

    goto :goto_1

    :cond_1
    move v7, v1

    :goto_1
    new-instance v8, Lcom/sec/android/app/sbrowser/appshortcut/b;

    const/16 v0, 0xb

    invoke-direct {v8, v0, p0}, Lcom/sec/android/app/sbrowser/appshortcut/b;-><init>(ILjava/lang/Object;)V

    new-instance v9, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;

    const/16 v0, 0x16

    invoke-direct {v9, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;-><init>(I)V

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v4 .. v9}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarCloseConfirmDialog;->showCloseAllTabDialog(Landroid/content/Context;Landroid/view/View;ZZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lm/l;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mCloseConfirmDialog:Lm/l;

    return-void
.end method

.method public showCloseAllTabInGroupDialog(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->dismissCloseConfirmDialog()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isSecretModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v0, p3}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->hasLockedTabInGroup(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    new-instance v5, Lcom/sec/android/app/sbrowser/auth/f;

    const/16 v0, 0x8

    invoke-direct {v5, v0, p0, p3}, Lcom/sec/android/app/sbrowser/auth/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;

    const/16 v0, 0x18

    invoke-direct {v6, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;-><init>(I)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarCloseConfirmDialog;->showCloseGroupDialog(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lm/l;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mCloseConfirmDialog:Lm/l;

    return-void
.end method

.method public showCloseOtherTabDialog(Landroid/content/Context;Landroid/view/View;I)V
    .locals 10

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->dismissCloseConfirmDialog()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v0, p3}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isIncognitoTab(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getGroupCount()I

    move-result v3

    if-lez v3, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v1

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->hasLockedTab()Z

    move-result v0

    if-eqz v0, :cond_1

    move v7, v2

    goto :goto_1

    :cond_1
    move v7, v1

    :goto_1
    new-instance v8, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/b;

    const/4 v0, 0x1

    invoke-direct {v8, p3, v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/b;-><init>(IILjava/lang/Object;)V

    new-instance v9, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;

    const/16 p3, 0x17

    invoke-direct {v9, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;-><init>(I)V

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v4 .. v9}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarCloseConfirmDialog;->showCloseAllOtherTabsDialog(Landroid/content/Context;Landroid/view/View;ZZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lm/l;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mCloseConfirmDialog:Lm/l;

    return-void
.end method

.method public showCreateGroupDialog(Landroid/content/Context;Landroid/view/View;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->dismissGroupNameDialog()V

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupCreateDialog;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getGroupNameList()Ljava/util/List;

    move-result-object v1

    new-instance v2, LG6/b;

    invoke-direct {v2, p3, p0}, LG6/b;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupCreateDialog;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$Listener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mGroupNameDialog:Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;

    const-string p1, ""

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p1, p3}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->showGroupNameDialog(Landroid/view/View;Ljava/lang/String;I)V

    return-void
.end method

.method public showGroupNameDialog(Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mGroupNameDialog:Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->showDialog(Landroid/view/View;Ljava/lang/String;I)V

    return-void
.end method

.method public showMoveToGroupPopup(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->dismissPopupMenu()V

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabGroupListPopupMenu;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabGroupListPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mPopupMenu:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->initialize(Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mPopupMenu:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;

    new-instance p2, Lcom/sec/android/app/sbrowser/tab_bar/popup/a;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/sec/android/app/sbrowser/tab_bar/popup/a;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;I)V

    invoke-virtual {p1, p2}, Lt/x0;->setOnDismissListener(Lt/v0;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mPopupMenu:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->setDialogHelper(Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarDialogHelper;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->showPopupMenu()V

    return-void
.end method

.method public showPopupMenu()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mPopupMenu:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->show()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->onPopupMenuShown()V

    return-void
.end method

.method public showPopupMenu(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->dismissPopupMenu()V

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabButtonPopupMenu;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabButtonPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mPopupMenu:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->initialize(Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mPopupMenu:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;

    new-instance p2, Lcom/sec/android/app/sbrowser/tab_bar/popup/a;

    const/4 p3, 0x2

    invoke-direct {p2, p0, p3}, Lcom/sec/android/app/sbrowser/tab_bar/popup/a;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;I)V

    invoke-virtual {p1, p2}, Lt/x0;->setOnDismissListener(Lt/v0;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mPopupMenu:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->setDialogHelper(Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarDialogHelper;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->showPopupMenu()V

    return-void
.end method

.method public showPopupMenu(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->dismissPopupMenu()V

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabGroupPopupMenu;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabGroupPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mPopupMenu:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->initialize(Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mPopupMenu:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;

    new-instance p2, Lcom/sec/android/app/sbrowser/tab_bar/popup/a;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/sec/android/app/sbrowser/tab_bar/popup/a;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;I)V

    invoke-virtual {p1, p2}, Lt/x0;->setOnDismissListener(Lt/v0;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mPopupMenu:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->setDialogHelper(Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarDialogHelper;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->showPopupMenu()V

    return-void
.end method

.method public showRenameGroupDialog(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;I)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->dismissGroupNameDialog()V

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupRenameDialog;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getGroupNameList()Ljava/util/List;

    move-result-object v1

    new-instance v2, LN4/g;

    const/4 v3, 0x2

    invoke-direct {v2, p0, p3, p4, v3}, LN4/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupRenameDialog;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$Listener;Z)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->mGroupNameDialog:Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;

    invoke-virtual {p0, p2, p3, p4}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenuHandler;->showGroupNameDialog(Landroid/view/View;Ljava/lang/String;I)V

    return-void
.end method
