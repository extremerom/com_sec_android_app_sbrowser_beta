.class public Lcom/sec/android/app/sbrowser/infobars/InfoBarService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/infobars/TerraceInfoBarService$TerraceInfoBarServiceDelegate;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

.field private mIsBottomBarEnabled:Z

.field private final mParentView:Landroid/view/ViewGroup;

.field private mTabLayout:Lcom/sec/android/app/sbrowser/tab/TabLayout;

.field private final mTerrace:Lcom/sec/terrace/Terrace;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/Terrace;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->mParentView:Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->mTerrace:Lcom/sec/terrace/Terrace;

    sget-object p2, Lcom/sec/android/app/sbrowser/tab/TabLayout;->EMPTY:Lcom/sec/android/app/sbrowser/tab/TabLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->mTabLayout:Lcom/sec/android/app/sbrowser/tab/TabLayout;

    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->getTerraceInfoBarService()Lcom/sec/terrace/browser/infobars/TerraceInfoBarService;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarService;->setDelegate(Lcom/sec/terrace/browser/infobars/TerraceInfoBarService$TerraceInfoBarServiceDelegate;)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/infobars/InfoBarService;)Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/infobars/InfoBarService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->mIsBottomBarEnabled:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/infobars/InfoBarService;)Lcom/sec/android/app/sbrowser/tab/TabLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->mTabLayout:Lcom/sec/android/app/sbrowser/tab/TabLayout;

    return-object p0
.end method


# virtual methods
.method public addInfoBar(Lcom/sec/android/app/sbrowser/infobars/InfoBar;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->createInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->addInfoBar(Lcom/sec/android/app/sbrowser/infobars/InfoBar;)Z

    move-result p0

    return p0
.end method

.method public addInfoBar(Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->createInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->addInfoBar(Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;)Z

    move-result p0

    return p0
.end method

.method public createInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->mParentView:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    new-instance v1, Lcom/sec/android/app/sbrowser/infobars/InfoBarService$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService$1;-><init>(Lcom/sec/android/app/sbrowser/infobars/InfoBarService;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->removeFromParentView()Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {v1}, Lcom/sec/terrace/Terrace;->getWebContainerView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->changeInfoBarParent(Landroid/view/ViewGroup;)V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    return-object p0
.end method

.method public getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/tab/TabLayout;->EMPTY:Lcom/sec/android/app/sbrowser/tab/TabLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->mTabLayout:Lcom/sec/android/app/sbrowser/tab/TabLayout;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onToggleFullscreenModeForTab(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onToggleFullscreenModeForTab(ZII)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p0, 0x4

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->adjustInfoBarContainer(II)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public removeInfoBar(Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->removeInfoBar(Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;)Z

    move-result p0

    return p0
.end method

.method public setBottomBarEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->mIsBottomBarEnabled:Z

    return-void
.end method

.method public setTabLayout(Lcom/sec/android/app/sbrowser/tab/TabLayout;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lcom/sec/android/app/sbrowser/tab/TabLayout;->EMPTY:Lcom/sec/android/app/sbrowser/tab/TabLayout;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->mTabLayout:Lcom/sec/android/app/sbrowser/tab/TabLayout;

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->mTabLayout:Lcom/sec/android/app/sbrowser/tab/TabLayout;

    return-void
.end method
