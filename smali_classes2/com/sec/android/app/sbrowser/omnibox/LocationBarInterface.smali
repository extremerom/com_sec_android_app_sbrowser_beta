.class public interface abstract Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract clearFocus()V
.end method

.method public abstract dismissSearchWindow()V
.end method

.method public abstract getBookmarkButton()Landroid/view/View;
.end method

.method public abstract getCopyButton()Landroid/widget/ImageButton;
.end method

.method public abstract getCurrentSearchEngine()Ljava/lang/String;
.end method

.method public abstract getCurrentUrl()Ljava/lang/String;
.end method

.method public abstract getDeepLinkButton()Landroid/widget/ImageButton;
.end method

.method public abstract getDeleteButton()Landroid/widget/ImageButton;
.end method

.method public abstract getLeftButtonKeyListener()Landroid/view/View$OnKeyListener;
.end method

.method public abstract getLocationBarStatus()Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;
.end method

.method public abstract getMyInfoButton()Landroid/widget/ImageButton;
.end method

.method public abstract getOfflineButton()Landroid/widget/TextView;
.end method

.method public abstract getPWAButton()Landroid/widget/ImageButton;
.end method

.method public abstract getReaderButton()Landroid/widget/ImageButton;
.end method

.method public abstract getReaderOptionButton()Landroid/widget/ImageButton;
.end method

.method public abstract getReloadButton()Landroid/widget/ImageButton;
.end method

.method public abstract getRightButtonKeyListener()Landroid/view/View$OnKeyListener;
.end method

.method public abstract getScreenID()Ljava/lang/String;
.end method

.method public abstract getSearchEngineButtonLayout()Landroid/widget/LinearLayout;
.end method

.method public abstract getSearchEngineKeyListener()Landroid/view/View$OnKeyListener;
.end method

.method public abstract getSecurityButton()Landroid/view/View;
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract getTopSuggestion()Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;
.end method

.method public abstract getUrlBar()Lcom/sec/android/app/sbrowser/omnibox/UrlBar;
.end method

.method public abstract getUrlBarParent()Landroid/view/View;
.end method

.method public abstract getVoiceButton()Landroid/widget/ImageButton;
.end method

.method public abstract hideKeyboard()V
.end method

.method public abstract insertSearchHistory(Ljava/lang/String;)V
.end method

.method public abstract isBookmarkButtonVisible()Z
.end method

.method public abstract isCopyButtonVisible()Z
.end method

.method public abstract isDeepLinkButtonVisible()Z
.end method

.method public abstract isDeleteButtonVisible()Z
.end method

.method public abstract isEditMode()Z
.end method

.method public abstract isNativePage()Z
.end method

.method public abstract isOfflineButtonVisible()Z
.end method

.method public abstract isPWAButtonVisible()Z
.end method

.method public abstract isReaderButtonVisible()Z
.end method

.method public abstract isReaderOptionButtonVisible()Z
.end method

.method public abstract isReaderProgressVisible()Z
.end method

.method public abstract isReloadButtonVisible()Z
.end method

.method public abstract isSearchEngineButtonVisible()Z
.end method

.method public abstract isSearchWindowShowing()Z
.end method

.method public abstract isSecretModeEnabled()Z
.end method

.method public abstract isSecurityButtonVisible()Z
.end method

.method public abstract isVoiceButtonVisible()Z
.end method

.method public abstract loadUrlInternal(Ljava/lang/String;II)V
.end method

.method public abstract onFocusChangedToIcon()V
.end method

.method public abstract onSearchEngineButtonClick()V
.end method

.method public abstract sendSearchWindowPopupKeyEvent(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract setReaderOptionButtonVisibility(I)V
.end method

.method public abstract setReloadButtonVisibility(I)V
.end method

.method public abstract showReconnectToOnlinePopup(Landroid/view/View;)V
.end method

.method public abstract updateSearchEngine(Ljava/lang/String;)V
.end method
