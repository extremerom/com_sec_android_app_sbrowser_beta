.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;
.super Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/IQuickAccessDragAndDropDelegate;
.implements Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/MultiSelectionDelegate;


# instance fields
.field private final mAdapterDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;

.field private mAddDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddDialogFragment;

.field private mAddShortcutDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddShortcutDialogFragment;

.field private mContext:Landroid/content/Context;

.field private mContextMenu:Lcom/sec/android/app/sbrowser/quickaccess/ui/contextmenu/QuickAccessContextMenu;

.field private final mIsForPreview:Ljava/lang/Boolean;

.field private mIsReordered:Z

.field private final mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItemTouchHelper:Landroidx/recyclerview/widget/X;

.field private mListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

.field private mLongPressHandledByKeyEvent:Z

.field private mRenameDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;

.field private mTouchPointY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;Z)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mItemList:Ljava/util/List;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mIsForPreview:Ljava/lang/Boolean;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mAdapterDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->lambda$dragEnd$1()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->lambda$dragEnd$0()V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)Lcom/sec/android/app/sbrowser/quickaccess/ui/contextmenu/QuickAccessContextMenu;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mContextMenu:Lcom/sec/android/app/sbrowser/quickaccess/ui/contextmenu/QuickAccessContextMenu;

    return-object p0
.end method

.method private dismissAddShortcutDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mAddShortcutDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddShortcutDialogFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddShortcutDialogFragment;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mAddShortcutDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddShortcutDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/u;->dismissAllowingStateLoss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)Landroidx/recyclerview/widget/X;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/X;

    return-object p0
.end method

