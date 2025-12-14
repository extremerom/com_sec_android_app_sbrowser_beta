.class Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;
.super Lcom/sec/android/app/sbrowser/infobars/InfoBar;
.source "SourceFile"


# instance fields
.field private final mEnablePrimaryButtonRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mInfobarResources:Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;

.field private mPrimaryButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;)V
    .locals 6

    invoke-virtual {p4}, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;->getIconDrawableId()I

    move-result v4

    invoke-virtual {p4}, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;->getMessage()Ljava/lang/CharSequence;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;-><init>(Landroid/content/Context;Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;ILjava/lang/CharSequence;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar$1;-><init>(Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;->mEnablePrimaryButtonRunnable:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;->mInfobarResources:Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;->mPrimaryButton:Landroid/widget/Button;

    return-object p0
.end method

.method public static create(Landroid/content/Context;Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;)Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;
    .locals 3

    invoke-virtual {p1}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;->getInfoBarType()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0xe

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;->getResources()Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate$ConfirmInfoBarResources;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;->getResources()Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate$ConfirmInfoBarResources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;-><init>(Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate$ConfirmInfoBarResources;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    return-object v2

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/knox/KnoxPolicy;->isPopupEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    return-object v2

    :cond_2
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarResourceMapper;->getResources(Landroid/content/Context;Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;)Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;-><init>(Landroid/content/Context;Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;)V

    return-object v1
.end method


# virtual methods
.method public applyInfoBarClickDelay(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0b02e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;->mPrimaryButton:Landroid/widget/Button;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;->mEnablePrimaryButtonRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public createView()Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getDelegate()Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;->getInfoBarType()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    const v1, 0x7f0e0463

    goto :goto_0

    :cond_0
    const v1, 0x7f0e01a6

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;->mInfobarResources:Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarLayout;->setResources(Lcom/sec/android/app/sbrowser/infobars/InfoBarView;Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;)V

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar$2;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar$2;-><init>(Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarLayout;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-object v0
.end method

.method public onCloseButtonClicked()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getDelegate()Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;->getInfoBarType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const-string v0, "2199"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLogWithoutScreenID(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->onCloseButtonClicked()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getDelegate()Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;->getInfoBarType()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->onButtonClicked(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;->mEnablePrimaryButtonRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->onDestroy()V

    return-void
.end method

.method public onPrimaryButtonClicked()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getDelegate()Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;->getInfoBarType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const-string v0, "2198"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLogWithoutScreenID(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->onButtonClicked(I)V

    return-void
.end method

.method public onSecondaryButtonClicked()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getDelegate()Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;->getInfoBarType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const-string v0, "2200"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLogWithoutScreenID(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->onButtonClicked(I)V

    return-void
.end method
