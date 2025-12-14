.class public Lorg/chromium/content/browser/webcontents/WebContentsImplJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/content/browser/webcontents/WebContentsImpl$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;

    invoke-direct {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImplJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public adjustSelectionByCharacterOffset(JIIZ)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MjgOFo_o(JIIZ)V

    return-void
.end method

.method public collapseSelection(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MDK_KK0z(J)V

    return-void
.end method

.method public copy(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MpfMxfut(J)V

    return-void
.end method

.method public cut(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MhIiCaN7(J)V

    return-void
.end method

.method public downloadImage(JLorg/chromium/url/GURL;ZIZLorg/chromium/content_public/browser/ImageDownloadCallback;)I
    .locals 0

    invoke-static/range {p1 .. p7}, LJ/N;->Mi3V1mlO(JLjava/lang/Object;ZIZLjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public evaluateJavaScript(JLjava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->M0uS2SDH(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public evaluateJavaScriptForTests(JLjava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MPoHZQTR_ForTesting(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public exitFullscreen(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->M6c69Eq5(J)V

    return-void
.end method

.method public fromNativePtr(J)Lorg/chromium/content_public/browser/WebContents;
    .locals 0

    invoke-static {p1, p2}, LJ/N;->M$eaBDjM(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/content_public/browser/WebContents;

    return-object p0
.end method

.method public getFullscreenVideoSize(J)Landroid/graphics/Rect;
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MN9JdEk5(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method

.method public getLastCommittedURL(J)Lorg/chromium/url/GURL;
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MrqMRJsG(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/url/GURL;

    return-object p0
.end method

.method public getMainFrame(J)Lorg/chromium/content_public/browser/RenderFrameHost;
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MjidYpBx(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/content_public/browser/RenderFrameHost;

    return-object p0
.end method

.method public getOrCreateEventForwarder(J)Lorg/chromium/ui/base/EventForwarder;
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MJJFrmZs(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/ui/base/EventForwarder;

    return-object p0
.end method

.method public getRenderWidgetHostView(J)Lorg/chromium/content/browser/RenderWidgetHostViewImpl;
    .locals 0

    invoke-static {p1, p2}, LJ/N;->Mj9slq6o(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/content/browser/RenderWidgetHostViewImpl;

    return-object p0
.end method

.method public getThemeColor(J)I
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MGZCJ6jO(J)I

    move-result p0

    return p0
.end method

.method public getTitle(J)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, LJ/N;->M7OgjMU8(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getTopLevelNativeWindow(J)Lorg/chromium/ui/base/WindowAndroid;
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MunY3e38(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/ui/base/WindowAndroid;

    return-object p0
.end method

.method public getVirtualKeyboardMode(J)I
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MHjza5Uz(J)I

    move-result p0

    return p0
.end method

.method public getVisibility(J)I
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MOzDgqoz(J)I

    move-result p0

    return p0
.end method

.method public getVisibleURL(J)Lorg/chromium/url/GURL;
    .locals 0

    invoke-static {p1, p2}, LJ/N;->M8927Uaf(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/url/GURL;

    return-object p0
.end method

.method public handleDirectPaste(JLorg/chromium/content/browser/webcontents/WebContentsImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MFNS0AXe(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public handleKeyLongPress(J)Z
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MC2JdFT6(J)Z

    move-result p0

    return p0
.end method

.method public hasActiveEffectivelyFullscreenVideo(J)Z
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MZao1OQG(J)Z

    move-result p0

    return p0
.end method

.method public isBeingDestroyed(J)Z
    .locals 0

    invoke-static {p1, p2}, LJ/N;->M5A4vDoy(J)Z

    move-result p0

    return p0
.end method

.method public isIncognito(J)Z
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MZbfAARG(J)Z

    move-result p0

    return p0
.end method

.method public isPictureInPictureAllowedForFullscreenVideo(J)Z
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MS0xMYL9(J)Z

    move-result p0

    return p0
.end method

.method public notifyRendererPreferenceUpdate(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->Mzsx8Sk2(J)V

    return-void
.end method

.method public onScaleFactorChanged(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MqhGkzSt(J)V

    return-void
.end method

.method public paste(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MYRJ_nNk(J)V

    return-void
.end method

.method public pasteAsPlainText(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MdSkKRWg(J)V

    return-void
.end method

.method public postMessageToMainFrame(JLorg/chromium/content_public/browser/MessagePayload;Ljava/lang/String;Ljava/lang/String;[Lorg/chromium/content_public/browser/MessagePort;)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MZFXk0el(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public replace(JLjava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MevqfbP8(JLjava/lang/Object;)V

    return-void
.end method

.method public requestAccessibilitySnapshot(JLandroid/view/ViewStructure;Lorg/chromium/content/browser/accessibility/ViewStructureBuilder;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->M16eLpU9(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public requestSmartClipExtract(JLorg/chromium/content/browser/webcontents/WebContentsImpl$SmartClipCallback;IIII)V
    .locals 0

    invoke-static/range {p1 .. p7}, LJ/N;->MHF1rPTW(JLjava/lang/Object;IIII)V

    return-void
.end method

.method public requestSmartClipImageExtract(JLorg/chromium/content/browser/webcontents/WebContentsImpl$SmartClipCallback;IIIIII)V
    .locals 0

    invoke-static/range {p1 .. p9}, LJ/N;->M2SXH_C7(JLjava/lang/Object;IIIIII)V

    return-void
.end method

.method public scrollFocusedEditableNodeIntoView(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MgbVQff0(J)V

    return-void
.end method

.method public selectAll(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MNvj1u1S(J)V

    return-void
.end method

.method public sendOrientationChangeEvent(JI)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MlztHl3v(JI)V

    return-void
.end method

.method public setFocus(JZ)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M9QxNoTJ(JZ)V

    return-void
.end method

.method public setHasPersistentVideo(JZ)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M12SiBFk(JZ)V

    return-void
.end method

.method public setImportance(JI)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MkBVGSRs(JI)V

    return-void
.end method

.method public setOverscrollRefreshHandler(JLorg/chromium/ui/OverscrollRefreshHandler;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MTTB8znA(JLjava/lang/Object;)V

    return-void
.end method

.method public setSize(JII)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->M7tTrJ_X(JII)V

    return-void
.end method

.method public setStylusHandwritingEnabled(JZ)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MbcpLoZf(JZ)V

    return-void
.end method

.method public setTopLevelNativeWindow(JLorg/chromium/ui/base/WindowAndroid;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MOKG_Wbb(JLjava/lang/Object;)V

    return-void
.end method

.method public setViewAndroidDelegate(JLorg/chromium/ui/base/ViewAndroidDelegate;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MgyWdCWB(JLjava/lang/Object;)V

    return-void
.end method

.method public stop(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->M$$25N5$(J)V

    return-void
.end method

.method public updateWebContentsVisibility(JI)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MGletlCv(JI)V

    return-void
.end method
