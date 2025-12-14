.class public Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mBarcodeDetectionHelper:Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuBarcodeDetectionHelper;

.field private final mEventListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/listener/context_menu/ContextMenuEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mExtractTextHelper:Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;

.field private mGridAreaDirection:I

.field private final mImageToolkitHelper:Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuImageToolkitHelper;

.field private final mObjectCaptureHelper:Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuObjectCaptureHelper;

.field private final mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

.field private final mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab/Tab;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/tab/Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/tab/Tab;",
            "Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/listener/context_menu/ContextMenuEventListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mGridAreaDirection:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mEventListenerList:Ljava/util/List;

    new-instance p2, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;

    invoke-direct {p2, p1}, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;-><init>(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mExtractTextHelper:Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;

    new-instance p2, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuImageToolkitHelper;

    invoke-direct {p2, p1}, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuImageToolkitHelper;-><init>(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mImageToolkitHelper:Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuImageToolkitHelper;

    new-instance p2, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuObjectCaptureHelper;

    invoke-direct {p2, p1}, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuObjectCaptureHelper;-><init>(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mObjectCaptureHelper:Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuObjectCaptureHelper;

    new-instance p2, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuBarcodeDetectionHelper;

    invoke-direct {p2, p1}, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuBarcodeDetectionHelper;-><init>(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mBarcodeDetectionHelper:Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuBarcodeDetectionHelper;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->lambda$installWebApk$2()V

    return-void
.end method

.method public static synthetic b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->lambda$openInNewWindow$1(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->lambda$openInOtherWindow$0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mGridAreaDirection:I

    return p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;)Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuImageToolkitHelper;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mImageToolkitHelper:Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuImageToolkitHelper;

    return-object p0
.end method

.method private synthetic lambda$installWebApk$2()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getPWAStatus()Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->setIsInstalling(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->installWebApp()V

    return-void
.end method

.method private static synthetic lambda$openInNewWindow$1(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->openInNewWindow(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$openInOtherWindow$0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->openInOtherWindow(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private sanitizeQuery(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-ge p0, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[sanitizeQuery] Truncating over-sized query ("

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ContextMenuItemHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u2026"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object p1
.end method


# virtual methods
.method public addBookMark(Landroid/content/Context;)Z
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p0, v0

    :cond_0
    check-cast p1, Landroid/app/Activity;

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$AddBookmarkAction;->LAUNCH_ADDBOOKMARK:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$AddBookmarkAction;

    invoke-static {p1, v0, p0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks;->bookmarkAction(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$AddBookmarkAction;)V

    const/4 p0, 0x1

    return p0
.end method

.method public addShortcut()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->addShortcut()V

    const/4 p0, 0x1

    return p0
.end method

.method public addToNote(Landroid/content/Context;Lcom/sec/terrace/TerraceContextMenuParams;)Z
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Lcom/sec/terrace/TerraceContextMenuParams;->getUrlForLinkToHighlight()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getSelectedText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sec/android/app/sbrowser/utils/BrowserUtil;->addToNote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/context_menu/util/ContextMenuSALogging;->sendEventLogForAddToNote(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method public clearDeepSkyInfo()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mExtractTextHelper:Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;->clearDeepSkyInfo()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mObjectCaptureHelper:Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuObjectCaptureHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuObjectCaptureHelper;->clearDeepSkyInfo()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mBarcodeDetectionHelper:Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuBarcodeDetectionHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuBarcodeDetectionHelper;->clearBarcodeInfo()V

    return-void
.end method

.method public copy()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->copy()V

    const/4 p0, 0x1

    return p0
.end method

.method public copyImage(Landroid/content/Context;Lcom/sec/terrace/TerraceContextMenuParams;)Z
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Lcom/sec/terrace/TerraceContextMenuParams;->getSrcUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->supportClipboardEx()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    new-instance v1, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler$2;-><init>(Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;Landroid/content/Context;)V

    invoke-virtual {v0, p2, v1}, Lcom/sec/android/app/sbrowser/tab/Tab;->getContextMenuImage(Ljava/lang/String;Lcom/sec/terrace/Terrace$BitmapRequestCallback;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    new-instance v1, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler$1;-><init>(Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;Landroid/content/Context;)V

    invoke-virtual {v0, p2, v1}, Lcom/sec/android/app/sbrowser/tab/Tab;->getImageBytes(Ljava/lang/String;Lcom/sec/terrace/Terrace$BitmapRequestCallback;)V

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public copyLink(Landroid/content/Context;Lcom/sec/terrace/TerraceContextMenuParams;)Z
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Lcom/sec/terrace/TerraceContextMenuParams;->getUnfilteredLinkUrl()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/terrace/Terrace;->getSanitizedUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$DataType;->TEXT:Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$DataType;

    invoke-static {p1, p0, p2}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->saveToClipboard(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$DataType;)V

    const/4 p0, 0x1

    return p0
.end method

.method public cut()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->cut()V

    const/4 p0, 0x1

    return p0
.end method

.method public dictionary(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->sanitizeQuery(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.PROCESS_TEXT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "text/plain"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.PROCESS_TEXT_READONLY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.PROCESS_TEXT"

    invoke-virtual {v0, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "ActivityNotFoundException : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "ContextMenuItemHandler"

    invoke-static {p0, p1, p2}, Landroidx/recyclerview/widget/P;->A(Landroid/content/ActivityNotFoundException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v1
.end method

.method public downloadAllImages(Lcom/sec/terrace/TerraceContextMenuParams;)Z
    .locals 2
    .param p1    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mEventListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/listener/context_menu/ContextMenuEventListener;

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->getSrcUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/listener/context_menu/ContextMenuEventListener;->onSaveAllImages(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public downloadImage(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->startContextMenuDownload(Ljava/lang/String;Z)V

    return v0
.end method

.method public find()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->findOnPage(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public goBackward()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->goBack()Z

    move-result p0

    return p0
.end method

.method public goForward()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->goForward()Z

    move-result p0

    return p0
.end method

.method public initialize()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mExtractTextHelper:Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;->initialize()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mImageToolkitHelper:Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuImageToolkitHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuImageToolkitHelper;->initialize()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mObjectCaptureHelper:Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuObjectCaptureHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuObjectCaptureHelper;->initialize()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mBarcodeDetectionHelper:Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuBarcodeDetectionHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuBarcodeDetectionHelper;->initialize()V

    return-void
.end method

.method public initializeLiveTextIfNeeded(Landroid/content/Context;Lcom/sec/terrace/TerraceContextMenuParams;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mExtractTextHelper:Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;->initializeLiveTextIfNeeded(Landroid/content/Context;Lcom/sec/terrace/TerraceContextMenuParams;)V

    return-void
.end method

.method public installWebApk(Landroid/content/Context;)Z
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, LG6/e;

    const/16 v1, 0x1c

    invoke-direct {v0, v1, p0}, LG6/e;-><init>(ILjava/lang/Object;)V

    const/4 p0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, p0, v1, v0}, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper;->showDialog(Landroid/content/Context;Landroid/view/View;ZLjava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public launchBarcodeIntent()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mBarcodeDetectionHelper:Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuBarcodeDetectionHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuBarcodeDetectionHelper;->launchBarcodeIntent()Z

    move-result p0

    return p0
.end method

.method public onReadyToClipSubject()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mObjectCaptureHelper:Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuObjectCaptureHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuObjectCaptureHelper;->onReadyToClipSubject()V

    return-void
.end method

.method public onReadyToDetectBarcode()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mBarcodeDetectionHelper:Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuBarcodeDetectionHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuBarcodeDetectionHelper;->onReadyToDetectBarcode()V

    return-void
.end method

.method public onReadyToExtractText()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mExtractTextHelper:Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;->onReadyToExtractText()V

    return-void
.end method

.method public openImage(Lcom/sec/terrace/TerraceContextMenuParams;)Z
    .locals 0
    .param p1    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->getSrcUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->openLink(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public openInBackground(Lcom/sec/terrace/TerraceContextMenuParams;)Z
    .locals 2
    .param p1    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->getReferrer()Lorg/chromium/content_public/common/Referrer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->getReferrer()Lorg/chromium/content_public/common/Referrer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content_public/common/Referrer;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->getLinkUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/tab/Tab;->openInNewTab(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1
.end method

.method public openInNewTab(Lcom/sec/terrace/TerraceContextMenuParams;)Z
    .locals 2
    .param p1    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->getReferrer()Lorg/chromium/content_public/common/Referrer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->getReferrer()Lorg/chromium/content_public/common/Referrer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content_public/common/Referrer;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->getLinkUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/tab/Tab;->openInNewTab(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public openInNewWindow(Landroid/content/Context;Lcom/sec/terrace/TerraceContextMenuParams;)Z
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Lcom/sec/terrace/TerraceContextMenuParams;->getLinkUrl()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/context_menu/b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/sec/android/app/sbrowser/context_menu/b;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const-wide/16 p0, 0xfa

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x1

    return p0
.end method

.method public openInOtherWindow(Landroid/content/Context;Lcom/sec/terrace/TerraceContextMenuParams;)Z
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Lcom/sec/terrace/TerraceContextMenuParams;->getLinkUrl()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/context_menu/b;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p0, v1}, Lcom/sec/android/app/sbrowser/context_menu/b;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const-wide/16 p0, 0xfa

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x1

    return p0
.end method

.method public openInSBrowser(Landroid/content/Context;Lcom/sec/terrace/TerraceContextMenuParams;I)Z
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    new-instance p0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct {p0, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v0, 0x7f0b0346

    if-ne p3, v0, :cond_0

    invoke-virtual {p2}, Lcom/sec/terrace/TerraceContextMenuParams;->getPageUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/sec/terrace/TerraceContextMenuParams;->getLinkUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "No related Activity Found : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "ContextMenuItemHandler"

    invoke-static {p0, p1, p2}, Landroidx/recyclerview/widget/P;->A(Landroid/content/ActivityNotFoundException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public openInSecretMode(Landroid/content/Context;Lcom/sec/terrace/TerraceContextMenuParams;)Z
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of p0, p1, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Lcom/sec/terrace/TerraceContextMenuParams;->getLinkUrl()Ljava/lang/String;

    move-result-object p0

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->getInstance(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->openInSecretMode(Landroid/app/Activity;Ljava/lang/String;)V

    return v0
.end method

.method public openInTabGroup(Lcom/sec/terrace/TerraceContextMenuParams;)Z
    .locals 3
    .param p1    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->getReferrer()Lorg/chromium/content_public/common/Referrer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->getReferrer()Lorg/chromium/content_public/common/Referrer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content_public/common/Referrer;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->getEventX()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->getEventY()I

    move-result v2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->getLinkUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/tab/Tab;->showTabGroupList(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 p0, 0x1

    return p0
.end method

.method public paste()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->paste()V

    const/4 p0, 0x1

    return p0
.end method

.method public print()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mEventListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/listener/context_menu/ContextMenuEventListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/listener/context_menu/ContextMenuEventListener;->onPrint()V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public refresh()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isOfflineMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mEventListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/listener/context_menu/ContextMenuEventListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/listener/context_menu/ContextMenuEventListener;->onRefresh()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->reload()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public saveLink(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/Tab;->startContextMenuDownload(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    move-object p0, p2

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f140803

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->make(Landroid/app/Activity;Ljava/lang/CharSequence;)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public saveVideoAs(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->startContextMenuDownload(Ljava/lang/String;Z)V

    return v0
.end method

.method public saveWebpage()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mEventListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/listener/context_menu/ContextMenuEventListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/listener/context_menu/ContextMenuEventListener;->onSaveWebPage()V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public selectAll()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->selectAll()V

    const/4 p0, 0x1

    return p0
.end method

.method public selectText()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->selectText()V

    const/4 p0, 0x1

    return p0
.end method

.method public setGridAreaDirection(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mGridAreaDirection:I

    return-void
.end method

.method public share(Landroid/content/Context;)Z
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isOfflineMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getOriginalUrl()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    new-instance v1, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;

    invoke-direct {v1, p1, v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;->setGridAreaDirectionForPopOver(I)Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;->build()Lcom/sec/android/app/sbrowser/common/utils/ShareParams;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/utils/ShareHelper;->showShareDialog(Lcom/sec/android/app/sbrowser/common/utils/ShareParams;)Z

    return v2
.end method

.method public shareImage(Landroid/content/Context;Lcom/sec/terrace/TerraceContextMenuParams;I)Z
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Lcom/sec/terrace/TerraceContextMenuParams;->getImageWidth()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_2

    invoke-virtual {p2}, Lcom/sec/terrace/TerraceContextMenuParams;->getImageHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/sec/terrace/TerraceContextMenuParams;->getSrcUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    new-instance v2, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler$4;

    invoke-direct {v2, p0, p1, p3}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler$4;-><init>(Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;Landroid/content/Context;I)V

    invoke-virtual {v0, p2, v2}, Lcom/sec/android/app/sbrowser/tab/Tab;->getImageBytes(Ljava/lang/String;Lcom/sec/terrace/Terrace$BitmapRequestCallback;)V

    return v1

    :cond_2
    :goto_0
    const-string p0, "ContextMenuItemHandler"

    const-string p1, "[shareImage] Image width or height is not valid."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public shareLink(Landroid/content/Context;Lcom/sec/terrace/TerraceContextMenuParams;)Z
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/terrace/TerraceContextMenuParams;->getLinkUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sec/terrace/Terrace;->getSanitizedUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, p2}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mGridAreaDirection:I

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;->setGridAreaDirectionForPopOver(I)Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;->build()Lcom/sec/android/app/sbrowser/common/utils/ShareParams;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/utils/ShareHelper;->showShareDialog(Lcom/sec/android/app/sbrowser/common/utils/ShareParams;)Z

    return v1
.end method

.method public shareSelection(Landroid/content/Context;)Z
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    const v1, 0x186a0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->sanitizeQuery(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, p0}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;->setGridAreaDirectionForPopOver(I)Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;->build()Lcom/sec/android/app/sbrowser/common/utils/ShareParams;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/utils/ShareHelper;->showShareDialog(Lcom/sec/android/app/sbrowser/common/utils/ShareParams;)Z

    return v1
.end method

.method public showClipboard()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->showClipboard()V

    const/4 p0, 0x1

    return p0
.end method

.method public startExtractText(Landroid/content/Context;)Z
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mExtractTextHelper:Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;->startExtractText(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public startImageToolkit(Landroid/content/Context;Lcom/sec/terrace/TerraceContextMenuParams;IFF)Z
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Lcom/sec/terrace/TerraceContextMenuParams;->getImageWidth()I

    move-result p3

    const/4 v0, 0x1

    if-lez p3, :cond_2

    invoke-virtual {p2}, Lcom/sec/terrace/TerraceContextMenuParams;->getImageHeight()I

    move-result p3

    if-gtz p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/sec/terrace/TerraceContextMenuParams;->getSrcUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    return v0

    :cond_1
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    new-instance v1, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler$3;

    invoke-direct {v1, p0, p1, p4, p5}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler$3;-><init>(Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;Landroid/content/Context;FF)V

    invoke-virtual {p3, p2, v1}, Lcom/sec/android/app/sbrowser/tab/Tab;->getImageBytes(Ljava/lang/String;Lcom/sec/terrace/Terrace$BitmapRequestCallback;)V

    return v0

    :cond_2
    :goto_0
    const-string p0, "ContextMenuItemHandler"

    const-string p1, "[startImageToolkit] Image width or height is not valid."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public startObjectCapture(Landroid/content/Context;)Z
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mObjectCaptureHelper:Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuObjectCaptureHelper;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuObjectCaptureHelper;->startObjectCapture(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public translate()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->translate()V

    const/4 p0, 0x1

    return p0
.end method

.method public webSearch(Landroid/content/Context;)Z
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->sanitizeQuery(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;->getInstance()Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;->getInstance()Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;->getUrlForSearchQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_2

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_2
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p0, "create_new_tab"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "com.android.browser.application_id"

    const-string v2, "com.sec.android.app.sbrowser.beta"

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ActivityNotFoundException :"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "ContextMenuItemHandler"

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->A(Landroid/content/ActivityNotFoundException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v1
.end method

.method public zoom()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->mEventListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/listener/context_menu/ContextMenuEventListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/listener/context_menu/ContextMenuEventListener;->onZoom()V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
