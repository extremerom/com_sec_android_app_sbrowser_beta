.class Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockHttpURLConnection;
.super Lcom/sec/android/app/sbrowser/common/blockers/BlockersHttpURLConnection;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/BlockersHttpURLConnection;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockHttpURLConnection;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getIconUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "https://contentsblock.samqaicongen.com/appicon/"

    const-string v0, ".png"

    invoke-static {p0, p1, v0}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public applyConfigurationToConnection(Ljava/net/HttpURLConnection;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    sget v0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConstants;->CONNECTION_TIMEOUT:I

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    sget v0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConstants;->READ_TIMEOUT:I

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const-string v0, "samqaicongen_com/cookies.txt"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/blockers/BlockersHttpURLConnection;->getCookies(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Cookie"

    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getETagFromPreference(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockHttpURLConnection;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getETag(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public requestData(Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallback;Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallback<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/sbrowser/common/blockers/BlockersHttpURLConnection;->requestData(Ljava/lang/String;Ljava/io/File;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallback;->invokeOnResult(Ljava/lang/Object;)V

    return-void
.end method

.method public requestDataForIcons(Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallback;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallback<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockHttpURLConnection;->getIconUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockHttpURLConnection;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFileUtils;->getIconFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/BlockersHttpURLConnection;->requestData(Ljava/lang/String;Ljava/io/File;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallback;->invokeOnResult(Ljava/lang/Object;)V

    return-void
.end method

.method public setETagToPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockHttpURLConnection;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setETag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
