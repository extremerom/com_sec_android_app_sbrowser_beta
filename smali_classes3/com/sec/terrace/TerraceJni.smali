.class Lcom/sec/terrace/TerraceJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/Terrace$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/sec/terrace/Terrace$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/TerraceJni;

    invoke-direct {v0}, Lcom/sec/terrace/TerraceJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applySettings(JLcom/sec/terrace/Terrace;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MBGEqMX8(JLjava/lang/Object;)V

    return-void
.end method

.method public applyVirtualCard(JLcom/sec/terrace/Terrace;Z)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->M6Q2FrCj(JLjava/lang/Object;Z)V

    return-void
.end method

.method public destroy(JLcom/sec/terrace/Terrace;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MzmAOQoK(JLjava/lang/Object;)V

    return-void
.end method

.method public disableDefaultFontSize(JLcom/sec/terrace/Terrace;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MTt$Wl5K(JLjava/lang/Object;)V

    return-void
.end method

.method public evaluateJavaScript(JLcom/sec/terrace/Terrace;Ljava/lang/String;Lcom/sec/terrace/TerraceJavaScriptCallback;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->M$uC8isX(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public getAddedEntryCount(JLcom/sec/terrace/Terrace;)I
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MoZNaXZy(JLjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getContentBitmapAsync(JLcom/sec/terrace/Terrace;IILorg/chromium/base/Callback;)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MFDg2D9j(JLjava/lang/Object;IILjava/lang/Object;)V

    return-void
.end method

.method public getContentsMimeType(JLcom/sec/terrace/Terrace;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M364AOhG(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getContextMenuImageElementBounds(JLcom/sec/terrace/Terrace;Lorg/chromium/base/Callback;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->M2yTMzm_(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public getDefaultFontSize(JLcom/sec/terrace/Terrace;)I
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MhniFFUZ(JLjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getLastSentThemeColor(JLcom/sec/terrace/Terrace;)I
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->Mp0eEKxQ(JLjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getNativeWebContents(JLcom/sec/terrace/Terrace;)J
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MGT_69V9(JLjava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getSanitizedUrlString(JLcom/sec/terrace/Terrace;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MijvCUvR(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getTerraceInfoBarService(JLcom/sec/terrace/Terrace;)Lcom/sec/terrace/browser/infobars/TerraceInfoBarService;
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MolEaQSF(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/infobars/TerraceInfoBarService;

    return-object p0
.end method

.method public getTotalBlockedTrackerRequestCount(JLcom/sec/terrace/Terrace;)I
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MEzH6HTk(JLjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getUserAgentOverride(JLcom/sec/terrace/Terrace;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MB_e5K3J(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getVirtualCardPreview(JLcom/sec/terrace/Terrace;)Lcom/sec/terrace/browser/autofill/TerraceAutofillVirtualCardShowTips;
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MwwA4wb3(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/autofill/TerraceAutofillVirtualCardShowTips;

    return-object p0
.end method

.method public getZoomPercent(JLcom/sec/terrace/Terrace;)I
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MrPCBt6V(JLjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isDraggingOverInputField(JLcom/sec/terrace/Terrace;)Z
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->ModYo8Re(JLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isJavaScriptEnabled(JLcom/sec/terrace/Terrace;)Z
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->Mo$9EX0q(JLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isSslCertificateValid(JLcom/sec/terrace/Terrace;)Z
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MKLwd6kP(JLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public loadDataWithBaseURL(JLcom/sec/terrace/Terrace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MFC5IwGH(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public loadURL(JLcom/sec/terrace/Terrace;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZZZLorg/chromium/url/Origin;)V
    .locals 0

    invoke-static/range {p1 .. p12}, LJ/N;->MA$BtPlz(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;IZZZLjava/lang/Object;)V

    return-void
.end method

.method public onContextMenuDownload(JLcom/sec/terrace/Terrace;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MFMFdNd9(JLjava/lang/Object;Ljava/lang/Object;Z)V

    return-void
.end method

.method public onProcessImageTranslation(JLcom/sec/terrace/Terrace;JLjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static/range {p1 .. p8}, LJ/N;->MIgV_TOF(JLjava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onSubframeAsyncActionTaken(JLcom/sec/terrace/Terrace;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->Mf$BkovQ(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public reloadOriginalRequestUrl(JLcom/sec/terrace/Terrace;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MTrP2YQv(JLjava/lang/Object;)V

    return-void
.end method

.method public resetHoverCursor(JLcom/sec/terrace/Terrace;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MGMdegno(JLjava/lang/Object;)V

    return-void
.end method

.method public restoreWebState(JLcom/sec/terrace/Terrace;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MBakRa9$(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public retrieveWebState(JLcom/sec/terrace/Terrace;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MCv5bEG8(JLjava/lang/Object;)V

    return-void
.end method

.method public retrieveWebStateSynchronous(JLcom/sec/terrace/Terrace;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MSSGAm7P(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public setBackgroundPlayAllowed(JLcom/sec/terrace/Terrace;Z)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MeUjZ6J$(JLjava/lang/Object;Z)V

    return-void
.end method

.method public setContextMenuPopulator(JLcom/sec/terrace/Terrace;Lcom/sec/terrace/TerraceContextMenuPopulator;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MSdUFAAx(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setCustomUserAgent(JLcom/sec/terrace/Terrace;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MteQuobB(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setDefaultFontSize(JLcom/sec/terrace/Terrace;I)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->Mj4AlmNN(JLjava/lang/Object;I)V

    return-void
.end method

.method public setDisplayID(JLcom/sec/terrace/Terrace;I)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MIbwm2gb(JLjava/lang/Object;I)V

    return-void
.end method

.method public setInterceptNavigationDelegate(JLcom/sec/terrace/Terrace;Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MRNqzlCn(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setJavaScriptEnabled(JLcom/sec/terrace/Terrace;Z)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MlcoaPWf(JLjava/lang/Object;Z)V

    return-void
.end method

.method public setLastSentThemeColor(JLcom/sec/terrace/Terrace;I)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MK7UDDNM(JLjava/lang/Object;I)V

    return-void
.end method

.method public setTabID(JLcom/sec/terrace/Terrace;I)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MpSRcFJi(JLjava/lang/Object;I)V

    return-void
.end method

.method public setWindowAndroid(JLcom/sec/terrace/Terrace;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MPpOrW7a(JLjava/lang/Object;)V

    return-void
.end method

.method public setZoomControllerForTest(JLcom/sec/terrace/Terrace;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->Mr0gtraA_ForTesting(JLjava/lang/Object;)V

    return-void
.end method

.method public setZoomValue(JLcom/sec/terrace/Terrace;D)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MSDCkBVw(JLjava/lang/Object;D)V

    return-void
.end method
