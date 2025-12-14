.class public Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;
    }
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;

.field mDelegate:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;

.field private final mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mDelegate:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->lambda$deleteContextMenuItem$3(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->lambda$setOnBookmarkMenuItemClickListener$0(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->lambda$deleteContextMenuItem$4(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->lambda$setOnSavedPageMenuItemClickListener$2(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method private deleteContextMenuItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;I)V
    .locals 5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->getBookmarkBarId(Landroid/app/Activity;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v2, Lcom/sec/android/app/sbrowser/sites/search/view/f;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/f;-><init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V

    new-instance p1, Lm/k;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mActivity:Landroid/app/Activity;

    const v4, 0x7f1502e8

    invoke-direct {p1, v3, v4}, Lm/k;-><init>(Landroid/content/Context;I)V

    iget-object v3, p1, Lm/k;->a:Lm/h;

    iput-boolean v1, v3, Lm/h;->m:Z

    const-string v1, ""

    invoke-virtual {p1, v1}, Lm/k;->setTitle(Ljava/lang/CharSequence;)Lm/k;

    move-result-object p1

    invoke-virtual {p0, p2, v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->getMessage(IZ)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, Lm/k;->a:Lm/h;

    iput-object p2, v0, Lm/h;->f:Ljava/lang/CharSequence;

    const p2, 0x7f140433

    invoke-virtual {p1, p2, v2}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p1

    const p2, 0x7f1402c1

    invoke-virtual {p1, p2, v2}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p1

    invoke-virtual {p1}, Lm/k;->create()Lm/l;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/sites/search/view/g;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/sites/search/view/g;-><init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->lambda$setOnHistoryMenuItemClickListener$1(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method private isFolderItemsPresent()Z
    .locals 5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getBookmarkType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->URL:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-eq v3, v4, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->isEditable()Z

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private isNonShareableItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)Z
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "quickaccess.internet.apps.samsung.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isInternalUrl(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    :cond_2
    :goto_0
    return p0
.end method

.method private isPredefinedFolder(J)Z
    .locals 2

    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->DESKTOP:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$deleteContextMenuItem$3(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p2, -0x1

    if-eq p3, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mDelegate:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;->delete(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$deleteContextMenuItem$4(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mDelegate:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;->onDialogDismiss()V

    return-void
.end method

.method private synthetic lambda$setOnBookmarkMenuItemClickListener$0(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v0, 0x7f0b0313

    const/4 v1, 0x0

    if-eq p2, v0, :cond_4

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mDelegate:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;

    invoke-interface {p0, p1, v1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;->openInSecretMode(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Z)V

    goto/16 :goto_1

    :pswitch_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mDelegate:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;->openBookmarkItemInNewWindow(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V

    goto :goto_1

    :pswitch_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mDelegate:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;->openContextMenuItemInNewTab(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V

    goto :goto_1

    :pswitch_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mDelegate:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;->openBookmarkItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->isEditable()Z

    move-result p2

    if-nez p2, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mDelegate:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;->editBookmarkItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V

    goto :goto_1

    :pswitch_5
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mDelegate:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;->isInActionMode()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getBookmarkType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object p2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne p2, v0, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->deleteContextMenuItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;I)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mDelegate:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;->deleteConfirm()V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getBookmarkType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object p2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne p2, v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mDelegate:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;->findFolderChildren(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mDelegate:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;->createFolder(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mDelegate:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;->isInActionMode()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mDelegate:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;->shareBookmarkItem()V

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mDelegate:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;->share(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V

    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0303
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0b030b
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$setOnHistoryMenuItemClickListener$1(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v0, 0x7f0b0304

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    const v0, 0x7f0b0313

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mDelegate:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;

    invoke-interface {p0, p1, v1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;->openInSecretMode(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Z)V

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mDelegate:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;

    invoke-interface {p0, p1, v1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;->openInNewWindow(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Z)V

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mDelegate:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;->openContextMenuItemInNewTab(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V

    goto :goto_0

    :pswitch_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mDelegate:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;->openHistoryItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mDelegate:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;->share(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mDelegate:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;->isInActionMode()Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->deleteContextMenuItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;I)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mDelegate:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;->deleteConfirm()V

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x7f0b030d
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$setOnSavedPageMenuItemClickListener$2(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v0, 0x7f0b0304

    if-eq p2, v0, :cond_1

    const v0, 0x7f0b0313

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mDelegate:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;->openInSecretMode(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Z)V

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mDelegate:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;->openInNewWindow(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Z)V

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mDelegate:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;->openContextMenuItemInNewTab(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mDelegate:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;->share(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mDelegate:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;->isInActionMode()Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x3

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->deleteContextMenuItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;I)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mDelegate:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;->deleteConfirm()V

    :goto_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b030e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setOnBookmarkMenuItemClickListener(Landroid/view/MenuItem;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/search/view/e;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, Lcom/sec/android/app/sbrowser/sites/search/view/e;-><init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;I)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private setOnHistoryMenuItemClickListener(Landroid/view/MenuItem;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/search/view/e;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p2, v1}, Lcom/sec/android/app/sbrowser/sites/search/view/e;-><init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;I)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private setOnSavedPageMenuItemClickListener(Landroid/view/MenuItem;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/search/view/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/sec/android/app/sbrowser/sites/search/view/e;-><init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;I)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method


# virtual methods
.method public getMessage(IZ)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v0, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f12004c

    invoke-virtual {p0, p2, v0, p1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f12002c

    invoke-virtual {p0, p2, v0, p1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f14027e

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f120003

    invoke-virtual {p0, p2, v0, p1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f120007

    invoke-virtual {p0, p2, v0, p1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public isSelectedItemEmpty()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public setBookmarkContextMenuVisibility(Landroid/view/ContextMenu;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Z)V
    .locals 10

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getBookmarkType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const v1, 0x7f0b030d

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f0b030e

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f0b030f

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v0, :cond_3

    if-nez p3, :cond_3

    move v4, v2

    goto :goto_3

    :cond_3
    move v4, v3

    :goto_3
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f0b0313

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    xor-int/lit8 v5, v0, 0x1

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v4, 0x7f0b0310

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-nez v0, :cond_4

    if-nez p3, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlEnabled()Z

    move-result v6

    if-nez v6, :cond_4

    move v6, v2

    goto :goto_4

    :cond_4
    move v6, v3

    :goto_4
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->isEditable()Z

    move-result v5

    const v6, 0x7f0b0304

    const v7, 0x7f0b030c

    const v8, 0x7f0b030b

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mActivity:Landroid/app/Activity;

    invoke-static {p2, v5}, Lcom/sec/android/app/sbrowser/sites/common/bookmark/BookmarkCommonQueryUtil;->isMobileBookmarkBarFolder(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/app/Activity;)Z

    move-result v5

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    if-nez v0, :cond_5

    if-nez p3, :cond_5

    move v9, v2

    goto :goto_5

    :cond_5
    move v9, v3

    :goto_5
    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    if-eqz v0, :cond_6

    if-nez p3, :cond_6

    if-nez v5, :cond_6

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mActivity:Landroid/app/Activity;

    invoke-static {p2, p3}, Lcom/sec/android/app/sbrowser/sites/common/bookmark/BookmarkCommonQueryUtil;->isNonEditableBookmarkFolder(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/app/Activity;)Z

    move-result p3

    if-nez p3, :cond_6

    move p3, v2

    goto :goto_6

    :cond_6
    move p3, v3

    :goto_6
    invoke-interface {v7, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p3

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->isPredefinedFolder(J)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mActivity:Landroid/app/Activity;

    invoke-static {p2, v0}, Lcom/sec/android/app/sbrowser/sites/common/bookmark/BookmarkCommonQueryUtil;->isNonEditableBookmarkFolder(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_7
    if-eqz v5, :cond_8

    goto :goto_7

    :cond_8
    move v2, v3

    :cond_9
    :goto_7
    invoke-interface {p3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_8

    :cond_a
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p3

    invoke-interface {p3, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p3

    invoke-interface {p3, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p3

    invoke-interface {p3, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_8
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->isFolderItemsPresent()Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p3

    invoke-interface {p3, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_b
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getTaskId()I

    move-result p3

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(I)Z

    move-result p3

    if-nez p3, :cond_c

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlEnabled()Z

    move-result p3

    if-eqz p3, :cond_d

    :cond_c
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p3

    invoke-interface {p3, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_d
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result p3

    :goto_9
    if-ge v3, p3, :cond_e

    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->setOnBookmarkMenuItemClickListener(Landroid/view/MenuItem;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_e
    return-void
.end method

.method public setHistoryContextMenuVisibility(Landroid/view/ContextMenu;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Z)V
    .locals 4

    const v0, 0x7f0b0310

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b030f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->isNonShareableItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0b0313

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    const v0, 0x7f0b030d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    xor-int/lit8 v3, p3, 0x1

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b030e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    xor-int/2addr p3, v1

    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const p3, 0x7f0b030b

    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p3

    invoke-interface {p3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const p3, 0x7f0b030c

    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p3

    invoke-interface {p3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const p3, 0x7f0b0303

    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p3

    invoke-interface {p3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result p3

    :goto_2
    if-ge v2, p3, :cond_3

    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->setOnHistoryMenuItemClickListener(Landroid/view/MenuItem;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public setSavedPageContextMenuVisibility(Landroid/view/ContextMenu;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const v0, 0x7f0b0310

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    const v0, 0x7f0b030f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-nez p3, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b030d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b030e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    xor-int/2addr p3, v3

    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const p3, 0x7f0b030b

    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p3

    invoke-interface {p3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const p3, 0x7f0b030c

    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p3

    invoke-interface {p3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const p3, 0x7f0b0303

    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p3

    invoke-interface {p3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result p3

    :goto_1
    if-ge v1, p3, :cond_3

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;->setOnSavedPageMenuItemClickListener(Landroid/view/MenuItem;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
