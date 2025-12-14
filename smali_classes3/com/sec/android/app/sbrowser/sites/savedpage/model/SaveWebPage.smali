.class public Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$SavedPageMessageObserver;


# instance fields
.field private mIsSaveWebPageRunning:Z

.field private mSavedPageModel:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;)Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->mSavedPageModel:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->getViewPortBitmapAndSavePage(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method private evaluateDescription(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 2

    const-string v0, "saved_page_description_extractor.js"

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/device/AssetUtil;->read(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->mSavedPageModel:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;->setDescription(Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage$3;-><init>(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;)V

    invoke-interface {p2, p1, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;->evaluateJavaScript(Ljava/lang/String;Lcom/sec/terrace/TerraceJavaScriptCallback;)V

    return-void
.end method

.method public static getSaveWebPageDirectoryPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->isSecretModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSdpSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->getSaveWebPageSdpDirectoryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/readinglist/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->makeSavePageDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSaveWebPageSdpDirectoryPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    const-string v0, "SaveWebPage"

    const-string v1, "/readinglist/"

    const-string v2, "/data/readinglist/"

    instance-of v3, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const v6, 0x7f140dbf

    const v7, 0x1020002

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->getInstance()Lcom/sec/android/app/sbrowser/common/sdp/SdpController;

    move-result-object v8

    if-eqz v8, :cond_2

    new-instance v1, Lcom/samsung/android/knox/sdp/SdpFileSystem;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->getAlias()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, p0, v8}, Lcom/samsung/android/knox/sdp/SdpFileSystem;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->getUserDataDir()Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->getUserDataDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    const-string v1, "getSaveWebPageSdpDirectoryPath - SdpFileSystem UserDataDir is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_1

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v6, v5, v1}, LH6/o;->h(IILandroid/view/View;)LH6/o;

    move-result-object v1

    invoke-virtual {v1}, LH6/o;->l()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$MESSAGES;->FAILED:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$MESSAGES;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->sendMessage(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$MESSAGES;)V

    :cond_1
    return-object v4

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/samsung/android/knox/sdp/core/SdpException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "getSaveWebPageSdpDirectoryPath - error "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpException;->getErrorCode()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_3

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {v6, v5, p0}, LH6/o;->h(IILandroid/view/View;)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$MESSAGES;->FAILED:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$MESSAGES;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->sendMessage(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$MESSAGES;)V

    :cond_3
    return-object v4
.end method

.method public static getSavedPageContentUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->isSecretModeEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants;->SAVED_PAGE_INTERNAL_URL:Landroid/net/Uri;

    return-object p0

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants;->SAVED_PAGE_URI:Landroid/net/Uri;

    return-object p0
.end method

.method private static getSavedPageItem(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;
    .locals 9

    const-string v0, "SaveWebPage"

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isSavedPageUrl(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const-string v6, "path=? AND is_deleted = 0"

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->removeBeta(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->getSavedPageContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->fillSavedPageItem(Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v3

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    :try_start_4
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/database/StaleDataException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Exception : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_4

    :catch_1
    const-string p0, "Error while getting saved page data from "

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_4
    return-object v2
.end method

.method public static getUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->getSavedPageItem(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getUrl()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getViewPortBitmapAndSavePage(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 2

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderView()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getReaderTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage$2;-><init>(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getViewPortBitmapAsync(Lcom/sec/terrace/Terrace$BitmapRequestCallback;)V

    return-void
.end method

.method private hasLargeDuplicatedURL(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z
    .locals 7

    const/4 p0, 0x0

    if-nez p2, :cond_0

    return p0

    :cond_0
    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return p0

    :cond_1
    const-string v4, "url=? AND is_deleted = 0"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->getSavedPageContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v0, 0x20

    if-lt p2, v0, :cond_2

    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p2

    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Exception : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "SaveWebPage"

    invoke-static {p1, p2, v0}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return p0
.end method

.method public static isSavedReaderPage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->getSavedPageItem(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->isReaderPage()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSecretModeEnabled(Landroid/content/Context;)Z
    .locals 1

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static makeSavePageDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string v0, "SaveWebPage"

    const-string v1, "SavePage dir cannot be created: "

    const-string v2, "SavePage dir created: "

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    instance-of v3, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, -0x1

    const v7, 0x7f140dbf

    const v8, 0x1020002

    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_1

    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {v7, v6, p1}, LH6/o;->h(IILandroid/view/View;)LH6/o;

    move-result-object p1

    invoke-virtual {p1}, LH6/o;->l()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;

    move-result-object p1

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$MESSAGES;->FAILED:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$MESSAGES;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->sendMessage(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$MESSAGES;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v5

    :cond_2
    :goto_0
    return-object p1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception while creating SavePage dir "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_3

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {v7, v6, p0}, LH6/o;->h(IILandroid/view/View;)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$MESSAGES;->FAILED:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$MESSAGES;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->sendMessage(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$MESSAGES;)V

    :cond_3
    return-object v5
.end method

.method private setIsSavedPageRunning(Z)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/StatusUtil;->isSavedPageRunning()Z

    move-result p0

    if-eq p0, p1, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/StatusUtil;->setIsSavedPageRunning(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/Context;)V
    .locals 3

    check-cast p1, Landroid/app/Activity;

    const v0, 0x1020002

    const v1, 0x7f140dbf

    const/4 v2, -0x1

    invoke-static {p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->q(Landroid/app/Activity;III)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->mSavedPageModel:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;->destroy()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->mSavedPageModel:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->removeObserver(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$SavedPageMessageObserver;)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->mIsSaveWebPageRunning:Z

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->setIsSavedPageRunning(Z)V

    return-void
.end method

.method public onChange(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$MESSAGES;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage$4;->$SwitchMap$com$sec$android$app$sbrowser$sites$savedpage$model$SavedPageMessageHandler$MESSAGES:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->mSavedPageModel:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;->destroy()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->removeObserver(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$SavedPageMessageObserver;)V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->mIsSaveWebPageRunning:Z

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->mIsSaveWebPageRunning:Z

    :goto_0
    return-void
.end method

.method public onPageSavedAs(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 9

    const-string v0, "onPageSavedAs - error :: "

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->mSavedPageModel:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->isSecretModeEnabled(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, -0x1

    const v3, 0x1020002

    const-string v4, "SaveWebPage"

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSdpSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f140dbf

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->getInstance()Lcom/sec/android/app/sbrowser/common/sdp/SdpController;

    move-result-object v6

    if-eqz v6, :cond_1

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Lcom/samsung/android/knox/sdp/SdpFileSystem;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->getAlias()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, p1, v6}, Lcom/samsung/android/knox/sdp/SdpFileSystem;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->isSensitive(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v8, v7}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->setSensitive(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "onPageSavedAs:: secret mode, failed setSensitive file"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, p1

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v1, v2, v6}, LH6/o;->h(IILandroid/view/View;)LH6/o;

    move-result-object v6

    invoke-virtual {v6}, LH6/o;->l()V

    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->setIsSavedPageRunning(Z)V
    :try_end_0
    .catch Lcom/samsung/android/knox/sdp/core/SdpException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v5, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->mIsSaveWebPageRunning:Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v6

    goto :goto_1

    :cond_1
    :goto_0
    iput-boolean v5, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->mIsSaveWebPageRunning:Z

    goto :goto_3

    :goto_1
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/android/knox/sdp/core/SdpException;->getErrorCode()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v2, v0}, LH6/o;->h(IILandroid/view/View;)LH6/o;

    move-result-object v0

    invoke-virtual {v0}, LH6/o;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    iput-boolean v5, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->mIsSaveWebPageRunning:Z

    throw p1

    :cond_2
    :goto_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p1, Landroid/app/Activity;

    const p2, 0x7f140dc9

    invoke-static {p1, v3, p2, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->q(Landroid/app/Activity;III)V

    iput-boolean v5, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->mIsSaveWebPageRunning:Z

    goto :goto_4

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->mSavedPageModel:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->getSavedPageContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->hasLargeDuplicatedURL(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p2, p3, v1, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;->executeSavePageItemTask(Ljava/lang/String;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/net/Uri;Ljava/lang/Boolean;)V

    :goto_4
    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->setIsSavedPageRunning(Z)V

    const-string p0, "onPageSavedAs completing save operation"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public savePage(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 4

    invoke-static {p2}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->mIsSaveWebPageRunning:Z

    const-string v1, "SaveWebPage"

    if-eqz v0, :cond_0

    const-string p0, "savePage - SaveWebPage is already running"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->mIsSaveWebPageRunning:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "savePage - initiated for tab = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLoading()Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "about:blank"

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->setIsSavedPageRunning(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->mSavedPageModel:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;

    if-nez v0, :cond_2

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->mSavedPageModel:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->evaluateDescription(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->mSavedPageModel:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderPage()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;->setReaderPage(Z)V

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderPage()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "savePage - saving reader page"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getArticleImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getArticleImageUrl()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage$1;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage$1;-><init>(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    invoke-interface {p2, p1, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getBitmapFromCache(Ljava/lang/String;Lcom/sec/terrace/Terrace$BitmapRequestCallback;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->getViewPortBitmapAndSavePage(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->getViewPortBitmapAndSavePage(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->addObserver(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$SavedPageMessageObserver;)V

    return-void

    :cond_5
    :goto_1
    check-cast p1, Landroid/app/Activity;

    const p2, 0x1020002

    const v0, 0x7f1410c8

    const/4 v1, -0x1

    invoke-static {p1, p2, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->q(Landroid/app/Activity;III)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->mIsSaveWebPageRunning:Z

    return-void
.end method

.method public setSaveWebPageRunning(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->mIsSaveWebPageRunning:Z

    return-void
.end method
