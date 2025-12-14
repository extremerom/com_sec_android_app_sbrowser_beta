.class public Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuBarcodeDetectionHelper;
.super Lcom/sec/android/app/sbrowser/context_menu/features/BaseContextMenuItemHelper;
.source "SourceFile"


# instance fields
.field private mIsBarcodeDetectionSelected:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab/Tab;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/tab/Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/context_menu/features/BaseContextMenuItemHelper;-><init>(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    return-void
.end method

.method private isNeedToClearBarcodeDetectionInfo()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuBarcodeDetectionHelper;->mIsBarcodeDetectionSelected:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public clearBarcodeInfo()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/features/BaseContextMenuItemHelper;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getBarcodeDetectionHandler()Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuBarcodeDetectionHelper;->isNeedToClearBarcodeDetectionInfo()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "ContextMenuBarcodeDetectionHelper"

    const-string v1, "[clearBarcodeInfo] Remove Barcode info"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getBarcodeDetectionHandler()Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->removeBarcodeInfo()V

    :cond_1
    :goto_0
    return-void
.end method

.method public initialize()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuBarcodeDetectionHelper;->mIsBarcodeDetectionSelected:Z

    return-void
.end method

.method public launchBarcodeIntent()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/features/BaseContextMenuItemHelper;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getBarcodeDetectionHandler()Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getBarcodeDetectionHandler()Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->getBarcodeType()Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;->ESIM:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/context_menu/util/ContextMenuSALogging;->sendEventLogForSelectAddEsim(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getBarcodeDetectionHandler()Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->getBarcodeType()Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;->BOARDINGPASS:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    if-ne v0, v1, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/context_menu/util/ContextMenuSALogging;->sendEventLogForSelectAddBoardingPassToWallet(Landroid/content/Context;)V

    :cond_1
    :goto_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getBarcodeDetectionHandler()Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->launchBarcodeIntent()V

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public onReadyToDetectBarcode()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuBarcodeDetectionHelper;->mIsBarcodeDetectionSelected:Z

    return-void
.end method
