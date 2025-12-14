.class interface abstract Lcom/sec/terrace/Terrace$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/Terrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract applySettings(JLcom/sec/terrace/Terrace;)V
.end method

.method public abstract applyVirtualCard(JLcom/sec/terrace/Terrace;Z)V
.end method

.method public abstract destroy(JLcom/sec/terrace/Terrace;)V
.end method

.method public abstract disableDefaultFontSize(JLcom/sec/terrace/Terrace;)V
.end method

.method public abstract evaluateJavaScript(JLcom/sec/terrace/Terrace;Ljava/lang/String;Lcom/sec/terrace/TerraceJavaScriptCallback;)V
.end method

.method public abstract getAddedEntryCount(JLcom/sec/terrace/Terrace;)I
.end method

.method public abstract getContentBitmapAsync(JLcom/sec/terrace/Terrace;IILorg/chromium/base/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/sec/terrace/Terrace;",
            "II",
            "Lorg/chromium/base/Callback<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getContentsMimeType(JLcom/sec/terrace/Terrace;)Ljava/lang/String;
.end method

.method public abstract getContextMenuImageElementBounds(JLcom/sec/terrace/Terrace;Lorg/chromium/base/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/sec/terrace/Terrace;",
            "Lorg/chromium/base/Callback<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getDefaultFontSize(JLcom/sec/terrace/Terrace;)I
.end method

.method public abstract getLastSentThemeColor(JLcom/sec/terrace/Terrace;)I
.end method

.method public abstract getNativeWebContents(JLcom/sec/terrace/Terrace;)J
.end method

.method public abstract getSanitizedUrlString(JLcom/sec/terrace/Terrace;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getTerraceInfoBarService(JLcom/sec/terrace/Terrace;)Lcom/sec/terrace/browser/infobars/TerraceInfoBarService;
.end method

.method public abstract getTotalBlockedTrackerRequestCount(JLcom/sec/terrace/Terrace;)I
.end method

.method public abstract getUserAgentOverride(JLcom/sec/terrace/Terrace;)Ljava/lang/String;
.end method

.method public abstract getVirtualCardPreview(JLcom/sec/terrace/Terrace;)Lcom/sec/terrace/browser/autofill/TerraceAutofillVirtualCardShowTips;
.end method

.method public abstract getZoomPercent(JLcom/sec/terrace/Terrace;)I
.end method

.method public abstract isDraggingOverInputField(JLcom/sec/terrace/Terrace;)Z
.end method

.method public abstract isJavaScriptEnabled(JLcom/sec/terrace/Terrace;)Z
.end method

.method public abstract isSslCertificateValid(JLcom/sec/terrace/Terrace;)Z
.end method

.method public abstract loadDataWithBaseURL(JLcom/sec/terrace/Terrace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract loadURL(JLcom/sec/terrace/Terrace;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZZZLorg/chromium/url/Origin;)V
    .param p12    # Lorg/chromium/url/Origin;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onContextMenuDownload(JLcom/sec/terrace/Terrace;Ljava/lang/String;Z)V
.end method

.method public abstract onProcessImageTranslation(JLcom/sec/terrace/Terrace;JLjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method public abstract onSubframeAsyncActionTaken(JLcom/sec/terrace/Terrace;Ljava/lang/String;)V
.end method

.method public abstract reloadOriginalRequestUrl(JLcom/sec/terrace/Terrace;)V
.end method

.method public abstract resetHoverCursor(JLcom/sec/terrace/Terrace;)V
.end method

.method public abstract restoreWebState(JLcom/sec/terrace/Terrace;Ljava/lang/String;)V
.end method

.method public abstract retrieveWebState(JLcom/sec/terrace/Terrace;)V
.end method

.method public abstract retrieveWebStateSynchronous(JLcom/sec/terrace/Terrace;)Ljava/lang/String;
.end method

.method public abstract setBackgroundPlayAllowed(JLcom/sec/terrace/Terrace;Z)V
.end method

.method public abstract setContextMenuPopulator(JLcom/sec/terrace/Terrace;Lcom/sec/terrace/TerraceContextMenuPopulator;)V
.end method

.method public abstract setCustomUserAgent(JLcom/sec/terrace/Terrace;Ljava/lang/String;)V
.end method

.method public abstract setDefaultFontSize(JLcom/sec/terrace/Terrace;I)V
.end method

.method public abstract setDisplayID(JLcom/sec/terrace/Terrace;I)V
.end method

.method public abstract setInterceptNavigationDelegate(JLcom/sec/terrace/Terrace;Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;)V
.end method

.method public abstract setJavaScriptEnabled(JLcom/sec/terrace/Terrace;Z)V
.end method

.method public abstract setLastSentThemeColor(JLcom/sec/terrace/Terrace;I)V
.end method

.method public abstract setTabID(JLcom/sec/terrace/Terrace;I)V
.end method

.method public abstract setWindowAndroid(JLcom/sec/terrace/Terrace;)V
.end method

.method public abstract setZoomControllerForTest(JLcom/sec/terrace/Terrace;)V
.end method

.method public abstract setZoomValue(JLcom/sec/terrace/Terrace;D)V
.end method