.method private executeItem(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;I)V
    .locals 5
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;->onItemSelected(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->isSecretModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1105"

    goto :goto_0

    :cond_0
    const-string v0, "1007"

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->getLoggingScreenID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getType()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->USER:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    if-ne v3, v4, :cond_1

    const-string v3, "user"

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {v1, v0, v3}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->getLoggingScreenID()Ljava/lang/String;

    move-result-object v0

    add-int/2addr p2, v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->isSecretModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    const-wide/16 v1, 0x1

    goto :goto_2

    :cond_2
    const-wide/16 v1, 0x0

    :goto_2
    const-string p0, "1054"

    invoke-static {v0, p0, p2, v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getType()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object p0

    if-eq p0, v4, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getItemId()I

    move-result p1

    const-string p2, "nativeHome"

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessSILogHelper;->sendClickSILog(Ljava/lang/String;ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mLongPressHandledByKeyEvent:Z

    return p0
.end method

.method private getIconViewHolder(Landroidx/recyclerview/widget/h1;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/h1;->getItemViewType()I

    move-result p0

    const v0, 0x7f0e059b

    if-ne p0, v0, :cond_0

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getItem(I)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "Invalid position : "

    const-string v0, "QuickAccessIconRecyclerAdapter"

    invoke-static {p1, p0, v0}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getLoggingScreenID()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->isSecretModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "102"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->getEditMode()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->NONE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p0, v0, :cond_1

    const-string p0, "101"

    goto :goto_0

    :cond_1
    const-string p0, "100"

    :goto_0
    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;Lcom/sec/android/app/sbrowser/quickaccess/ui/contextmenu/QuickAccessContextMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mContextMenu:Lcom/sec/android/app/sbrowser/quickaccess/ui/contextmenu/QuickAccessContextMenu;

    return-void
.end method

.method private handleKeyEvent(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mLongPressHandledByKeyEvent:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->getEditMode()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->NONE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->isSecretModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessToast;->showUnableToEditInSecretModeToast(Landroid/content/Context;)V

    return p2

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;->canEnterEditMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessDialog;->showUnableToEditInMultiInstanceDialog(Landroid/content/Context;)V

    return p2

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->addCheckedItem(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    sget-object p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->NORMAL:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V

    :cond_3
    return p2

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mLongPressHandledByKeyEvent:Z

    return-void
.end method

.method private isAddItem(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getItemId()I

    move-result p0

    const/4 v0, -0x2

    if-ne p0, v0, :cond_1

    const/4 p1, 0x1

    :cond_1
    return p1
.end method

.method private isInCustomActionMode()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAccessibilityDelegate;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAccessibilityDelegate;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAccessibilityDelegate;->isInCustomActionMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private isSecretModeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessActivityUtils;->toActivity(Landroid/content/Context;)Lm/n;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mTouchPointY:F

    return-void
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->executeItem(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;I)V

    return-void
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;I)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$dragEnd$0()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->NONE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V

    return-void
.end method

.method private synthetic lambda$dragEnd$1()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->NORMAL:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->getLoggingScreenID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->handleKeyEvent(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->isInCustomActionMode()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->isSecretModeEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->reorderWhenCustomActionMode()V

    return-void
.end method

.method private reorderWhenCustomActionMode()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAccessibilityDelegate;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAccessibilityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAccessibilityDelegate;->getReorderStartPosition()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAccessibilityDelegate;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAccessibilityDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAccessibilityDelegate;->getReorderEndPosition()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->onItemMoved(II)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAccessibilityDelegate;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAccessibilityDelegate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAccessibilityDelegate;->setCustomActionMode(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->updateItemsPosition()V

    return-void
.end method

.method private showAddShortcutDialog()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils;->shouldShowSyncAddShortcutsButton(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessIntentUtils;->launchQuickAccessAddShortcut(Landroid/content/Context;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mAddShortcutDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddShortcutDialogFragment;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddShortcutDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddShortcutDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mAddShortcutDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddShortcutDialogFragment;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mAddShortcutDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddShortcutDialogFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddShortcutDialogFragment;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessActivityUtils;->toActivity(Landroid/content/Context;)Lm/n;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mAddShortcutDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddShortcutDialogFragment;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lm/n;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddShortcutDialogFragment;->show(Lm/n;)V

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->getLoggingScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "10010"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessIconItemDiffCallback;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mItemList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessIconItemDiffCallback;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {v0}, Landroidx/recyclerview/widget/d;->a(Landroidx/recyclerview/widget/x;)Landroidx/recyclerview/widget/z;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Landroidx/recyclerview/widget/c;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/c;-><init>(Landroidx/recyclerview/widget/u0;)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/z;->b(Landroidx/recyclerview/widget/i0;)V

    return-void
.end method

.method private updateItemsPosition()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mIsReordered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mItemList:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->updateQuickAccessItemsPosition(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public canDrag(Landroidx/recyclerview/widget/h1;)Z
    .locals 0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/h1;->getItemViewType()I

    move-result p0

    const p1, 0x7f0e059b

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public deleteItems(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deleteItems ( count : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickAccessIconRecyclerAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->deleteQuickAccessItems(Ljava/util/Collection;)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getType()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->USER:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "7065"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLogWithoutScreenID(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$2;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dismissAddDialog()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isQuickAccessAddWebEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->dismissAddShortcutDialog()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mAddDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddDialogFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mAddDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/u;->dismissAllowingStateLoss()V

    :cond_2
    :goto_0
    return-void
.end method

.method public dragEnd(Landroidx/recyclerview/widget/h1;)V
    .locals 5

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;->translationY(F)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "set_ripple"

    invoke-virtual {p0, v2, v0, v1}, Landroidx/recyclerview/widget/u0;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$4;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->getEditMode()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->ONE_TIME_PROGRESSING:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->updateItemsPosition()V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/A;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/A;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->getEditMode()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->ONE_TIME:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/h1;->getBindingAdapterPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->addCheckedItem(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)V

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->setChecked(Z)V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/A;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/A;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;I)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->shiftScroll(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->getEditMode()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->NORMAL:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->getEditMode()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->POPUP:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->getEditMode()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_HOMEPAGE_NATIVE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->getEditMode()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_HOMEPAGE_WEBPAGE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->getEditMode()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_UHP:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->getEditMode()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_NATIVE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-ne p1, v0, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->updateItemsPosition()V

    :cond_5
    :goto_0
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mIsReordered:Z

    return-void
.end method

.method public dragStart(Landroidx/recyclerview/widget/h1;)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mTouchPointY:F

    iget-object v1, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;->translationY(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->setItemDragging(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->getEditMode()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->NONE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    sget-object p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->ONE_TIME:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->hashCode()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->isAddItem(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0e059a

    return p0

    :cond_0
    const p0, 0x7f0e059b

    return p0
.end method

.method public isRenameDialogShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mRenameDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    new-instance p1, Landroidx/recyclerview/widget/X;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IQuickAccessItemTouchCallback;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IQuickAccessItemTouchCallback;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/IQuickAccessDragAndDropDelegate;)V

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/X;-><init>(Landroidx/recyclerview/widget/U;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/X;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/X;->c(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mIsForPreview:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;->bind(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_0
    instance-of p2, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessAddItemViewHolder;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessAddItemViewHolder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mIsForPreview:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessAddItemViewHolder;->bind(Z)V

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown viewHolder"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;ILjava/util/List;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/h1;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V

    return-void

    :cond_0
    instance-of v0, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-virtual {p1, p0, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;->bind(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    instance-of p0, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessAddItemViewHolder;

    if-eqz p0, :cond_2

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessAddItemViewHolder;

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessAddItemViewHolder;->bind(Ljava/util/List;)V

    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown viewHolder"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCheckedQuickAccessListChanged(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const-string v0, "uncheck"

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroidx/recyclerview/widget/u0;->notifyItemRangeChanged(IILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const-string v1, "check"

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/u0;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 12
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const p1, 0x7f0e059b

    if-ne p2, p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessIconViewHolder;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemBinding;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mAdapterDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessIconViewHolder;-><init>(Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemBinding;Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;)V

    return-object p1

    :cond_0
    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemBinding;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mAdapterDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;-><init>(Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemBinding;Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;)V

    return-object p1

    :cond_1
    const p1, 0x7f0e059a

    if-ne p2, p1, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessAddItemViewHolder;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewAddItemBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewAddItemBinding;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mAdapterDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessAddItemViewHolder;-><init>(Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewAddItemBinding;Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessAddItemViewHolder;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewAddItemBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewAddItemBinding;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mAdapterDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessAddItemViewHolder;-><init>(Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewAddItemBinding;Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;)V

    return-object p1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown viewType : "

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onItemMoved(II)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    move-result-object v1

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mIsReordered:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->getEditMode()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->ONE_TIME:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    sget-object v4, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->ONE_TIME_PROGRESSING:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-interface {v3, v4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v3, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getPosition()I

    move-result v0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getPosition()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v4, v1

    :goto_0
    if-gt v4, v3, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setPosition(I)V

    const-string v0, "7064"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLogWithoutScreenID(Ljava/lang/String;)V

    const-string v0, "101"

    const-string v5, "1044"

    invoke-static {v0, v5}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    move v0, v6

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/u0;->notifyItemMoved(II)V

    sub-int/2addr v3, v1

    add-int/2addr v3, v2

    const-string p1, "move"

    invoke-virtual {p0, v1, v3, p1}, Landroidx/recyclerview/widget/u0;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onMultiSelected(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->isSecretModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessToast;->showUnableToEditInSecretModeToast(Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/h1;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->getIconViewHolder(Landroidx/recyclerview/widget/h1;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->setChecked(Z)V

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->isEditButtonVisible()Landroidx/lifecycle/S;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getType()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->RESERVED:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    if-ne v3, v4, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->addCheckedItem(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)V

    move-object v0, v1

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    sget-object v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->NORMAL:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/h1;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->shiftScroll(Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method public onQuickAccessListUpdated(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->updateItems(Ljava/util/List;)V

    return-void
.end method

.method public renameItem(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->isRenameDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mRenameDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;

    if-nez v0, :cond_2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mRenameDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mRenameDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lm/n;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$3;

    invoke-direct {v3, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$3;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)V

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;->show(Lm/n;Landroid/view/View;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment$RenameFinishedListener;)V

    return-void
.end method

.method public requestScroll(II)V
    .locals 3

    add-int/2addr p2, p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;->getScrollViewVisibleBottom()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;->getVisibleBottomBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;->getScrollViewVisibleTop()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;->getVisibleToolbarHeight()I

    move-result v2

    add-int/2addr v2, v1

    if-le p2, v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    sub-int/2addr p2, v0

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;->onScrollRequestedWithDy(I)V

    goto :goto_0

    :cond_0
    if-ge p1, v2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    sub-int/2addr p1, v2

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;->onScrollRequestedWithDy(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->getEditMode()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->NONE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mRenameDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/u;->dismissAllowingStateLoss()V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const-string v0, "editmode"

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroidx/recyclerview/widget/u0;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public showAddDialog(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isQuickAccessAddWebEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->showAddShortcutDialog()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mAddDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddDialogFragment;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mAddDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddDialogFragment;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mAddDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddDialogFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessActivityUtils;->toActivity(Landroid/content/Context;)Lm/n;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mAddDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddDialogFragment;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lm/n;

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->show(Lm/n;Landroid/view/View;)V

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->getLoggingScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "1008"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
