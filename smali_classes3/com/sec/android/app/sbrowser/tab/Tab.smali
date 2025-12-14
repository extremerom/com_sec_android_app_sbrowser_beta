.class public Lcom/sec/android/app/sbrowser/tab/Tab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceListenerCallback;
.implements Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$ClipboardCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/tab/Tab$Delegate;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCrashTabHandler:Lcom/sec/android/app/sbrowser/tab/CrashTabHandler;

.field private mDelegate:Lcom/sec/android/app/sbrowser/tab/Tab$Delegate;

.field private mId:I

.field private mIsRunningRequestDocumentForScanImage:Z

.field private mMediaAdapter:Lcom/sec/android/app/sbrowser/tab/MediaAdapter;

.field private mTabEventNotifier:Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;

.field private mTabLayout:Lcom/sec/android/app/sbrowser/tab/TabLayout;

.field private mTerrace:Lcom/sec/terrace/Terrace;

.field private mThemeColor:I

.field private mWebappInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/Terrace;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/android/app/sbrowser/tab/MediaAdapter;->EMPTY:Lcom/sec/android/app/sbrowser/tab/MediaAdapter;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mMediaAdapter:Lcom/sec/android/app/sbrowser/tab/MediaAdapter;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    sget-object p1, Lcom/sec/android/app/sbrowser/tab/Tab$Delegate;->EMPTY:Lcom/sec/android/app/sbrowser/tab/Tab$Delegate;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mDelegate:Lcom/sec/android/app/sbrowser/tab/Tab$Delegate;

    sget-object p1, Lcom/sec/android/app/sbrowser/tab/TabLayout;->EMPTY:Lcom/sec/android/app/sbrowser/tab/TabLayout;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTabLayout:Lcom/sec/android/app/sbrowser/tab/TabLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->initializeTabEventNotifier()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mId:I

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/tab/Tab;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/Tab;->lambda$onPaste$0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/tab/Tab;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/tab/Tab;)Lcom/sec/android/app/sbrowser/tab/TabLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTabLayout:Lcom/sec/android/app/sbrowser/tab/TabLayout;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/tab/Tab;)Lcom/sec/terrace/Terrace;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    return-object p0
.end method

