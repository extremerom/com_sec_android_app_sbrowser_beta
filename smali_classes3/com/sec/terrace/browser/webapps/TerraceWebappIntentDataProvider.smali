.class public Lcom/sec/terrace/browser/webapps/TerraceWebappIntentDataProvider;
.super Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;
.source "SourceFile"


# instance fields
.field private final mActivityType:I

.field private final mIntent:Landroid/content/Intent;

.field private final mShareData:LK/a;

.field private final mTwaDisplayMode:LI/f;

.field private final mWebApkExtras:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mWebappExtras:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Intent;LK/a;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;)V
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LK/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappIntentDataProvider;->mIntent:Landroid/content/Intent;

    iget p1, p3, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;->displayMode:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    new-instance p1, LI/e;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1}, LI/e;-><init>(ZI)V

    goto :goto_0

    :cond_0
    new-instance p1, Lz7/d;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappIntentDataProvider;->mTwaDisplayMode:LI/f;

    iput-object p2, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappIntentDataProvider;->mShareData:LK/a;

    iput-object p3, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappIntentDataProvider;->mWebappExtras:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;

    iput-object p4, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappIntentDataProvider;->mWebApkExtras:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    :goto_1
    iput v0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappIntentDataProvider;->mActivityType:I

    return-void
.end method


# virtual methods
.method public getActivityType()I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappIntentDataProvider;->mActivityType:I

    return p0
.end method

.method public getClientPackageName()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappIntentDataProvider;->mWebApkExtras:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;->webApkPackageName:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappIntentDataProvider;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getShareData()LK/a;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappIntentDataProvider;->mShareData:LK/a;

    return-object p0
.end method

.method public getShareTarget()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/terrace/browser/webapps/TerraceWebappIntentDataProvider;->getWebApkExtras()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/webapps/TerraceWebappIntentDataProvider;->getWebApkExtras()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;->shareTarget:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getTwaDisplayMode()LI/f;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappIntentDataProvider;->mTwaDisplayMode:LI/f;

    return-object p0
.end method

.method public getUiType()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public getUrlToLoad()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappIntentDataProvider;->mWebappExtras:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;->url:Ljava/lang/String;

    return-object p0
.end method

.method public getWebApkExtras()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappIntentDataProvider;->mWebApkExtras:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;

    return-object p0
.end method

.method public getWebappExtras()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappIntentDataProvider;->mWebappExtras:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;

    return-object p0
.end method
