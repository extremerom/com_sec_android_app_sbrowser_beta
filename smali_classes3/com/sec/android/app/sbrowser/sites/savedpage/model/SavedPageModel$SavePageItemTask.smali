.class Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$SavePageItemTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavePageItemTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mContextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDuplicatedURL:Z

.field private mSavedPageItem:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedPageUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;Landroid/net/Uri;Z)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$SavePageItemTask;->mSavedPageUri:Landroid/net/Uri;

    new-instance p5, Ljava/lang/ref/WeakReference;

    invoke-direct {p5, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$SavePageItemTask;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$SavePageItemTask;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$SavePageItemTask;->mSavedPageItem:Ljava/lang/ref/WeakReference;

    iput-boolean p6, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$SavePageItemTask;->mIsDuplicatedURL:Z

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$SavePageItemTask;->getContentUriPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->setContentUri(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->setDirPath(Ljava/lang/String;)V

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->setTitle(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isSaveWebpageTestModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "http://www.google.com/m?client=ms-android-samsung&source=android-home"

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->setUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->setUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private getContentUriPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$SavePageItemTask;->mSavedPageUri:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 2

    const-string p1, "SavedPageModel"

    const-string v0, "SavePageItemTask - doInBackground"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$SavePageItemTask;->mSavedPageItem:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$SavePageItemTask;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$SavePageItemTask;->mSavedPageUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$SavePageItemTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$SavePageItemTask;->mSavedPageUri:Landroid/net/Uri;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$SavePageItemTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getContentValues(Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$SavePageItemTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public onCancelled()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$SavePageItemTask;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f140dc9

    const/4 v1, -0x1

    invoke-static {v0, v1, p0}, LH6/o;->h(IILandroid/view/View;)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$MESSAGES;->FAILED:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$MESSAGES;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->sendMessage(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$MESSAGES;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Long;)V
    .locals 10

    const-string v0, "SavedPageModel"

    const-string v1, "SavePageItemTask - onPostExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$SavePageItemTask;->mSavedPageItem:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$SavePageItemTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez p1, :cond_1

    const v1, 0x7f140dc9

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$SavePageItemTask;->mIsDuplicatedURL:Z

    if-eqz v1, :cond_2

    const v1, 0x7f140dc2

    goto :goto_0

    :cond_2
    const v1, 0x7f140dcb

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$SavePageItemTask;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->make(Landroid/app/Activity;Ljava/lang/CharSequence;)LH6/o;

    move-result-object v0

    invoke-virtual {v0}, LH6/o;->l()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$SavePageItemTask;->mIsDuplicatedURL:Z

    if-eqz v0, :cond_3

    const-string v0, "201"

    const-string v1, "2280"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    sget-object v4, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->SAVED_PAGE:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$SavePageItemTask;->mSavedPageItem:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$SavePageItemTask;->mSavedPageItem:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getUrl()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$SavePageItemTask;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v9

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;-><init>(Ljava/lang/Long;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$SavePageItemTask;->mSavedPageItem:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getImage()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->setTouchIcon([B)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$SavePageItemTask;->mSavedPageItem:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getContentUri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->setContentUri(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->isSmartSearchValidForSites()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$SavePageItemTask;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->isSavedPageInsertedSecret()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->insert(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->isSavedPageInsertedNormal()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->insert(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V

    :cond_5
    :goto_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$MESSAGES;->INSERTED:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$MESSAGES;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->sendMessage(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$MESSAGES;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel$SavePageItemTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