.method private synthetic lambda$onPaste$0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    move-object p1, v1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, p2}, Lcom/sec/terrace/Terrace;->handleDirectPaste(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private setTerraceListenerCallback(Lcom/sec/terrace/TerraceListenerCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->useIntentBasedTerraceCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/tab/IntentBasedTerraceCallback;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/tab/IntentBasedTerraceCallback;-><init>(Lcom/sec/terrace/TerraceListenerCallback;)V

    move-object p1, v0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/Terrace;->setListenerCallback(Lcom/sec/terrace/TerraceListenerCallback;)V

    return-void
.end method


# virtual methods
.method public addCallbackForPlaybackStateChange(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mMediaAdapter:Lcom/sec/android/app/sbrowser/tab/MediaAdapter;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab/MediaAdapter;->addCallbackForPlaybackStateChange(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public addJavaScriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/Terrace;->addJavaScriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public addObserver(Lcom/sec/android/app/sbrowser/tab/TabObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTabEventNotifier:Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->addObserver(Lcom/sec/android/app/sbrowser/tab/TabObserver;)V

    return-void
.end method

.method public addShortcut()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->getOrCreateInstance()Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->addToHomescreen()V

    return-void
.end method

.method public addShortcut(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->getOrCreateInstance()Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/Terrace;->addToHomescreen(II)V

    return-void
.end method

.method public addToNote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/sec/android/app/sbrowser/utils/BrowserUtil;->addToNote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public applySettings()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->applySettings()V

    return-void
.end method

.method public canExtractText()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extract_text/ExtractTextHelper;->isExtractTextMenuSupported()Z

    move-result p0

    return p0
.end method

.method public canGoBack()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->canGoBack()Z

    move-result p0

    return p0
.end method

.method public canGoForward()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->canGoForward()Z

    move-result p0

    return p0
.end method

.method public clearBitmapData()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mDelegate:Lcom/sec/android/app/sbrowser/tab/Tab$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/Tab$Delegate;->clearBitmapData()V

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTabEventNotifier:Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->clear()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mMediaAdapter:Lcom/sec/android/app/sbrowser/tab/MediaAdapter;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab/MediaAdapter;->onTabClosed()V

    sget-object v0, Lcom/sec/android/app/sbrowser/tab/MediaAdapter;->EMPTY:Lcom/sec/android/app/sbrowser/tab/MediaAdapter;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mMediaAdapter:Lcom/sec/android/app/sbrowser/tab/MediaAdapter;

    return-void
.end method

.method public copy()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/knox/KnoxPolicy;->getClipboardDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getSelectedText()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$DataType;->TEXT:Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$DataType;

    invoke-static {v0, p0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->saveToClipboard(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$DataType;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->copy()V

    return-void
.end method

.method public cut()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/knox/KnoxPolicy;->getClipboardDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getSelectedText()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$DataType;->TEXT:Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$DataType;

    invoke-static {v0, p0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->saveToClipboard(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$DataType;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->cut()V

    return-void
.end method

.method public deactivate()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTabEventNotifier:Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->clear()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mMediaAdapter:Lcom/sec/android/app/sbrowser/tab/MediaAdapter;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab/MediaAdapter;->onTabClosed()V

    sget-object v0, Lcom/sec/android/app/sbrowser/tab/MediaAdapter;->EMPTY:Lcom/sec/android/app/sbrowser/tab/MediaAdapter;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mMediaAdapter:Lcom/sec/android/app/sbrowser/tab/MediaAdapter;

    return-void
.end method

.method public destroyCrashView()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mCrashTabHandler:Lcom/sec/android/app/sbrowser/tab/CrashTabHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/CrashTabHandler;->destroyCrashView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mCrashTabHandler:Lcom/sec/android/app/sbrowser/tab/CrashTabHandler;

    :cond_0
    return-void
.end method

.method public destroySelectActionMode()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->destroySelectActionMode()V

    return-void
.end method

.method public didChangeThemeColor(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "didChangeThemeColor, color = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tab"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->isValidThemeColor(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mThemeColor:I

    return-void
.end method

.method public didFinishLoad(JLjava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mMediaAdapter:Lcom/sec/android/app/sbrowser/tab/MediaAdapter;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/tab/MediaAdapter;->onLoadFinished(JLjava/lang/String;Z)V

    return-void
.end method

.method public didNavigateMainFrame(Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mMediaAdapter:Lcom/sec/android/app/sbrowser/tab/MediaAdapter;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/MediaAdapter;->hideVideoAssistant()V

    return-void
.end method

.method public disableDefaultFontSize()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->disableDefaultFontSize()V

    return-void
.end method

.method public enableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZLandroid/graphics/Bitmap;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/terrace/Terrace;->enableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZLandroid/graphics/Bitmap;)V

    return-void
.end method

.method public enableBlurEffectOnToolbar(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;IIIIIF)V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/sec/terrace/Terrace;->enableBlurEffectOnToolbar(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;IIIIIF)V

    return-void
.end method

.method public evaluateJavaScript(Ljava/lang/String;Lcom/sec/terrace/TerraceJavaScriptCallback;)V
    .locals 1
    .param p2    # Lcom/sec/terrace/TerraceJavaScriptCallback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/Terrace;->evaluateJavaScript(Ljava/lang/String;Lcom/sec/terrace/TerraceJavaScriptCallback;)V

    return-void
.end method

.method public exitFullscreen()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->exitFullscreen()V

    return-void
.end method

.method public extractArticle(Ljava/util/Map;Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionCallback;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-static {p0}, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController;->getForTerrace(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "Tab"

    const-string p1, "Error while running extractArticle(): TerraceReadabilityController is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController;->extractArticle(Ljava/util/Map;Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionCallback;)V

    return-void
.end method

.method public extractTextMenu()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mDelegate:Lcom/sec/android/app/sbrowser/tab/Tab$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/Tab$Delegate;->extractTextMenu()V

    return-void
.end method

.method public findOnPage(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->startFinding(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTabEventNotifier:Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->notifyFindOnPage(Ljava/lang/String;)V

    return-void
.end method

.method public getBitmapAsync(IIIILandroid/graphics/Bitmap$Config;Lcom/sec/terrace/Terrace$BitmapRequestCallback;I)V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p6, p0}, Lcom/sec/terrace/Terrace$BitmapRequestCallback;->onReceivedBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    new-instance v6, Lcom/sec/android/app/sbrowser/tab/BitmapQualityHandler;

    invoke-direct {v6, p6}, Lcom/sec/android/app/sbrowser/tab/BitmapQualityHandler;-><init>(Lcom/sec/terrace/Terrace$BitmapRequestCallback;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/sec/terrace/Terrace;->getBitmapAsync(IIIILandroid/graphics/Bitmap$Config;Lcom/sec/terrace/Terrace$BitmapRequestCallback;I)V

    return-void
.end method

.method public getBitmapFromCache(Ljava/lang/String;Lcom/sec/terrace/Terrace$BitmapRequestCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p2, p0}, Lcom/sec/terrace/Terrace$BitmapRequestCallback;->onReceivedBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/Terrace;->getBitmapFromCache(Ljava/lang/String;Lcom/sec/terrace/Terrace$BitmapRequestCallback;)V

    return-void
.end method

.method public getBottomControlsHeightYPix()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTabLayout:Lcom/sec/android/app/sbrowser/tab/TabLayout;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/TabLayout;->getVisibleBottomMargin()I

    move-result p0

    return p0
.end method

.method public getChildProcessUniqueId()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getChildProcessUniqueId()I

    move-result p0

    return p0
.end method

.method public getContentsMimeType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getContentsMimeType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContextMenuImage(Ljava/lang/String;Lcom/sec/terrace/Terrace$BitmapRequestCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p2, p0}, Lcom/sec/terrace/Terrace$BitmapRequestCallback;->onReceivedBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/Terrace;->getContextMenuImage(Ljava/lang/String;Lcom/sec/terrace/Terrace$BitmapRequestCallback;)V

    return-void
.end method

.method public getCurrentMediaPosition()J
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mMediaAdapter:Lcom/sec/android/app/sbrowser/tab/MediaAdapter;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/MediaAdapter;->getCurrentMediaPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultFontSize()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getDefaultFontSize()I

    move-result p0

    return p0
.end method

.method public getDirectedNavigationHistory(ZI)Lcom/sec/terrace/navigation_interception/TerraceNavigationHistory;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/Terrace;->getDirectedNavigationHistory(ZI)Lcom/sec/terrace/navigation_interception/TerraceNavigationHistory;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayMode()I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mId:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mWebappInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    if-nez p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->displayMode()I

    move-result p0

    return p0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mId:I

    return p0
.end method

.method public getImageBytes(Ljava/lang/String;Lcom/sec/terrace/Terrace$BitmapRequestCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p2, p0}, Lcom/sec/terrace/Terrace$BitmapRequestCallback;->onReceivedBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/Terrace;->getImageBytes(Ljava/lang/String;Lcom/sec/terrace/Terrace$BitmapRequestCallback;)V

    return-void
.end method

.method public getInnerText(Lcom/sec/terrace/Terrace$InnerTextCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/Terrace;->getInnerText(Lcom/sec/terrace/Terrace$InnerTextCallback;)V

    return-void
.end method

.method public getProgress()D
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getProgress()D

    move-result-wide v0

    return-wide v0
.end method

.method public getSecurityLevel()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-static {p0}, Lcom/sec/terrace/TerraceSecurityStateModel;->getSecurityLevelForWebContents(Lcom/sec/terrace/Terrace;)I

    move-result p0

    return p0
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getSelectedText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSemActionModeType()I
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/utils/BrowserUtil;->getSemActionModeType()I

    move-result p0

    return p0
.end method

.method public getTabLayout()Lcom/sec/android/app/sbrowser/tab/TabLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTabLayout:Lcom/sec/android/app/sbrowser/tab/TabLayout;

    return-object p0
.end method

.method public getTerrace()Lcom/sec/terrace/Terrace;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    return-object p0
.end method

.method public getThemeColor()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mThemeColor:I

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUseDesktopUserAgent()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getUseDesktopUserAgent()Z

    move-result p0

    return p0
.end method

.method public getView()Landroid/view/ViewGroup;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContainerView()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public getViewPortBitmapAsync(Lcom/sec/terrace/Terrace$BitmapRequestCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/Terrace;->getViewPortBitmapAsync(Lcom/sec/terrace/Terrace$BitmapRequestCallback;)V

    return-void
.end method

.method public getWasRenderProcessGone()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWasRenderProcessGone()Z

    move-result p0

    return p0
.end method

.method public goBack()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->goBack()Z

    move-result p0

    return p0
.end method

.method public goForward()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->goForward()Z

    move-result p0

    return p0
.end method

.method public goToNavigationIndex(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/Terrace;->goToNavigationIndex(I)V

    return-void
.end method

.method public hide()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->hide()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mMediaAdapter:Lcom/sec/android/app/sbrowser/tab/MediaAdapter;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab/MediaAdapter;->onTabHidden()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTabEventNotifier:Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->onHidden()V

    return-void
.end method

.method public hideClipboard()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->dismissClipboardDialog()V

    return-void
.end method

.method public hideVideoAssistant()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mMediaAdapter:Lcom/sec/android/app/sbrowser/tab/MediaAdapter;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/MediaAdapter;->hideVideoAssistant()V

    return-void
.end method

.method public initialize(Landroid/app/Activity;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/tab/Tab;->initialize(Landroid/app/Activity;ZI)V

    return-void
.end method

.method public initialize(Landroid/app/Activity;ZI)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mActivity:Landroid/app/Activity;

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p2, p1}, Lcom/sec/terrace/Terrace;->initializeWithContext(Landroid/content/Context;)Z

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTabEventNotifier:Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->setTerraceListenerCallback(Lcom/sec/terrace/TerraceListenerCallback;)V

    iput p3, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mId:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mMediaAdapter:Lcom/sec/android/app/sbrowser/tab/MediaAdapter;

    sget-object p2, Lcom/sec/android/app/sbrowser/tab/MediaAdapter;->EMPTY:Lcom/sec/android/app/sbrowser/tab/MediaAdapter;

    if-eq p1, p2, :cond_2

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab/MediaAdapter;->onTabClosed()V

    :cond_2
    new-instance p1, Lcom/sec/android/app/sbrowser/tab/MediaAdapterImpl;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mActivity:Landroid/app/Activity;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mId:I

    invoke-direct {p1, p2, p3, v0}, Lcom/sec/android/app/sbrowser/tab/MediaAdapterImpl;-><init>(Landroid/app/Activity;Lcom/sec/terrace/Terrace;I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mMediaAdapter:Lcom/sec/android/app/sbrowser/tab/MediaAdapter;

    return-void
.end method

.method public initializeTabEventNotifier()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTabEventNotifier:Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTabEventNotifier:Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;-><init>(Lcom/sec/terrace/TerraceListenerCallback;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTabEventNotifier:Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;

    return-void
.end method

.method public installWebApp()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    const/4 v0, 0x5

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/sec/terrace/Terrace;->addToHomescreen(II)V

    return-void
.end method

.method public isClosed()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isContentScrolledToTop()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getScrollOffsetY()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isCrashed()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mCrashTabHandler:Lcom/sec/android/app/sbrowser/tab/CrashTabHandler;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDraggingOverInputField()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->isDraggingOverInputField()Z

    move-result p0

    return p0
.end method

.method public isExtensionSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mDelegate:Lcom/sec/android/app/sbrowser/tab/Tab$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/Tab$Delegate;->isExtensionSupported()Z

    move-result p0

    return p0
.end method

.method public isExtensionTerrace()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->isExtensionTerrace()Z

    move-result p0

    return p0
.end method

.method public isFullscreenForTabOrPending()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->isFullscreenForTabOrPending()Z

    move-result p0

    return p0
.end method

.method public isFullscreenVideoMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mMediaAdapter:Lcom/sec/android/app/sbrowser/tab/MediaAdapter;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/MediaAdapter;->isFullscreenVideoMode()Z

    move-result p0

    return p0
.end method

.method public isHoverScrollEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mDelegate:Lcom/sec/android/app/sbrowser/tab/Tab$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab/Tab$Delegate;->isHoverScrollEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isHoverScrollEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->isFullscreenForTabOrPending()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isHoverScrolling()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->isHoverScrolling()Z

    move-result p0

    return p0
.end method

.method public isIncognito()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->isIncognito()Z

    move-result p0

    return p0
.end method

.method public isInitialNavigation()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->isInitialNavigation()Z

    move-result p0

    return p0
.end method

.method public isInstalledWebappDelegateGeolocation()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mActivity:Landroid/app/Activity;

    instance-of v1, v0, Lcom/sec/terrace/browser/customtabs/TerraceCustomTabActivityDelegate;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sec/terrace/browser/customtabs/TerraceCustomTabActivityDelegate;

    invoke-interface {v0}, Lcom/sec/terrace/browser/customtabs/TerraceCustomTabActivityDelegate;->isInTwaMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mActivity:Landroid/app/Activity;

    check-cast p0, Lcom/sec/terrace/browser/customtabs/TerraceCustomTabActivityDelegate;

    invoke-interface {p0}, Lcom/sec/terrace/browser/customtabs/TerraceCustomTabActivityDelegate;->getTwaPackage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionManager;->hasAndroidLocationPermission(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public isPdfWritingInProgress()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/terrace/browser/printing/TerracePrintingController;->getInstance(Landroid/content/Context;)Lcom/sec/terrace/browser/printing/TerracePrintingController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/printing/TerracePrintingController;->isPdfWritingInProgress()Z

    move-result p0

    return p0
.end method

.method public isReadAloudToolbarShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTabLayout:Lcom/sec/android/app/sbrowser/tab/TabLayout;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/TabLayout;->isReadAloudToolbarShowing()Z

    move-result p0

    return p0
.end method

.method public isReadArticleAloudToolbarShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTabLayout:Lcom/sec/android/app/sbrowser/tab/TabLayout;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/TabLayout;->isReadArticleAloudToolbarShowing()Z

    move-result p0

    return p0
.end method

.method public isReadyToShow()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->isReadyToShow()Z

    move-result p0

    return p0
.end method

.method public isSelectionEditable()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->isFocusedNodeEditable()Z

    move-result p0

    return p0
.end method

.method public isSelectionPassword()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->isSelectionPassword()Z

    move-result p0

    return p0
.end method

.method public isSummarizedViewShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTabLayout:Lcom/sec/android/app/sbrowser/tab/TabLayout;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/TabLayout;->isSummarizedViewShowing()Z

    move-result p0

    return p0
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/terrace/Terrace;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/Terrace;->loadUrl(Lcom/sec/terrace/browser/TerraceLoadUrlParams;)V

    return-void
.end method

.method public mediaSessionCreated()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mMediaAdapter:Lcom/sec/android/app/sbrowser/tab/MediaAdapter;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/MediaAdapter;->setupMediaSessionObserver()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isFullscreenForTabOrPending()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Tab"

    const-string v1, "Fullscreen mode now, exit fullscreen."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isFullscreenVideoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mMediaAdapter:Lcom/sec/android/app/sbrowser/tab/MediaAdapter;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/MediaAdapter;->handleOnBackPressInVideoFullscreen()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->exitFullscreen()V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onCreateAccountChooserDialog(Lcom/sec/terrace/TerraceActivity;Lcom/sec/terrace/browser/password_manager/TerraceAccountChooserDialogClient;)V
    .locals 0

    new-instance p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;-><init>(Lcom/sec/terrace/TerraceActivity;Lcom/sec/terrace/browser/password_manager/TerraceAccountChooserDialogClient;)V

    return-void
.end method

.method public onDeviceStateChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mMediaAdapter:Lcom/sec/android/app/sbrowser/tab/MediaAdapter;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/MediaAdapter;->onDeviceStateChanged()V

    return-void
.end method

.method public onDidFinishNavigation(ZZZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mMediaAdapter:Lcom/sec/android/app/sbrowser/tab/MediaAdapter;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/MediaAdapter;->hideVideoAssistant()V

    return-void
.end method

.method public onFaviconUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mMediaAdapter:Lcom/sec/android/app/sbrowser/tab/MediaAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/tab/MediaAdapter;->onUpdateFavicon(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onMouseWheelScrollStarted()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->hideVideoAssistant()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mMediaAdapter:Lcom/sec/android/app/sbrowser/tab/MediaAdapter;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab/MediaAdapter;->onMultiWindowModeChanged(Z)V

    return-void
.end method

.method public onNumberOfBlockedElements(I)V
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    const-string v1, "Tab"

    if-eqz v0, :cond_0

    const-string p0, "onNumberOfBlockedElements, terrace is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->getNativeWebContents()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;

    move-result-object v0

    invoke-virtual {v0, v2, v3, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->putNumberOfBlockedElements(JI)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "onNumberOfBlockedElements pid : "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getChildProcessUniqueId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " childId: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getChildProcessUniqueId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", tabContext : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", count : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPaste(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, LJ8/d;

    const/16 v2, 0x19

    invoke-direct {v1, p0, v2, p1, p2}, LJ8/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mMediaAdapter:Lcom/sec/android/app/sbrowser/tab/MediaAdapter;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab/MediaAdapter;->onPictureInPictureModeChanged(Z)V

    return-void
.end method

.method public onRequestDocumentDumpResult(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mIsRunningRequestDocumentForScanImage:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mIsRunningRequestDocumentForScanImage:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/save_image/ScanImageHelper;->getInstance()Lcom/sec/android/app/sbrowser/save_image/ScanImageHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/save_image/ScanImageHelper;->launchImageScan(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onScrollEnded(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mMediaAdapter:Lcom/sec/android/app/sbrowser/tab/MediaAdapter;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/MediaAdapter;->onScrollEnded(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mMediaAdapter:Lcom/sec/android/app/sbrowser/tab/MediaAdapter;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab/MediaAdapter;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onVideoAssistantEnabledChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mMediaAdapter:Lcom/sec/android/app/sbrowser/tab/MediaAdapter;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/MediaAdapter;->onVideoAssistantEnabledChanged()V

    return-void
.end method

.method public onWebContentsCreated(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mDelegate:Lcom/sec/android/app/sbrowser/tab/Tab$Delegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab/Tab$Delegate;->notifyWebContentsCreated(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public openInNewTab(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public openLink(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->reload()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->show()V

    new-instance v0, Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, v2}, Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0, v0}, Lcom/sec/terrace/Terrace;->loadUrl(Lcom/sec/terrace/browser/TerraceLoadUrlParams;)V

    :goto_0
    return-void
.end method

.method public paste()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->paste()V

    return-void
.end method

.method public pause()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mMediaAdapter:Lcom/sec/android/app/sbrowser/tab/MediaAdapter;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/MediaAdapter;->pause()V

    return-void
.end method

.method public play()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mMediaAdapter:Lcom/sec/android/app/sbrowser/tab/MediaAdapter;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/MediaAdapter;->play()V

    return-void
.end method

.method public registerClipboardPasteListener()V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->registerClipboardPasteListener(Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$ClipboardCallback;)V

    return-void
.end method

.method public reload()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->reload()V

    return-void
.end method

.method public reloadOriginalRequestUrl()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->reloadOriginalRequestUrl()V

    return-void
.end method

.method public removeCallbackForPlaybackStateChange()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mMediaAdapter:Lcom/sec/android/app/sbrowser/tab/MediaAdapter;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/MediaAdapter;->removeCallbackForPlaybackStateChange()V

    return-void
.end method

.method public removeJavaScriptInterface(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/Terrace;->removeJavaScriptInterface(Ljava/lang/String;)V

    return-void
.end method

.method public removeObserver(Lcom/sec/android/app/sbrowser/tab/TabObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTabEventNotifier:Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->removeObserver(Lcom/sec/android/app/sbrowser/tab/TabObserver;)V

    return-void
.end method

.method public requestFocus()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->requestFocus()V

    return-void
.end method

.method public requestNumberOfBlockedElements()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->requestNumberOfBlockedElements()V

    return-void
.end method

.method public resetPrint()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/terrace/browser/printing/TerracePrintingController;->getInstance(Landroid/content/Context;)Lcom/sec/terrace/browser/printing/TerracePrintingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/printing/TerracePrintingController;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/terrace/browser/printing/TerracePrintingController;->getInstance(Landroid/content/Context;)Lcom/sec/terrace/browser/printing/TerracePrintingController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/printing/TerracePrintingController;->reset()V

    :cond_0
    return-void
.end method

.method public retrieveWebState()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->retrieveWebState()V

    return-void
.end method

.method public runHapticFeedbackEffect(I)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->runHapticFeedbackEffect(I)V

    return-void
.end method

.method public runHapticFeedbackEffectForPullToRefresh(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->runHapticFeedbackEffectForPullToRefresh(Landroid/view/View;)V

    return-void
.end method

.method public runScrollbarVibrate()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->runScrollbarvibrate()V

    return-void
.end method

.method public savePage()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->savePage()V

    return-void
.end method

.method public scanImages(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Tab"

    const-string v1, "scanImages :: url is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mIsRunningRequestDocumentForScanImage:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/save_image/ScanImageHelper;->getInstance()Lcom/sec/android/app/sbrowser/save_image/ScanImageHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/app/sbrowser/tab/Tab$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/tab/Tab$2;-><init>(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    invoke-virtual {v0, v1, v2, p1}, Lcom/sec/android/app/sbrowser/save_image/ScanImageHelper;->scanImages(Landroid/content/Context;Lcom/sec/android/app/sbrowser/save_image/ScanImageHelper$TerraceDelegate;Ljava/lang/String;)V

    return-void
.end method

.method public seekTo(J)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mMediaAdapter:Lcom/sec/android/app/sbrowser/tab/MediaAdapter;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/MediaAdapter;->seekTo(J)V

    return-void
.end method

.method public selectAll()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->selectAll()V

    return-void
.end method

.method public selectText()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->selectLongPressedLink()V

    return-void
.end method

.method public setContextMenuPopulator(Lcom/sec/terrace/TerraceContextMenuPopulator;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/Terrace;->setContextMenuPopulator(Lcom/sec/terrace/TerraceContextMenuPopulator;)V

    return-void
.end method

.method public setCustomUserAgentIfNeeded(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeMulti()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFrontScreen()Z

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez p1, :cond_1

    if-nez v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, " Mobile"

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0, v2}, Lcom/sec/terrace/Terrace;->setCustomUserAgent(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isUserBinary()Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "setCustomUserAgentIfNeeded, Custom UA: "

    const-string p1, "Tab"

    invoke-static {p0, v2, p1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setDefaultFontSize(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/Terrace;->setDefaultFontSize(I)V

    return-void
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/tab/Tab$Delegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mDelegate:Lcom/sec/android/app/sbrowser/tab/Tab$Delegate;

    return-void
.end method

.method public setFindEnabled(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/Terrace;->setFindEnabled(Z)V

    return-void
.end method

.method public setImportance(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/Terrace;->setImportance(I)V

    return-void
.end method

.method public setInterceptNavigationDelegate(Lcom/sec/terrace/navigation_interception/TerraceInterceptNavigationDelegate;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/Terrace;->setInterceptNavigationDelegate(Lcom/sec/terrace/navigation_interception/TerraceInterceptNavigationDelegate;)V

    return-void
.end method

.method public setJavaScriptEnabled(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/Terrace;->setJavaScriptEnabled(Z)V

    return-void
.end method

.method public setKnoxPolicySupported(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/Terrace;->setKnoxPolicySupported(Z)V

    return-void
.end method

.method public setSPenHoverIcon(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSPenHoverIcon(Landroid/view/View;Landroid/content/Context;I)V

    return-void
.end method

.method public setSavePageDirectory(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/Terrace;->setSavePageDirectory(Ljava/lang/String;)V

    return-void
.end method

.method public setSplitViewSize(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/Terrace;->setSplitViewSize(II)V

    return-void
.end method

.method public setTabID(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/Terrace;->setTabID(I)V

    return-void
.end method

.method public setTabLayout(Lcom/sec/android/app/sbrowser/tab/TabLayout;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lcom/sec/android/app/sbrowser/tab/TabLayout;->EMPTY:Lcom/sec/android/app/sbrowser/tab/TabLayout;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTabLayout:Lcom/sec/android/app/sbrowser/tab/TabLayout;

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTabLayout:Lcom/sec/android/app/sbrowser/tab/TabLayout;

    return-void
.end method

.method public setThemeColor(IZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mThemeColor:I

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/Terrace;->setLastSentThemeColor(I)V

    :cond_1
    return-void
.end method

.method public setTopControlsHeight(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/Terrace;->setTopControlsHeight(II)V

    return-void
.end method

.method public setTopControlsHeight(IIZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/terrace/Terrace;->setTopControlsHeight(IIZ)V

    return-void
.end method

.method public setUseDesktopUserAgent(ZZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->setCustomUserAgentIfNeeded(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/Terrace;->setUseDesktopUserAgent(ZZ)V

    return-void
.end method

.method public setVideoAssistantActivated(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mMediaAdapter:Lcom/sec/android/app/sbrowser/tab/MediaAdapter;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab/MediaAdapter;->setVideoAssistantActivated(Z)V

    return-void
.end method

.method public setWebContentsXOffset(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/Terrace;->setWebContentsXOffset(I)V

    return-void
.end method

.method public setWebappInfo(Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mWebappInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    return-void
.end method

.method public setZoomValue(D)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/Terrace;->setZoomValue(D)V

    return-void
.end method

.method public shouldAllowAddToNote()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/utils/BrowserUtil;->doesSupportAddToNote()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mDelegate:Lcom/sec/android/app/sbrowser/tab/Tab$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/Tab$Delegate;->isMainViewTab()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shouldExemptFromTrackingProtection()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mDelegate:Lcom/sec/android/app/sbrowser/tab/Tab$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/Tab$Delegate;->shouldExemptFromTrackingProtection()Z

    move-result p0

    return p0
.end method

.method public shouldPerformPullToRefresh()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mDelegate:Lcom/sec/android/app/sbrowser/tab/Tab$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/Tab$Delegate;->shouldPerformPullToRefresh()Z

    move-result p0

    return p0
.end method

.method public show()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->show()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mMediaAdapter:Lcom/sec/android/app/sbrowser/tab/MediaAdapter;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/MediaAdapter;->onTabShown()V

    return-void
.end method

.method public showAutoSigninPrompt(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1400f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {p0, p1, v0, v0}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    return-void
.end method

.method public showClipboard()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->showClipboardDialog(Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$ClipboardCallback;Landroid/view/View;)V

    return-void
.end method

.method public showCrashView()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mCrashTabHandler:Lcom/sec/android/app/sbrowser/tab/CrashTabHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/tab/CrashTabHandler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/app/sbrowser/tab/Tab$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/tab/Tab$1;-><init>(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/tab/CrashTabHandler;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/tab/CrashTabDelegate;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mCrashTabHandler:Lcom/sec/android/app/sbrowser/tab/CrashTabHandler;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mCrashTabHandler:Lcom/sec/android/app/sbrowser/tab/CrashTabHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/CrashTabHandler;->showCrashView()V

    return-void
.end method

.method public showRepostFormWarningDialog()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/tab/RepostFormWarningDialog;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/tab/RepostFormWarningDialog;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/tab/Tab$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/tab/Tab$3;-><init>(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab/RepostFormWarningDialog;->setListener(Lcom/sec/android/app/sbrowser/tab/RepostFormWarningDialog$Listener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mActivity:Landroid/app/Activity;

    check-cast p0, Landroidx/fragment/app/J;

    invoke-virtual {p0}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/sbrowser/tab/RepostFormWarningDialog;->show(Landroidx/fragment/app/f0;Ljava/lang/String;)V

    return-void
.end method

.method public showShareDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mActivity:Landroid/app/Activity;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/utils/ShareHelper;->showShareDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;)V

    return-void
.end method

.method public showTabGroupList(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public startContextMenuDownload(Ljava/lang/String;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/Terrace;->startContextMenuDownload(Ljava/lang/String;Z)V

    return-void
.end method

.method public startFinding(Ljava/lang/String;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/terrace/Terrace;->startFinding(Ljava/lang/String;ZZ)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mMediaAdapter:Lcom/sec/android/app/sbrowser/tab/MediaAdapter;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/MediaAdapter;->onStartFinding()V

    return-void
.end method

.method public startPrint()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/terrace/browser/printing/TerracePrintingController;->getInstance(Landroid/content/Context;)Lcom/sec/terrace/browser/printing/TerracePrintingController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p0}, Lcom/sec/terrace/browser/printing/TerracePrintingController;->startPrint(Lcom/sec/terrace/Terrace;Landroid/content/Context;)V

    return-void
.end method

.method public stopFinding(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->stopFinding()V

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mMediaAdapter:Lcom/sec/android/app/sbrowser/tab/MediaAdapter;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/MediaAdapter;->onStopFinding()V

    :cond_1
    return-void
.end method

.method public stopLoading()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->stopLoading()V

    return-void
.end method

.method public stopMediaSession()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mMediaAdapter:Lcom/sec/android/app/sbrowser/tab/MediaAdapter;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/MediaAdapter;->stopMediaSession()V

    return-void
.end method

.method public supportPullToRefresh()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mDelegate:Lcom/sec/android/app/sbrowser/tab/Tab$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/Tab$Delegate;->supportPullToRefresh()Z

    move-result p0

    return p0
.end method

.method public toggleFullscreenModeForTab(ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mMediaAdapter:Lcom/sec/android/app/sbrowser/tab/MediaAdapter;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/MediaAdapter;->onToggleFullscreenModeForTab(ZZ)V

    return-void
.end method

.method public translate()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->translate()V

    return-void
.end method

.method public unregisterClipboardPasteListener()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->unregisterClipboardPasteListener()V

    return-void
.end method

.method public updateBrowserControlsState(IZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/Terrace;->updateBrowserControlsState(IZ)V

    return-void
.end method
