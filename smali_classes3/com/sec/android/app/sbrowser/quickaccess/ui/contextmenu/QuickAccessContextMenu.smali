.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/contextmenu/QuickAccessContextMenu;
.super Lt/x0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/ui/contextmenu/QuickAccessContextMenu$TYPE;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/sec/android/app/sbrowser/quickaccess/ui/contextmenu/QuickAccessContextMenu$TYPE;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lt/x0;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/contextmenu/QuickAccessContextMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lt/x0;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-static {p1}, LG5/T2;->g(Landroid/view/Menu;)V

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/contextmenu/QuickAccessContextMenu;->inflateMenu(Lcom/sec/android/app/sbrowser/quickaccess/ui/contextmenu/QuickAccessContextMenu$TYPE;)V

    return-void
.end method

.method private inflateMenu(Lcom/sec/android/app/sbrowser/quickaccess/ui/contextmenu/QuickAccessContextMenu$TYPE;)V
    .locals 3

    invoke-virtual {p0}, Lt/x0;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/contextmenu/QuickAccessContextMenu$1;->$SwitchMap$com$sec$android$app$sbrowser$quickaccess$ui$contextmenu$QuickAccessContextMenu$TYPE:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lt/x0;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    const v1, 0x7f100017

    invoke-virtual {p0}, Lt/x0;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lt/x0;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    const v1, 0x7f10001b

    invoke-virtual {p0}, Lt/x0;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/contextmenu/QuickAccessContextMenu;->isSecretModeEnabled()Z

    move-result p0

    const p1, 0x7f0b0357

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const p0, 0x7f0b033b

    invoke-interface {v0, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const p0, 0x7f0b0359

    invoke-interface {v0, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlEnabled()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    return-void
.end method

.method private isSecretModeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/contextmenu/QuickAccessContextMenu;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessActivityUtils;->toActivity(Landroid/content/Context;)Lm/n;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public show(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lt/x0;->seslSetOffset(II)V

    invoke-super {p0}, Lt/x0;->show()V

    return-void
.end method
