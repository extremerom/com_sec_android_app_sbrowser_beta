.class public interface abstract Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->EMPTY:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    return-void
.end method


# virtual methods
.method public canCurrentTabGoBack()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canCurrentTabGoForward()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public didRemoveObjectCaptureView()V
    .locals 0

    return-void
.end method

.method public didRemoveVisionTextView()V
    .locals 0

    return-void
.end method

.method public enterEditMode(Z)V
    .locals 0

    return-void
.end method

.method public getContentMimeType()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getCurrentTheme()Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentThemeColor()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentUrl()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getDeepLinkAppInfo(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/app/SBrowserDeepLinkAppInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getGroupColorValue()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getPWAStatus()Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;
    .locals 0

    new-instance p0, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;-><init>()V

    return-object p0
.end method

.method public getParentalControlBlockedUrl()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getReaderThemeColor()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSecurityLevel()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTabCount()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTabCountOfCurrentGroup()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTerrace()Lcom/sec/terrace/Terrace;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getUrlForSearchQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getZoomValue()D
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0
.end method

.method public isAboutBlankUrl()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isArticle()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isBookmarkAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isBookmarked()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCheckableBottomBarVisible()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isContentDarkModeEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEditMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isErrorPage()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isExtractionFailed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFullScreenMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFullscreenVideoMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isHighContrastModeEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isInGroup()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isIncognitoMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isInfoBarPresent()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isInitialized()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isLoading()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMultiCpUrl()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNativeInitialScreen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNativePage()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNeedToHideToolbarShadow()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNewQuickAccessPage()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNightModeEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isOfflineMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPWAInstalling()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isParentalControlNativePage()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isReaderPage()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSavedReaderPage()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSolidColorLightThemed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSplitMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isTabAnimating()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUnifiedHomepageUrl()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUrlBlockedByParentalControl(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public loadUrl(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public onLaunchNewTabFromAssistIntent()V
    .locals 0

    return-void
.end method

.method public onLaunchNewTabFromExternalApp()V
    .locals 0

    return-void
.end method

.method public openWebPage()V
    .locals 0

    return-void
.end method

.method public reload()V
    .locals 0

    return-void
.end method

.method public stopLoading()V
    .locals 0

    return-void
.end method
