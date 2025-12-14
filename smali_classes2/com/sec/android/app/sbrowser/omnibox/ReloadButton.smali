.class public Lcom/sec/android/app/sbrowser/omnibox/ReloadButton;
.super Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;
.source "SourceFile"


# instance fields
.field private mReloadButtonColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/omnibox/ReloadButton;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/ReloadButton;->lambda$setButtonResource$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$setButtonResource$0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/ReloadButton;->onReloadButtonClick()V

    return-void
.end method

.method private onReloadButtonClick()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isOfflineMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->getButton()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->showReconnectToOnlinePopup(Landroid/view/View;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2002"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->isReaderProgressVisible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->reload()V

    :cond_1
    return-void
.end method


# virtual methods
.method public setButtonResource()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mParent:Landroid/view/View;

    const v1, 0x7f0b0d98

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    const v1, 0x7f08053a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->getRightButtonKeyListener()Landroid/view/View$OnKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    new-instance v1, LK6/a;

    const/16 v2, 0x13

    invoke-direct {v1, v2, p0}, LK6/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f140034

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public updateButtonColor()V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/omnibox/ReloadButton;->mReloadButtonColor:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->getIconColor()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/omnibox/ReloadButton;->mReloadButtonColor:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->getIconBackground()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method
