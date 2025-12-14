.class public Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper$Delegate;
    }
.end annotation


# instance fields
.field private final mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper$Delegate;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper$Delegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper$Delegate;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;->lambda$deleteHistoryItem$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;Lcom/sec/terrace/browser/history/TerraceHistoryItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;->lambda$deleteHistoryItem$1(Lcom/sec/terrace/browser/history/TerraceHistoryItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;Lcom/sec/terrace/browser/history/TerraceHistoryItem;Landroid/app/Activity;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;->lambda$createContextMenuForSelectedItem$0(Lcom/sec/terrace/browser/history/TerraceHistoryItem;Landroid/app/Activity;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method private deleteHistoryItem(Landroid/app/Activity;Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V
    .locals 4

    new-instance v0, Lcom/sec/android/app/sbrowser/auth/f;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0, p2}, Lcom/sec/android/app/sbrowser/auth/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p2, Lm/k;

    const v1, 0x7f1502e8

    invoke-direct {p2, p1, v1}, Lm/k;-><init>(Landroid/content/Context;I)V

    iget-object v1, p2, Lm/k;->a:Lm/h;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lm/h;->m:Z

    const-string v1, ""

    invoke-virtual {p2, v1}, Lm/k;->setTitle(Ljava/lang/CharSequence;)Lm/k;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v3, 0x7f12002c

    invoke-virtual {p1, v3, v2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p2, Lm/k;->a:Lm/h;

    iput-object p1, v1, Lm/h;->f:Ljava/lang/CharSequence;

    const p1, 0x7f140433

    invoke-virtual {p2, p1, v0}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p1

    const p2, 0x7f1402c1

    invoke-virtual {p1, p2, v0}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p1

    invoke-virtual {p1}, Lm/k;->create()Lm/l;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/sites/history/view/i;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/sites/history/view/i;-><init>(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private synthetic lambda$createContextMenuForSelectedItem$0(Lcom/sec/terrace/browser/history/TerraceHistoryItem;Landroid/app/Activity;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result p3

    sparse-switch p3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper$Delegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper$Delegate;->share(Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V

    goto :goto_0

    :sswitch_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper$Delegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper$Delegate;->openInSecretMode(Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V

    goto :goto_0

    :sswitch_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper$Delegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper$Delegate;->openInNewWindow(Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V

    goto :goto_0

    :sswitch_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper$Delegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper$Delegate;->openInNewTab(Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V

    goto :goto_0

    :sswitch_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper$Delegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper$Delegate;->open(Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V

    goto :goto_0

    :sswitch_5
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper$Delegate;

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper$Delegate;->isInActionMode()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;->deleteHistoryItem(Landroid/app/Activity;Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper$Delegate;->deleteConfirm()V

    :goto_0
    const/4 p0, 0x0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b033b -> :sswitch_5
        0x7f0b0350 -> :sswitch_4
        0x7f0b0354 -> :sswitch_3
        0x7f0b0355 -> :sswitch_2
        0x7f0b0357 -> :sswitch_1
        0x7f0b0367 -> :sswitch_0
    .end sparse-switch
.end method

.method private synthetic lambda$deleteHistoryItem$1(Lcom/sec/terrace/browser/history/TerraceHistoryItem;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p2, -0x1

    if-eq p3, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper$Delegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper$Delegate;->delete(Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$deleteHistoryItem$2(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper$Delegate;->onDialogDismiss()V

    return-void
.end method

.method private setMenuItemEnabled(Landroid/view/Menu;)V
    .locals 1

    const p0, 0x7f0b0b78

    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    const p0, 0x7f0b0052

    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method


# virtual methods
.method public createContextMenuForSelectedItem(Landroid/app/Activity;Landroid/view/ContextMenu;Lcom/sec/terrace/browser/history/TerraceHistoryItem;Z)V
    .locals 4

    invoke-virtual {p1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100010

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0b0355

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    if-nez p4, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b0350

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    xor-int/lit8 v1, p4, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b0354

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b0357

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez p4, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlEnabled()Z

    move-result p4

    if-nez p4, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result p4

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "quickaccess.internet.apps.samsung.com"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isInternalUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const v0, 0x7f0b0367

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    :goto_2
    if-ge v2, p4, :cond_4

    invoke-interface {p2, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/history/view/h;

    invoke-direct {v1, p0, p3, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/h;-><init>(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;Lcom/sec/terrace/browser/history/TerraceHistoryItem;Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public dispatchMoreKeyEvent(Landroid/app/Activity;Landroid/view/Menu;Z)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper$Delegate;->isInActionMode()Z

    move-result p0

    if-nez p0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->openOptionsMenu()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setMenuItemVisibility(ZLandroid/view/Menu;Z)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0b0052

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz p1, :cond_1

    if-nez p3, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    const v0, 0x7f0b03dd

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz p1, :cond_3

    if-nez p3, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_4
    const v0, 0x7f0b02a9

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz p1, :cond_5

    if-nez p3, :cond_5

    move p3, v3

    goto :goto_2

    :cond_5
    move p3, v2

    :goto_2
    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_6
    const p3, 0x7f0b0b78

    invoke-interface {p2, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {p2, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper$Delegate;->isSearchDataEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    move v2, v3

    :cond_7
    invoke-interface {p3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_8
    if-eqz p1, :cond_9

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;->setMenuItemEnabled(Landroid/view/Menu;)V

    :cond_9
    return-void
.end method

.method public setMenuTitle(Landroid/view/Menu;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const p0, 0x7f0b03dd

    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    const v0, 0x7f14004e

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_1
    const p0, 0x7f0b0b78

    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    const v0, 0x7f140f8f

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_2
    const p0, 0x7f0b02a9

    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    const p1, 0x7f1405db

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_3
    return-void
.end method

.method public setSearchMenuEnabled(Landroid/view/Menu;Z)V
    .locals 0

    if-eqz p1, :cond_0

    const p0, 0x7f0b0b78

    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method
