.class public abstract Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;
.super Lt/x0;
.source "SourceFile"


# instance fields
.field protected final mAnchor:Landroid/view/View;

.field protected final mContext:Landroid/content/Context;

.field protected mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

.field protected mDialogHelper:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarDialogHelper;

.field protected mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lt/x0;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->EMPTY:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->EMPTY:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    sget-object v0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarDialogHelper;->EMPTY:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarDialogHelper;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mDialogHelper:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarDialogHelper;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mAnchor:Landroid/view/View;

    invoke-virtual {p0}, Lt/x0;->getMenu()Landroid/view/Menu;

    move-result-object p0

    invoke-static {p0}, LG5/T2;->g(Landroid/view/Menu;)V

    return-void
.end method

.method private getCenterX()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mAnchor:Landroid/view/View;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method private getCenterY()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mAnchor:Landroid/view/View;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    return p0
.end method


# virtual methods
.method public getScreenID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isSecretModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "202"

    goto :goto_0

    :cond_1
    const-string p0, "201"

    :goto_0
    return-object p0
.end method

.method public abstract inflateMenu()V
.end method

.method public initialize(Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mDelegate:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mListener:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->inflateMenu()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->setOnMenuItemClickListener()V

    return-void
.end method

.method public setDialogHelper(Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarDialogHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->mDialogHelper:Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarDialogHelper;

    return-void
.end method

.method public abstract setOnMenuItemClickListener()V
.end method

.method public show()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->getCenterX()I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabBarPopupMenu;->getCenterY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lt/x0;->seslSetOffset(II)V

    invoke-super {p0}, Lt/x0;->show()V

    return-void
.end method
