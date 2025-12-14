.class public Lcom/sec/android/app/sbrowser/omnibox/PWAButton;
.super Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;
.source "SourceFile"


# instance fields
.field private mPWAButtonColor:I

.field private mPWAProgress:Landroidx/appcompat/widget/SeslProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/omnibox/PWAButton;Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/omnibox/PWAButton;->lambda$updatePWAButton$0(Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$updatePWAButton$0(Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->getPwaType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/PWAButton;->onPWAButtonClick(I)V

    return-void
.end method

.method private onPWAButtonClick(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    const-string p1, "1135"

    goto :goto_0

    :cond_0
    const-string p1, "2098"

    :goto_0
    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mEventListener:Lcom/sec/android/app/sbrowser/common/toolbar/LocationBarEventListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/common/toolbar/LocationBarEventListener;->onPWAIconClicked(Landroid/view/View;)V

    return-void
.end method

.method private updatePWAButton(Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->isInstalling()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->getPwaType()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mParent:Landroid/view/View;

    const v0, 0x7f0b0938

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SeslProgressBar;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/PWAButton;->mPWAProgress:Landroidx/appcompat/widget/SeslProgressBar;

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/PWAButton;->mPWAProgress:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/PWAButton;->mPWAProgress:Landroidx/appcompat/widget/SeslProgressBar;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mParent:Landroid/view/View;

    const v2, 0x7f0b0937

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    const v2, 0x7f080320

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->getRightButtonKeyListener()Landroid/view/View$OnKeyListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f14086c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    new-instance v2, LFa/b;

    const/16 v3, 0x8

    invoke-direct {v2, v3, p0, p1}, LFa/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/PWAButton;->updateButtonColor()V

    return-void
.end method


# virtual methods
.method public setButtonResource()V
    .locals 0

    return-void
.end method

.method public updateButtonColor()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/omnibox/PWAButton;->mPWAButtonColor:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->getIconColor()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/omnibox/PWAButton;->mPWAButtonColor:I

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->getIconBackground()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public updatePWAButtonStatus()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getPWAStatus()Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updatePWAButtonStatus, pwaStatus = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->getPwaType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PWAButton"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->isEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->getPwaType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isTabAnimating()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isLoading()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isReaderPage()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isMultiCpUrl()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isUnifiedHomepageUrl()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNativePage()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/KnoxModeUtils;->isKnoxMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/omnibox/PWAButton;->updatePWAButton(Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;)V

    const-string p0, "201"

    const-string v0, "2096"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/PWAButton;->mPWAProgress:Landroidx/appcompat/widget/SeslProgressBar;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->getPwaType()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/PWAButton;->mPWAProgress:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method
