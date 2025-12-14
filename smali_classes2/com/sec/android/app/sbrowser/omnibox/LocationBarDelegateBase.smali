.class public Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    return-void
.end method


# virtual methods
.method public clearFocus()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->clearFocus()V

    return-void
.end method

.method public getBookmarkButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->getBookmarkButton()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getCopyButton()Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->getCopyButton()Landroid/widget/ImageButton;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->getCurrentUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeepLinkButton()Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->getDeepLinkButton()Landroid/widget/ImageButton;

    move-result-object p0

    return-object p0
.end method

.method public getDeleteButton()Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->getDeleteButton()Landroid/widget/ImageButton;

    move-result-object p0

    return-object p0
.end method

.method public getMyInfoButton()Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->getMyInfoButton()Landroid/widget/ImageButton;

    move-result-object p0

    return-object p0
.end method

.method public getOfflineButton()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->getOfflineButton()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public getPWAButton()Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->getPWAButton()Landroid/widget/ImageButton;

    move-result-object p0

    return-object p0
.end method

.method public getReaderButton()Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->getReaderButton()Landroid/widget/ImageButton;

    move-result-object p0

    return-object p0
.end method

.method public getReaderOptionButton()Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->getReaderOptionButton()Landroid/widget/ImageButton;

    move-result-object p0

    return-object p0
.end method

.method public getReloadButton()Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->getReloadButton()Landroid/widget/ImageButton;

    move-result-object p0

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->getScreenID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSearchEngineButtonLayout()Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->getSearchEngineButtonLayout()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public getSecurityButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->getSecurityButton()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUrlBar()Lcom/sec/android/app/sbrowser/omnibox/UrlBar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->getUrlBar()Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    move-result-object p0

    return-object p0
.end method

.method public getUrlBarParent()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->getUrlBarParent()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getVoiceButton()Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->getVoiceButton()Landroid/widget/ImageButton;

    move-result-object p0

    return-object p0
.end method

.method public hideKeyboard()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->hideKeyboard()V

    return-void
.end method

.method public isBookmarkButtonVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->isBookmarkButtonVisible()Z

    move-result p0

    return p0
.end method

.method public isCopyButtonVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->isCopyButtonVisible()Z

    move-result p0

    return p0
.end method

.method public isDeepLinkButtonVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->isDeepLinkButtonVisible()Z

    move-result p0

    return p0
.end method

.method public isDeleteButtonVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->isDeleteButtonVisible()Z

    move-result p0

    return p0
.end method

.method public isEditMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->isEditMode()Z

    move-result p0

    return p0
.end method

.method public isNativePage()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->isNativePage()Z

    move-result p0

    return p0
.end method

.method public isOfflineButtonVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->isOfflineButtonVisible()Z

    move-result p0

    return p0
.end method

.method public isPWAButtonVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->isPWAButtonVisible()Z

    move-result p0

    return p0
.end method

.method public isReaderButtonVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->isReaderButtonVisible()Z

    move-result p0

    return p0
.end method

.method public isReaderOptionButtonVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->isReaderOptionButtonVisible()Z

    move-result p0

    return p0
.end method

.method public isReloadButtonVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->isReloadButtonVisible()Z

    move-result p0

    return p0
.end method

.method public isSearchEngineButtonVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->isSearchEngineButtonVisible()Z

    move-result p0

    return p0
.end method

.method public isSearchWindowShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->isSearchWindowShowing()Z

    move-result p0

    return p0
.end method

.method public isSecurityButtonVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->isSecurityButtonVisible()Z

    move-result p0

    return p0
.end method

.method public isVoiceButtonVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->isVoiceButtonVisible()Z

    move-result p0

    return p0
.end method

.method public loadUrlInternal(Ljava/lang/String;II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->loadUrlInternal(Ljava/lang/String;II)V

    return-void
.end method

.method public sendSearchWindowPopupKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarDelegateBase;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->sendSearchWindowPopupKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
