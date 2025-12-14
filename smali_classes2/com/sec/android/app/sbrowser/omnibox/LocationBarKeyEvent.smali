.class public Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;
.super Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;
.source "SourceFile"


# instance fields
.field private mEventListener:Lcom/sec/android/app/sbrowser/common/toolbar/LocationBarEventListener;

.field private mLeftButtonKeyListener:Landroid/view/View$OnKeyListener;

.field private mRightButtonKeyListener:Landroid/view/View$OnKeyListener;

.field private mSearchEngineKeyListener:Landroid/view/View$OnKeyListener;

.field private mUrlBarKeyListener:Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;-><init>(Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/omnibox/g;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/omnibox/g;-><init>(Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->mLeftButtonKeyListener:Landroid/view/View$OnKeyListener;

    new-instance p1, Lcom/sec/android/app/sbrowser/omnibox/g;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/omnibox/g;-><init>(Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->mRightButtonKeyListener:Landroid/view/View$OnKeyListener;

    new-instance p1, Lcom/sec/android/app/sbrowser/omnibox/g;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/omnibox/g;-><init>(Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->mSearchEngineKeyListener:Landroid/view/View$OnKeyListener;

    new-instance p1, Lcom/sec/android/app/sbrowser/omnibox/g;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/omnibox/g;-><init>(Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->mUrlBarKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->lambda$new$0(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->lambda$new$1(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->lambda$new$3(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->lambda$new$2(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private focusOutBottom()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->mEventListener:Lcom/sec/android/app/sbrowser/common/toolbar/LocationBarEventListener;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->mEventListener:Lcom/sec/android/app/sbrowser/common/toolbar/LocationBarEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/toolbar/LocationBarEventListener;->onFocusOutBottom()Z

    move-result p0

    return p0
.end method

.method private focusOutTop()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->mEventListener:Lcom/sec/android/app/sbrowser/common/toolbar/LocationBarEventListener;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->mEventListener:Lcom/sec/android/app/sbrowser/common/toolbar/LocationBarEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/toolbar/LocationBarEventListener;->onFocusOutTop()Z

    move-result p0

    return p0
.end method

.method private handleDeleteButton()Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->isCopyButtonVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getCopyButton()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusLeft(Landroid/view/View;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private handleDpadLeft(Landroid/view/View;)Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getVoiceButton()Landroid/widget/ImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->isDeleteButtonVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getDeleteButton()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusLeft(Landroid/view/View;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getReloadButton()Landroid/widget/ImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->handleReloadButton()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getReaderButton()Landroid/widget/ImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->isPWAButtonVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getPWAButton()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusLeft(Landroid/view/View;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->isDeepLinkButtonVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getDeepLinkButton()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusLeft(Landroid/view/View;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getReaderOptionButton()Landroid/widget/ImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->isReaderButtonVisible()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getReaderButton()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusLeft(Landroid/view/View;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getDeleteButton()Landroid/widget/ImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->handleDeleteButton()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_7

    return-object p1

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getDeepLinkButton()Landroid/widget/ImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->isCopyButtonVisible()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getCopyButton()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusLeft(Landroid/view/View;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getPWAButton()Landroid/widget/ImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->isDeepLinkButtonVisible()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getDeepLinkButton()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusLeft(Landroid/view/View;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getUrlBar()Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusLeft(Landroid/view/View;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private handleLocationBarStatus(Landroid/view/View;)Ljava/lang/Boolean;
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent$1;->$SwitchMap$com$sec$android$app$sbrowser$omnibox$LocationBarButtonLayout$LocationBarStatus:[I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->getLocationBarStatus()Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getUrlBarParent()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->clearFocus()V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->focusIconOnRight(Z)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->onFocusOutRight()V

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getDeleteButton()Landroid/widget/ImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->isVoiceButtonVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getVoiceButton()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusRight(Landroid/view/View;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getUrlBarParent()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->clearFocus()V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->focusIconOnRight(Z)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->onFocusOutRight()V

    :cond_2
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getCopyButton()Landroid/widget/ImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->isDeleteButtonVisible()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getDeleteButton()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusRight(Landroid/view/View;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getDeleteButton()Landroid/widget/ImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->isVoiceButtonVisible()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getVoiceButton()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusRight(Landroid/view/View;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getUrlBarParent()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->clearFocus()V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->focusIconOnRight(Z)Z

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->handleNormalStatus(Landroid/view/View;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleNormalStatus(Landroid/view/View;)Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getReaderButton()Landroid/widget/ImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->isReaderOptionButtonVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getReaderOptionButton()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusRight(Landroid/view/View;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->isReloadButtonVisible()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getReloadButton()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusRight(Landroid/view/View;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getPWAButton()Landroid/widget/ImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->isReaderButtonVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getReaderButton()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusRight(Landroid/view/View;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getReloadButton()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusRight(Landroid/view/View;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getDeepLinkButton()Landroid/widget/ImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->isPWAButtonVisible()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getPWAButton()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusRight(Landroid/view/View;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->isReaderButtonVisible()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getReaderButton()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusRight(Landroid/view/View;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getReloadButton()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusRight(Landroid/view/View;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->onFocusOutRight()V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private handleReloadButton()Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->isReaderButtonVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getReaderButton()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusLeft(Landroid/view/View;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->isPWAButtonVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getPWAButton()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusLeft(Landroid/view/View;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->isDeepLinkButtonVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getDeepLinkButton()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusLeft(Landroid/view/View;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private keyEvent(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x3e

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->isSearchWindowShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->sendSearchWindowPopupKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method private synthetic lambda$new$0(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result p3

    or-int/2addr p2, p3

    const/16 p3, 0x3d

    if-eq p2, p3, :cond_5

    const p3, 0x2000003d

    if-eq p2, p3, :cond_3

    packed-switch p2, :pswitch_data_0

    return v1

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->clearFocus()V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->focusOutBottom()Z

    move-result p0

    return p0

    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->clearFocus()V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->focusOutTop()Z

    move-result p0

    return p0

    :cond_3
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getSecurityButton()Landroid/view/View;

    move-result-object p2

    if-ne p1, p2, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getBookmarkButton()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusLeft(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->onFocusOutLeft()V

    const/4 p0, 0x1

    return p0

    :cond_5
    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getBookmarkButton()Landroid/view/View;

    move-result-object p2

    if-ne p1, p2, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->isSecurityButtonVisible()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getSecurityButton()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusRight(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getUrlBar()Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusRight(Landroid/view/View;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private synthetic lambda$new$1(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result p3

    or-int/2addr p2, p3

    const/16 p3, 0x3d

    if-eq p2, p3, :cond_4

    const p3, 0x2000003d

    if-eq p2, p3, :cond_3

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->clearFocus()V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->focusOutBottom()Z

    move-result p0

    return p0

    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->clearFocus()V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->focusOutTop()Z

    move-result p0

    return p0

    :cond_3
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->handleDpadLeft(Landroid/view/View;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_4
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->handleLocationBarStatus(Landroid/view/View;)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_5
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private synthetic lambda$new$2(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result p1

    or-int/2addr p1, p2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 p1, 0x42

    if-ne p2, p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->onSearchEngineButtonClick()V

    return v1

    :cond_0
    const/16 v0, 0x3d

    if-eq p1, v0, :cond_6

    const v0, 0x2000003d

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->clearFocus()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->focusOutBottom()Z

    move-result p0

    return p0

    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->keyEvent(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_2
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getUrlBarParent()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->clearFocus()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->isBookmarkButtonVisible()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getBookmarkButton()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusLeft(Landroid/view/View;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->isReaderButtonVisible()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getReaderButton()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusLeft(Landroid/view/View;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->isOfflineButtonVisible()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getOfflineButton()Landroid/widget/TextView;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusLeft(Landroid/view/View;)Z

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->onFocusOutLeft()V

    :goto_0
    return v1

    :cond_6
    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->isSecurityButtonVisible()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getSecurityButton()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusRight(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getUrlBar()Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusRight(Landroid/view/View;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private synthetic lambda$new$3(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result p1

    or-int/2addr p1, p2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getSource()I

    move-result v0

    const/16 v1, 0x102

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return v2

    :cond_0
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->keyEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/16 v3, 0xa0

    if-ne v0, v1, :cond_6

    const/4 p1, 0x4

    if-eq p2, p1, :cond_4

    const/16 p1, 0x42

    if-eq p2, p1, :cond_2

    if-eq p2, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->onKeyEnterClick()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->clearFocus()V

    return v1

    :cond_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getSource()I

    move-result p1

    const/16 p2, 0x2002

    if-ne p1, p2, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->clearFocus()V

    return v1

    :cond_6
    const/16 p2, 0x3d

    if-eq p1, p2, :cond_c

    if-eq p1, v3, :cond_b

    const p2, 0x2000003d

    if-eq p1, p2, :cond_8

    packed-switch p1, :pswitch_data_1

    :goto_1
    return v2

    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getUrlBar()Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getUrlBar()Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p2

    if-ne p1, p2, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getUrlBar()Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getUrlBar()Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->length()I

    move-result p2

    if-ne p1, p2, :cond_7

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getSource()I

    move-result p1

    if-nez p1, :cond_c

    :cond_7
    return v2

    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->focusOutBottom()Z

    move-result p0

    return p0

    :pswitch_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->focusOutTop()Z

    move-result p0

    return p0

    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->isSearchEngineButtonVisible()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getSearchEngineButtonLayout()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusLeft(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_9
    :pswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getUrlBar()Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getUrlBar()Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p2

    if-ne p1, p2, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getUrlBar()Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getSource()I

    move-result p1

    const/16 p2, 0x101

    if-ne p1, p2, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->hideKeyboard()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->onFocusChangedToIcon()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->isSearchEngineButtonVisible()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getSearchEngineButtonLayout()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusLeft(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_a
    return v2

    :cond_b
    return v1

    :cond_c
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->onFocusChangedToIcon()V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->focusIconOnRight(Z)Z

    move-result p1

    if-nez p1, :cond_e

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->clearFocus()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->isNativePage()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->onFocusOutRight()V

    goto :goto_2

    :cond_d
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->focusIconOnRight(Z)Z

    :cond_e
    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method private onFocusChangedToIcon()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->onFocusChangedToIcon()V

    return-void
.end method

.method private onFocusOutLeft()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->mEventListener:Lcom/sec/android/app/sbrowser/common/toolbar/LocationBarEventListener;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->mEventListener:Lcom/sec/android/app/sbrowser/common/toolbar/LocationBarEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/toolbar/LocationBarEventListener;->onFocusOutLeft()V

    return-void
.end method

.method private onFocusOutRight()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->mEventListener:Lcom/sec/android/app/sbrowser/common/toolbar/LocationBarEventListener;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->mEventListener:Lcom/sec/android/app/sbrowser/common/toolbar/LocationBarEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/toolbar/LocationBarEventListener;->onFocusOutRight()V

    return-void
.end method

.method private onKeyEnterClick()V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getScreenID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2041"

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->insertSearchHistory(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->hasScheme(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x2020001

    goto :goto_0

    :cond_1
    const v1, 0x2000001

    :goto_0
    const-string v2, "data:image"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getCurrentUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isWebUIUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isAboutUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->getTopSuggestion()Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;

    move-result-object v2

    const-string v3, "2219"

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v2}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->getType()Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;

    move-result-object v2

    sget-object v4, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->SEARCH_WHAT_YOU_TYPED:Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;

    if-ne v2, v4, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getScreenID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->getCurrentSearchEngine()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2218"

    invoke-static {v1, v3, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v2, v1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->loadUrlInternal(Ljava/lang/String;II)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getScreenID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getScreenID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->loadUrlInternal(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public focusIconOnRight(Z)Z
    .locals 11

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getUrlBar()Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getCopyButton()Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getDeepLinkButton()Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getPWAButton()Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getReaderButton()Landroid/widget/ImageButton;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getReaderOptionButton()Landroid/widget/ImageButton;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getReloadButton()Landroid/widget/ImageButton;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getDeleteButton()Landroid/widget/ImageButton;

    move-result-object v8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getVoiceButton()Landroid/widget/ImageButton;

    move-result-object v9

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->getMyInfoButton()Landroid/widget/ImageButton;

    move-result-object v10

    filled-new-array/range {v2 .. v10}, [Landroid/widget/ImageButton;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    move p1, v0

    :goto_1
    const/16 v1, 0x9

    if-ge p1, v1, :cond_4

    aget-object v1, p0, p1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result p0

    return p0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    move-result p0

    return p0

    :cond_4
    return v0
.end method

.method public getLeftButtonKeyListener()Landroid/view/View$OnKeyListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->mLeftButtonKeyListener:Landroid/view/View$OnKeyListener;

    return-object p0
.end method

.method public getRightButtonKeyListener()Landroid/view/View$OnKeyListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->mRightButtonKeyListener:Landroid/view/View$OnKeyListener;

    return-object p0
.end method

.method public getSearchEngineKeyListener()Landroid/view/View$OnKeyListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->mSearchEngineKeyListener:Landroid/view/View$OnKeyListener;

    return-object p0
.end method

.method public getUrlBarKeyListener()Landroid/view/View$OnKeyListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->mUrlBarKeyListener:Landroid/view/View$OnKeyListener;

    return-object p0
.end method

.method public setEventListener(Lcom/sec/android/app/sbrowser/common/toolbar/LocationBarEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->mEventListener:Lcom/sec/android/app/sbrowser/common/toolbar/LocationBarEventListener;

    return-void
.end method
