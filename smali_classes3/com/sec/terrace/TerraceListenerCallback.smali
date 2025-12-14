.class public interface abstract Lcom/sec/terrace/TerraceListenerCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceContentViewCallback;


# static fields
.field public static final EMPTY:Lcom/sec/terrace/TerraceListenerCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/terrace/TerraceListenerCallback$1;

    invoke-direct {v0}, Lcom/sec/terrace/TerraceListenerCallback$1;-><init>()V

    sput-object v0, Lcom/sec/terrace/TerraceListenerCallback;->EMPTY:Lcom/sec/terrace/TerraceListenerCallback;

    return-void
.end method


# virtual methods
.method public activateContents()V
    .locals 0

    return-void
.end method

.method public didAccessInitialDocument()V
    .locals 0

    return-void
.end method

.method public didChangeThemeColor(I)V
    .locals 0

    return-void
.end method

.method public didFailLoad(ZZILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public didFinishLoad(JLjava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public didFirstVisuallyNonEmptyPaint()V
    .locals 0

    return-void
.end method

.method public didNavigateMainFrame(Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 0

    return-void
.end method

.method public enableUiControl(IZ)V
    .locals 0

    return-void
.end method

.method public getDisplayMode()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isHoverScrollEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isInstalledWebappDelegateGeolocation()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public mediaSessionCreated()V
    .locals 0

    return-void
.end method

.method public onBottomOffsetsForFullscreenChanged(F)V
    .locals 0

    return-void
.end method

.method public onCloseContents()V
    .locals 0

    return-void
.end method

.method public onContentsZoomChange(Z)V
    .locals 0

    return-void
.end method

.method public onContextMenuImageElementBoundsReceived(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public onCreateAccountChooserDialog(Lcom/sec/terrace/TerraceActivity;Lcom/sec/terrace/browser/password_manager/TerraceAccountChooserDialogClient;)V
    .locals 0

    return-void
.end method

.method public onDidCommitProvisionalLoadForFrame(JZLjava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onDidFinishNavigation(ZZZ)V
    .locals 0

    return-void
.end method

.method public onDidRetrieveWebState(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDidStartProvisionalLoadForFrame(ZLjava/lang/String;ZZ)V
    .locals 0

    return-void
.end method

.method public onFaviconUpdated()V
    .locals 0

    return-void
.end method

.method public onFindResult(Lcom/sec/terrace/browser/findinpage/TerraceFindNotificationDetails;)V
    .locals 0

    return-void
.end method

.method public onFinishRestoringWebState(Z)V
    .locals 0

    return-void
.end method

.method public onImageResourceLoadComplete(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onLoadProgressChanged(D)V
    .locals 0

    return-void
.end method

.method public onLoadUrl()V
    .locals 0

    return-void
.end method

.method public onNavigationStateChangedUpdateTitle()V
    .locals 0

    return-void
.end method

.method public onNavigationStateChangedUpdateUrl()V
    .locals 0

    return-void
.end method

.method public onNumberOfBlockedElements(I)V
    .locals 0

    return-void
.end method

.method public onOffsetsForFullscreenChanged(FF)V
    .locals 0

    return-void
.end method

.method public onOpenNewTab(Ljava/lang/String;Ljava/lang/String;IZLcom/sec/terrace/TerraceOrigin;Z)V
    .locals 0

    return-void
.end method

.method public onPageSavedAs(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRecognizeArticleResult(Z)V
    .locals 0

    return-void
.end method

.method public onRenderFrameHostChanged()V
    .locals 0

    return-void
.end method

.method public onReportCrash(ZI)V
    .locals 0

    return-void
.end method

.method public onRequestDocumentDumpResult(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStartContentIntent(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onTakeFocus(Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onUpdateTargetUrl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUpdateTitle(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUpdateUrl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onWebApkFinishedInstalled(I)V
    .locals 0

    return-void
.end method

.method public onWebContentsCreated(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public prepareForExtractTextOnImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public primaryMainDocumentElementAvailable()V
    .locals 0

    return-void
.end method

.method public processTranslation(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Ljava/lang/String;Lcom/sec/terrace/content/common/TerraceImageTranslationRequestType;ZLcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public requestContext(Landroid/os/Bundle;Lcom/sec/terrace/TerraceRequestPageContextCallback;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/TerraceRequestPageContextCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p0, ""

    invoke-virtual {p2, p0, p1}, Lcom/sec/terrace/TerraceRequestPageContextCallback;->run(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public setIsLoading(Z)V
    .locals 0

    return-void
.end method

.method public setSPenHoverIcon(I)V
    .locals 0

    return-void
.end method

.method public shouldExemptFromTrackingProtection()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldPerformPullToRefresh()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public showAutoSigninPrompt(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showRepostFormWarningDialog()V
    .locals 0

    return-void
.end method

.method public showShareDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;)V
    .locals 0
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

    return-void
.end method

.method public supportPullToRefresh()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public surfaceCreated()V
    .locals 0

    return-void
.end method

.method public toggleFullscreenModeForTab(ZZ)V
    .locals 0

    return-void
.end method
