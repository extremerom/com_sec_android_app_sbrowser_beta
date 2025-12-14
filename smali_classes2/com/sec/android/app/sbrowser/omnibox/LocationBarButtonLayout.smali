.class public Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;
    }
.end annotation


# instance fields
.field protected mBookmarkButton:Lcom/sec/android/app/sbrowser/omnibox/BookmarkButton;

.field private final mBookmarkDbListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

.field protected mButtons:[Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;

.field private mCompactLocationBar:Landroid/view/View;

.field protected mCompactUrlTextView:Landroid/widget/TextView;

.field protected mCopyButton:Lcom/sec/android/app/sbrowser/omnibox/CopyButton;

.field protected mDeepLinkButton:Lcom/sec/android/app/sbrowser/omnibox/DeepLinkButton;

.field protected mDeleteButton:Lcom/sec/android/app/sbrowser/omnibox/DeleteButton;

.field private mEventListener:Lcom/sec/android/app/sbrowser/common/toolbar/LocationBarEventListener;

.field protected mIsFocusedFromPen:Z

.field protected mIsPopupUiDisabled:Z

.field protected mLocationBarKeyEvent:Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;

.field private mLocationbarStatus:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

.field protected mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

.field protected mMyInfoButton:Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;

.field protected mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

.field protected mOfflineButton:Lcom/sec/android/app/sbrowser/omnibox/OfflineButton;

.field protected mPWAButton:Lcom/sec/android/app/sbrowser/omnibox/PWAButton;

.field protected mReaderButton:Lcom/sec/android/app/sbrowser/omnibox/ReaderButton;

.field protected mReaderOptionButton:Lcom/sec/android/app/sbrowser/omnibox/ReaderOptionButton;

.field private mReconnectToOnlinePopup:Lm/l;

.field protected mReloadButton:Lcom/sec/android/app/sbrowser/omnibox/ReloadButton;

.field mReloadSmartTip:Lcom/sec/android/app/sbrowser/omnibox/ReloadSmartTip;

.field protected mRetainEditModeOnFocusCleared:Z

.field protected mSBrowserViewModel:Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

.field protected mSearchEngineButton:Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;

.field protected mSearchHistoryViewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;

.field protected mSearchWindowPopup:Lcom/sec/android/app/sbrowser/search_window/SearchWindowPopup;

.field protected mSearchWindowViewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

.field protected mSecretIcon:Lcom/sec/android/app/sbrowser/omnibox/SecretIcon;

.field protected mSecurityButton:Lcom/sec/android/app/sbrowser/omnibox/SecurityButton;

.field protected mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

.field protected mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

.field protected mUrlBarParent:Landroid/view/View;

.field protected mVoiceButton:Lcom/sec/android/app/sbrowser/omnibox/VoiceButton;

.field protected mZoomButton:Lcom/sec/android/app/sbrowser/omnibox/ZoomButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mRetainEditModeOnFocusCleared:Z

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mIsFocusedFromPen:Z

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mIsPopupUiDisabled:Z

    new-instance p1, Lcom/sec/android/app/sbrowser/omnibox/f;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/sbrowser/omnibox/f;-><init>(Landroid/view/KeyEvent$Callback;I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mBookmarkDbListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

    sget-object p1, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->EMPTY:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->lambda$inflateCompactUrlTextViewIfNeeded$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->lambda$requestShowKeyboard$3()V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->lambda$showReconnectToOnlinePopup$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->lambda$new$2(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V

    return-void
.end method

.method private dismissReloadTipCard()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mReloadSmartTip:Lcom/sec/android/app/sbrowser/omnibox/ReloadSmartTip;

    if-eqz v0, :cond_0

    const-string v0, "si__LocationBarButtonLayout"

    const-string v1, "dismissReloadTipCard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mReloadSmartTip:Lcom/sec/android/app/sbrowser/omnibox/ReloadSmartTip;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mReloadSmartTip:Lcom/sec/android/app/sbrowser/omnibox/ReloadSmartTip;

    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->showReloadTipCard()V

    return-void
.end method

.method private inflateCompactUrlTextViewIfNeeded()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mCompactLocationBar:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x7f0b06b1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mCompactLocationBar:Landroid/view/View;

    const v0, 0x7f0b02db

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mCompactUrlTextView:Landroid/widget/TextView;

    new-instance v1, LK6/a;

    const/16 v2, 0xf

    invoke-direct {v1, v2, p0}, LK6/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$inflateCompactUrlTextViewIfNeeded$1(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBarParent:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0b06b0

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private synthetic lambda$new$2(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V
    .locals 0

    sget-object p2, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$1;->$SwitchMap$com$sec$android$app$sbrowser$common$constants$sites$BookmarkConstants$Messages:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mBookmarkButton:Lcom/sec/android/app/sbrowser/omnibox/BookmarkButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/BookmarkButton;->updateBookmarkStarButtonStatus()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$requestShowKeyboard$3()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mIsFocusedFromPen:Z

    if-nez v0, :cond_0

    const-string v0, "si__LocationBarButtonLayout"

    const-string v2, "Show keyboard"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->showKeyboard(Landroid/view/View;I)V

    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mIsFocusedFromPen:Z

    return-void
.end method

.method private synthetic lambda$showReconnectToOnlinePopup$0(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->openWebPage()V

    return-void
.end method

.method private setButtonVisibility(ZZZZZ)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mDeleteButton:Lcom/sec/android/app/sbrowser/omnibox/DeleteButton;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/omnibox/DeleteButton;->setDeleteButtonVisibility(I)V

    if-eqz p2, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->setReloadButtonVisibility(I)V

    if-eqz p3, :cond_2

    move p1, v2

    goto :goto_2

    :cond_2
    move p1, v1

    :goto_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->setReaderOptionButtonVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mVoiceButton:Lcom/sec/android/app/sbrowser/omnibox/VoiceButton;

    if-eqz p4, :cond_3

    move p2, v2

    goto :goto_3

    :cond_3
    move p2, v1

    :goto_3
    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/omnibox/VoiceButton;->setVoiceSearchButtonVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mMyInfoButton:Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;

    if-eqz p5, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;->setMyInfoButtonVisibility(I)V

    return-void
.end method

.method private setImageResources()V
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;-><init>(Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;)V

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mLocationBarKeyEvent:Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->setUrlBarResource()V

    new-instance v1, Lcom/sec/android/app/sbrowser/omnibox/BookmarkButton;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sec/android/app/sbrowser/omnibox/BookmarkButton;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;)V

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mBookmarkButton:Lcom/sec/android/app/sbrowser/omnibox/BookmarkButton;

    new-instance v1, Lcom/sec/android/app/sbrowser/omnibox/ReaderButton;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sec/android/app/sbrowser/omnibox/ReaderButton;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;)V

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mReaderButton:Lcom/sec/android/app/sbrowser/omnibox/ReaderButton;

    new-instance v1, Lcom/sec/android/app/sbrowser/omnibox/ReaderOptionButton;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sec/android/app/sbrowser/omnibox/ReaderOptionButton;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;)V

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mReaderOptionButton:Lcom/sec/android/app/sbrowser/omnibox/ReaderOptionButton;

    new-instance v1, Lcom/sec/android/app/sbrowser/omnibox/DeepLinkButton;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sec/android/app/sbrowser/omnibox/DeepLinkButton;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;)V

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mDeepLinkButton:Lcom/sec/android/app/sbrowser/omnibox/DeepLinkButton;

    new-instance v1, Lcom/sec/android/app/sbrowser/omnibox/SecurityButton;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sec/android/app/sbrowser/omnibox/SecurityButton;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;)V

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSecurityButton:Lcom/sec/android/app/sbrowser/omnibox/SecurityButton;

    new-instance v1, Lcom/sec/android/app/sbrowser/omnibox/VoiceButton;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sec/android/app/sbrowser/omnibox/VoiceButton;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;)V

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mVoiceButton:Lcom/sec/android/app/sbrowser/omnibox/VoiceButton;

    new-instance v1, Lcom/sec/android/app/sbrowser/omnibox/ReloadButton;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sec/android/app/sbrowser/omnibox/ReloadButton;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;)V

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mReloadButton:Lcom/sec/android/app/sbrowser/omnibox/ReloadButton;

    new-instance v1, Lcom/sec/android/app/sbrowser/omnibox/DeleteButton;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sec/android/app/sbrowser/omnibox/DeleteButton;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;)V

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mDeleteButton:Lcom/sec/android/app/sbrowser/omnibox/DeleteButton;

    new-instance v1, Lcom/sec/android/app/sbrowser/omnibox/PWAButton;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sec/android/app/sbrowser/omnibox/PWAButton;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;)V

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mPWAButton:Lcom/sec/android/app/sbrowser/omnibox/PWAButton;

    new-instance v1, Lcom/sec/android/app/sbrowser/omnibox/CopyButton;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sec/android/app/sbrowser/omnibox/CopyButton;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;)V

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mCopyButton:Lcom/sec/android/app/sbrowser/omnibox/CopyButton;

    new-instance v1, Lcom/sec/android/app/sbrowser/omnibox/OfflineButton;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sec/android/app/sbrowser/omnibox/OfflineButton;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;)V

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mOfflineButton:Lcom/sec/android/app/sbrowser/omnibox/OfflineButton;

    new-instance v1, Lcom/sec/android/app/sbrowser/omnibox/SecretIcon;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sec/android/app/sbrowser/omnibox/SecretIcon;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;)V

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSecretIcon:Lcom/sec/android/app/sbrowser/omnibox/SecretIcon;

    new-instance v1, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;)V

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchEngineButton:Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;

    new-instance v1, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;)V

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mMyInfoButton:Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;

    new-instance v1, Lcom/sec/android/app/sbrowser/omnibox/ZoomButton;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sec/android/app/sbrowser/omnibox/ZoomButton;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;)V

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mZoomButton:Lcom/sec/android/app/sbrowser/omnibox/ZoomButton;

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mBookmarkButton:Lcom/sec/android/app/sbrowser/omnibox/BookmarkButton;

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mReaderButton:Lcom/sec/android/app/sbrowser/omnibox/ReaderButton;

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mReaderOptionButton:Lcom/sec/android/app/sbrowser/omnibox/ReaderOptionButton;

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mDeepLinkButton:Lcom/sec/android/app/sbrowser/omnibox/DeepLinkButton;

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSecurityButton:Lcom/sec/android/app/sbrowser/omnibox/SecurityButton;

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mVoiceButton:Lcom/sec/android/app/sbrowser/omnibox/VoiceButton;

    iget-object v8, v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mReloadButton:Lcom/sec/android/app/sbrowser/omnibox/ReloadButton;

    iget-object v9, v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mDeleteButton:Lcom/sec/android/app/sbrowser/omnibox/DeleteButton;

    iget-object v10, v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mPWAButton:Lcom/sec/android/app/sbrowser/omnibox/PWAButton;

    iget-object v11, v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mCopyButton:Lcom/sec/android/app/sbrowser/omnibox/CopyButton;

    iget-object v12, v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mOfflineButton:Lcom/sec/android/app/sbrowser/omnibox/OfflineButton;

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSecretIcon:Lcom/sec/android/app/sbrowser/omnibox/SecretIcon;

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchEngineButton:Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mMyInfoButton:Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;

    const/16 v16, 0x0

    aput-object v2, v0, v16

    const/4 v2, 0x1

    aput-object v3, v0, v2

    const/4 v3, 0x2

    aput-object v4, v0, v3

    const/4 v3, 0x3

    aput-object v5, v0, v3

    const/4 v3, 0x4

    aput-object v6, v0, v3

    const/4 v3, 0x5

    aput-object v7, v0, v3

    const/4 v3, 0x6

    aput-object v8, v0, v3

    const/4 v3, 0x7

    aput-object v9, v0, v3

    const/16 v3, 0x8

    aput-object v10, v0, v3

    const/16 v3, 0x9

    aput-object v11, v0, v3

    const/16 v3, 0xa

    aput-object v12, v0, v3

    const/16 v3, 0xb

    aput-object v13, v0, v3

    const/16 v3, 0xc

    aput-object v14, v0, v3

    const/16 v3, 0xd

    aput-object v15, v0, v3

    const/16 v3, 0xe

    aput-object v1, v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mButtons:[Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;

    array-length v3, v0

    move/from16 v4, v16

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->setButtonResource()V

    iget-object v6, v1, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->setDelegate(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V

    add-int/2addr v4, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setUrlBarResource()V
    .locals 2

    const v0, 0x7f0b06b2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveEnabled(Z)V

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "XIAOMI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VIVO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->updateCompactUrlTextView()V

    return-void
.end method

.method private showReloadTipCard()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mReloadSmartTip:Lcom/sec/android/app/sbrowser/omnibox/ReloadSmartTip;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mReloadButton:Lcom/sec/android/app/sbrowser/omnibox/ReloadButton;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->isVisible()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    const-string v0, "si__LocationBarButtonLayout"

    const-string v1, "showReloadTipCard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->dismissReloadTipCard()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mEventListener:Lcom/sec/android/app/sbrowser/common/toolbar/LocationBarEventListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/toolbar/LocationBarEventListener;->onSmartTipShow()V

    new-instance v0, Lcom/sec/android/app/sbrowser/omnibox/ReloadSmartTip;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mReloadButton:Lcom/sec/android/app/sbrowser/omnibox/ReloadButton;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->getButton()Landroid/widget/ImageButton;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/omnibox/ReloadSmartTip;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mReloadSmartTip:Lcom/sec/android/app/sbrowser/omnibox/ReloadSmartTip;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f140692

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/omnibox/ReloadSmartTip;->setTipMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mReloadSmartTip:Lcom/sec/android/app/sbrowser/omnibox/ReloadSmartTip;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->show()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFrontScreen()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "pref_reload_smart_tip_front_screen"

    goto :goto_0

    :cond_3
    const-string v0, "pref_reload_smart_tip_main_screen"

    :goto_0
    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private updateCompactUrlTextView()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isCompactLayoutType(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->inflateCompactUrlTextViewIfNeeded()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBarParent:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mCompactLocationBar:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBarParent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mCompactLocationBar:Landroid/view/View;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public clearFocus()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->setToolbarButtonsFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->setToolbarButtonsFocusable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mDeleteButton:Lcom/sec/android/app/sbrowser/omnibox/DeleteButton;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->clearFocus()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mReloadButton:Lcom/sec/android/app/sbrowser/omnibox/ReloadButton;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->clearFocus()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mVoiceButton:Lcom/sec/android/app/sbrowser/omnibox/VoiceButton;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->clearFocus()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mCopyButton:Lcom/sec/android/app/sbrowser/omnibox/CopyButton;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->clearFocus()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchEngineButton:Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->clearFocus()V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mRetainEditModeOnFocusCleared:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public dismissReconnectToOnlinePopup()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mReconnectToOnlinePopup:Lm/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mReconnectToOnlinePopup:Lm/l;

    invoke-virtual {v0}, Lm/y;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mReconnectToOnlinePopup:Lm/l;

    :cond_0
    return-void
.end method

.method public dismissSearchWindow()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isSearchWindowShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchWindowPopup:Lcom/sec/android/app/sbrowser/search_window/SearchWindowPopup;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/search_window/SearchWindowPopup;->dismiss()V

    :cond_0
    return-void
.end method

.method public enableReaderButton(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mReaderButton:Lcom/sec/android/app/sbrowser/omnibox/ReaderButton;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/ReaderButton;->enableReaderButton(Z)V

    return-void
.end method

.method public enableToolbarButtons(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mButtons:[Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public focusCurrentTab()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->requestFocus()V

    return-void
.end method

.method public focusInLeft()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mBookmarkButton:Lcom/sec/android/app/sbrowser/omnibox/BookmarkButton;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mBookmarkButton:Lcom/sec/android/app/sbrowser/omnibox/BookmarkButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->getButton()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusRight(Landroid/view/View;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSecurityButton:Lcom/sec/android/app/sbrowser/omnibox/SecurityButton;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSecurityButton:Lcom/sec/android/app/sbrowser/omnibox/SecurityButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->getButton()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusRight(Landroid/view/View;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isOfflineButtonVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mOfflineButton:Lcom/sec/android/app/sbrowser/omnibox/OfflineButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/OfflineButton;->getTextButton()Landroid/widget/TextView;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusRight(Landroid/view/View;)Z

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusRight(Landroid/view/View;)Z

    :goto_0
    return-void
.end method

.method public focusInRight()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mLocationBarKeyEvent:Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->focusIconOnRight(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusLeft(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method public getBookmarkButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mBookmarkButton:Lcom/sec/android/app/sbrowser/omnibox/BookmarkButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->getButton()Landroid/widget/ImageButton;

    move-result-object p0

    return-object p0
.end method

.method public getCopyButton()Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mCopyButton:Lcom/sec/android/app/sbrowser/omnibox/CopyButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->getButton()Landroid/widget/ImageButton;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentSearchEngine()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchEngineButton:Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->getCurrentSearchEngine()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getCurrentUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeepLinkButton()Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mDeepLinkButton:Lcom/sec/android/app/sbrowser/omnibox/DeepLinkButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->getButton()Landroid/widget/ImageButton;

    move-result-object p0

    return-object p0
.end method

.method public getDeleteButton()Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mDeleteButton:Lcom/sec/android/app/sbrowser/omnibox/DeleteButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->getButton()Landroid/widget/ImageButton;

    move-result-object p0

    return-object p0
.end method

.method public getEventListener()Lcom/sec/android/app/sbrowser/common/toolbar/LocationBarEventListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mEventListener:Lcom/sec/android/app/sbrowser/common/toolbar/LocationBarEventListener;

    return-object p0
.end method

.method public getLeftButtonKeyListener()Landroid/view/View$OnKeyListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mLocationBarKeyEvent:Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->getLeftButtonKeyListener()Landroid/view/View$OnKeyListener;

    move-result-object p0

    return-object p0
.end method

.method public getLifecycleOwner()Landroidx/lifecycle/J;
    .locals 2

    sget-object v0, Landroidx/lifecycle/k0;->c:Landroidx/lifecycle/k0;

    invoke-static {p0, v0}, LJc/n;->q(Ljava/lang/Object;Lsb/k;)LJc/l;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/k0;->d:Landroidx/lifecycle/k0;

    invoke-static {v0, v1}, LJc/n;->u(LJc/l;Lsb/k;)LJc/h;

    move-result-object v0

    invoke-static {v0}, LJc/n;->o(LJc/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/J;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "si__LocationBarButtonLayout"

    const-string v1, "view isn\'t attached"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/J;

    return-object p0
.end method

.method public getLocationBarStatus()Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNativePage()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isMultiCpUrl()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isUnifiedHomepageUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;->DOCUMENT_EDIT_WITH_TEXT:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;->DOCUMENT_EDIT_WITHOUT_TEXT:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;->DOCUMENT_PAGE_LOADING:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isReaderPage()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;->READER_NORMAL:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    goto :goto_1

    :cond_4
    sget-object p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;->DOCUMENT_NORMAL:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    goto :goto_1

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    sget-object p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;->NATIVE_EDIT_WITH_TEXT:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    goto :goto_1

    :cond_6
    sget-object p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;->NATIVE_EDIT_WITHOUT_TEXT:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    goto :goto_1

    :cond_7
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNativePage()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;->NATIVE_NEW_GUI:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    goto :goto_1

    :cond_8
    sget-object p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;->NATIVE_NORMAL:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    :goto_1
    return-object p0
.end method

.method public getMyInfoButton()Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mMyInfoButton:Lcom/sec/android/app/sbrowser/omnibox/MyInfoButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->getButton()Landroid/widget/ImageButton;

    move-result-object p0

    return-object p0
.end method

.method public getOfflineButton()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mOfflineButton:Lcom/sec/android/app/sbrowser/omnibox/OfflineButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/OfflineButton;->getTextButton()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public getPWAButton()Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mPWAButton:Lcom/sec/android/app/sbrowser/omnibox/PWAButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->getButton()Landroid/widget/ImageButton;

    move-result-object p0

    return-object p0
.end method

.method public getReaderButton()Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mReaderButton:Lcom/sec/android/app/sbrowser/omnibox/ReaderButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->getButton()Landroid/widget/ImageButton;

    move-result-object p0

    return-object p0
.end method

.method public getReaderOptionButton()Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mReaderOptionButton:Lcom/sec/android/app/sbrowser/omnibox/ReaderOptionButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->getButton()Landroid/widget/ImageButton;

    move-result-object p0

    return-object p0
.end method

.method public getReloadButton()Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mReloadButton:Lcom/sec/android/app/sbrowser/omnibox/ReloadButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->getButton()Landroid/widget/ImageButton;

    move-result-object p0

    return-object p0
.end method

.method public getRightButtonKeyListener()Landroid/view/View$OnKeyListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mLocationBarKeyEvent:Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->getRightButtonKeyListener()Landroid/view/View$OnKeyListener;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getSBrowserViewModel()Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSBrowserViewModel:Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    if-nez v0, :cond_0

    invoke-static {p0}, Landroidx/lifecycle/l0;->h(Landroid/view/View;)Landroidx/lifecycle/y0;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/y0;

    new-instance v1, LZ3/x;

    invoke-direct {v1, v0}, LZ3/x;-><init>(Landroidx/lifecycle/y0;)V

    const-class v0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    invoke-virtual {v1, v0}, LZ3/x;->s(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSBrowserViewModel:Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSBrowserViewModel:Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNativePage()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isSecretModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "102"

    goto :goto_0

    :cond_0
    const-string p0, "100"

    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isSecretModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "202"

    goto :goto_1

    :cond_2
    const-string p0, "201"

    :goto_1
    return-object p0
.end method

.method public getSearchEngineButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchEngineButton:Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->getButton()Landroid/widget/ImageButton;

    move-result-object p0

    return-object p0
.end method

.method public getSearchEngineButtonLayout()Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchEngineButton:Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->getLayout()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public getSearchEngineKeyListener()Landroid/view/View$OnKeyListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mLocationBarKeyEvent:Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->getSearchEngineKeyListener()Landroid/view/View$OnKeyListener;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getSearchHistoryViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchHistoryViewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;

    if-nez v0, :cond_0

    invoke-static {p0}, Landroidx/lifecycle/l0;->h(Landroid/view/View;)Landroidx/lifecycle/y0;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/y0;

    new-instance v1, LZ3/x;

    invoke-direct {v1, v0}, LZ3/x;-><init>(Landroidx/lifecycle/y0;)V

    const-class v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;

    invoke-virtual {v1, v0}, LZ3/x;->s(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchHistoryViewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchHistoryViewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getSearchWindowViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchWindowViewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    if-nez v0, :cond_0

    invoke-static {p0}, Landroidx/lifecycle/l0;->h(Landroid/view/View;)Landroidx/lifecycle/y0;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/y0;

    new-instance v1, LZ3/x;

    invoke-direct {v1, v0}, LZ3/x;-><init>(Landroidx/lifecycle/y0;)V

    const-class v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    invoke-virtual {v1, v0}, LZ3/x;->s(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchWindowViewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchWindowViewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getSecurityButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSecurityButton:Lcom/sec/android/app/sbrowser/omnibox/SecurityButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->getButton()Landroid/widget/ImageButton;

    move-result-object p0

    return-object p0
.end method

.method public getStarButtonAddBookmarkAnimator()Landroid/animation/Animator;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010119

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mBookmarkButton:Lcom/sec/android/app/sbrowser/omnibox/BookmarkButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->getButton()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getTopSuggestion()Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->getSearchWindowViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->getTopSuggestion()Landroidx/lifecycle/S;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;

    return-object p0
.end method

.method public getUrlBar()Lcom/sec/android/app/sbrowser/omnibox/UrlBar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    return-object p0
.end method

.method public getUrlBarParent()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBarParent:Landroid/view/View;

    return-object p0
.end method

.method public getVoiceButton()Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mVoiceButton:Lcom/sec/android/app/sbrowser/omnibox/VoiceButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->getButton()Landroid/widget/ImageButton;

    move-result-object p0

    return-object p0
.end method

.method public getZoomButton()Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mZoomButton:Lcom/sec/android/app/sbrowser/omnibox/ZoomButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->getButton()Landroid/widget/ImageButton;

    move-result-object p0

    return-object p0
.end method

.method public hideKeyboard()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method public insertSearchHistory(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isSecretModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->getSearchHistoryViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;->insert(Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;)V

    return-void
.end method

.method public isBookmarkButtonVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mBookmarkButton:Lcom/sec/android/app/sbrowser/omnibox/BookmarkButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->isVisible()Z

    move-result p0

    return p0
.end method

.method public isCopyButtonVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mCopyButton:Lcom/sec/android/app/sbrowser/omnibox/CopyButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->isVisible()Z

    move-result p0

    return p0
.end method

.method public isDeepLinkButtonVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mDeepLinkButton:Lcom/sec/android/app/sbrowser/omnibox/DeepLinkButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->isVisible()Z

    move-result p0

    return p0
.end method

.method public isDeleteButtonVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mDeleteButton:Lcom/sec/android/app/sbrowser/omnibox/DeleteButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->isVisible()Z

    move-result p0

    return p0
.end method

.method public isEditMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->isEditMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNativePage()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNativePage()Z

    move-result p0

    return p0
.end method

.method public isOfflineButtonVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mOfflineButton:Lcom/sec/android/app/sbrowser/omnibox/OfflineButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/OfflineButton;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPWAButtonVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mPWAButton:Lcom/sec/android/app/sbrowser/omnibox/PWAButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->isVisible()Z

    move-result p0

    return p0
.end method

.method public isReaderButtonVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mReaderButton:Lcom/sec/android/app/sbrowser/omnibox/ReaderButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->isVisible()Z

    move-result p0

    return p0
.end method

.method public isReaderOptionButtonVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mReaderOptionButton:Lcom/sec/android/app/sbrowser/omnibox/ReaderOptionButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->isVisible()Z

    move-result p0

    return p0
.end method

.method public isReaderProgressVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mReaderButton:Lcom/sec/android/app/sbrowser/omnibox/ReaderButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/ReaderButton;->isReaderProgressVisible()Z

    move-result p0

    return p0
.end method

.method public isReloadButtonVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mReloadButton:Lcom/sec/android/app/sbrowser/omnibox/ReloadButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->isVisible()Z

    move-result p0

    return p0
.end method

.method public isSearchEngineButtonVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchEngineButton:Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->isVisible()Z

    move-result p0

    return p0
.end method

.method public isSearchWindowShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchWindowPopup:Lcom/sec/android/app/sbrowser/search_window/SearchWindowPopup;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/search_window/SearchWindowPopup;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSecretModeEnabled()Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getTaskId(Landroid/app/Activity;)I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isSecurityButtonVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSecurityButton:Lcom/sec/android/app/sbrowser/omnibox/SecurityButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->isVisible()Z

    move-result p0

    return p0
.end method

.method public isVoiceButtonVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mVoiceButton:Lcom/sec/android/app/sbrowser/omnibox/VoiceButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->isVisible()Z

    move-result p0

    return p0
.end method

.method public loadUrlInternal(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->loadUrlInternal(Ljava/lang/String;IIZ)V

    return-void
.end method

.method public loadUrlInternal(Ljava/lang/String;IIZ)V
    .locals 8

    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isAcceptedScheme(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isWebUIUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getUrlForSearchQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    move-object v4, p1

    goto :goto_1

    :catch_0
    const-string v0, "si__LocationBarButtonLayout"

    const-string v1, "Failed to decode URL for search query."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_1
    if-eqz p4, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->onOpenInNewTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p1, v4, p2, p3}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->loadUrl(Ljava/lang/String;II)V

    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->focusCurrentTab()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mBookmarkDbListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->registerBookmarkListener(Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->dismissReloadTipCard()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mBookmarkDbListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->unregisterBookmarkListener(Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->dismissReloadTipCard()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0b0df8

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBarParent:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->setImageResources()V

    new-instance v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarTouchDelegate;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarTouchDelegate;-><init>(Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method

.method public onFocusChangedToIcon()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchWindowPopup:Lcom/sec/android/app/sbrowser/search_window/SearchWindowPopup;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/search_window/SearchWindowPopup;->clearFocus()V

    :cond_0
    return-void
.end method

.method public onSearchEngineButtonClick()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchEngineButton:Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->onSearchEngineButtonClick()V

    return-void
.end method

.method public requestShowKeyboard()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    new-instance v1, Lcom/sec/android/app/sbrowser/omnibox/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/omnibox/e;-><init>(Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;I)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public sendSearchWindowPopupKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchWindowPopup:Lcom/sec/android/app/sbrowser/search_window/SearchWindowPopup;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/SearchWindowPopup;->onKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public setEventListener(Lcom/sec/android/app/sbrowser/common/toolbar/LocationBarEventListener;)V
    .locals 4

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mEventListener:Lcom/sec/android/app/sbrowser/common/toolbar/LocationBarEventListener;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mButtons:[Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->setEventListener(Lcom/sec/android/app/sbrowser/common/toolbar/LocationBarEventListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mLocationBarKeyEvent:Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->setEventListener(Lcom/sec/android/app/sbrowser/common/toolbar/LocationBarEventListener;)V

    return-void
.end method

.method public setMainViewInterface(Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    return-void
.end method

.method public setNewTabHandler(Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    return-void
.end method

.method public setReaderOptionButtonVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mReaderOptionButton:Lcom/sec/android/app/sbrowser/omnibox/ReaderOptionButton;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/ReaderOptionButton;->setReaderOptionButtonVisibility(I)V

    return-void
.end method

.method public setReloadButtonVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getTabCount()I

    move-result v0

    if-gtz v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mReloadButton:Lcom/sec/android/app/sbrowser/omnibox/ReloadButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->getButton()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setTabDelegate(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V
    .locals 3

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->setTabDelegate(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mButtons:[Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->setDelegate(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setToolbarButtonsFocusable(Z)V
    .locals 3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mButtons:[Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->setFocusable(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setZoomButtonVisibility(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mZoomButton:Lcom/sec/android/app/sbrowser/omnibox/ZoomButton;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/ZoomButton;->setZoomButtonVisibility(Z)V

    return-void
.end method

.method public showReconnectToOnlinePopup(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->dismissReconnectToOnlinePopup()V

    new-instance v0, Lm/k;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1501c5

    invoke-direct {v0, v1, v2}, Lm/k;-><init>(Landroid/content/Context;I)V

    iget-object v1, v0, Lm/k;->a:Lm/h;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lm/h;->m:Z

    const v1, 0x7f14068f

    invoke-virtual {v0, v1}, Lm/k;->a(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f14068e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lm/k;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f140690

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/appshortcut/b;

    const/4 v3, 0x6

    invoke-direct {v2, v3, p0}, Lcom/sec/android/app/sbrowser/appshortcut/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lm/k;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mReconnectToOnlinePopup:Lm/l;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mReloadButton:Lcom/sec/android/app/sbrowser/omnibox/ReloadButton;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mReaderButton:Lcom/sec/android/app/sbrowser/omnibox/ReaderButton;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mReaderButton:Lcom/sec/android/app/sbrowser/omnibox/ReaderButton;

    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->getButton()Landroid/widget/ImageButton;

    move-result-object p1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mReloadButton:Lcom/sec/android/app/sbrowser/omnibox/ReloadButton;

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mReconnectToOnlinePopup:Lm/l;

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->setAnchor(Landroid/content/Context;Landroid/app/Dialog;Landroid/view/View;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mReconnectToOnlinePopup:Lm/l;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public showReloadTipCardIfNeeded()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeMulti()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFrontScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "pref_reload_smart_tip_front_screen"

    goto :goto_0

    :cond_1
    const-string v1, "pref_reload_smart_tip_main_screen"

    :goto_0
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showReloadTipCardIfNeeded, isFrontScreen: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFrontScreen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__LocationBarButtonLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/omnibox/e;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/omnibox/e;-><init>(Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;I)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public switchReaderIconAndProgressVisibility(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mReaderButton:Lcom/sec/android/app/sbrowser/omnibox/ReaderButton;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/ReaderButton;->switchReaderIconAndProgressVisibility(Z)V

    return-void
.end method

.method public updateAllButtonStatus()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->updateCompactUrlTextView()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSecurityButton:Lcom/sec/android/app/sbrowser/omnibox/SecurityButton;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/SecurityButton;->updateSecurityButtonStatus()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->updateLocationBarEndIcon()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mBookmarkButton:Lcom/sec/android/app/sbrowser/omnibox/BookmarkButton;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/BookmarkButton;->updateBookmarkStarButtonStatus()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mReaderButton:Lcom/sec/android/app/sbrowser/omnibox/ReaderButton;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/ReaderButton;->updateReaderButtonStatus()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mOfflineButton:Lcom/sec/android/app/sbrowser/omnibox/OfflineButton;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/OfflineButton;->updateOfflineButtonStatus()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mPWAButton:Lcom/sec/android/app/sbrowser/omnibox/PWAButton;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/PWAButton;->updatePWAButtonStatus()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mDeepLinkButton:Lcom/sec/android/app/sbrowser/omnibox/DeepLinkButton;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/DeepLinkButton;->updateDeepLinkButtonStatus()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mZoomButton:Lcom/sec/android/app/sbrowser/omnibox/ZoomButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/ZoomButton;->updateZoomButtonState()V

    return-void
.end method

.method public updateLocationBarEndIcon()V
    .locals 14

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->getLocationBarStatus()Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mLocationbarStatus:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateLocationBarEndIcon, status = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "si__LocationBarButtonLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$1;->$SwitchMap$com$sec$android$app$sbrowser$omnibox$LocationBarButtonLayout$LocationBarStatus:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->setButtonVisibility(ZZZZZ)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isReaderPage()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->setButtonVisibility(ZZZZZ)V

    goto :goto_0

    :pswitch_2
    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->setButtonVisibility(ZZZZZ)V

    goto :goto_0

    :pswitch_3
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->setButtonVisibility(ZZZZZ)V

    goto :goto_0

    :pswitch_4
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->setButtonVisibility(ZZZZZ)V

    goto :goto_0

    :pswitch_5
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->setButtonVisibility(ZZZZZ)V

    :goto_0
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mLocationbarStatus:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateSearchEngine(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateSecurityButtonStatus()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSecurityButton:Lcom/sec/android/app/sbrowser/omnibox/SecurityButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SecurityButton;->updateSecurityButtonStatus()V

    return-void
.end method
