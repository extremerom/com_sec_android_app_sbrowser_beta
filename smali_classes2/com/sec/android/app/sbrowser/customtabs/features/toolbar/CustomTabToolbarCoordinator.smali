.class public Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarCoordinator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mCloseClickHandler:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabCloseClickHandler;

.field private final mContext:Landroid/content/Context;

.field private final mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

.field private final mTabProvider:Lcom/sec/android/app/sbrowser/customtabs/content/CustomTabActivityTabProvider;

.field private final mToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;Lcom/sec/android/app/sbrowser/customtabs/content/CustomTabActivityTabProvider;Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabCloseClickHandler;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/customtabs/content/CustomTabActivityTabProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabCloseClickHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarCoordinator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarCoordinator;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarCoordinator;->mTabProvider:Lcom/sec/android/app/sbrowser/customtabs/content/CustomTabActivityTabProvider;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarCoordinator;->mToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarCoordinator;->mCloseClickHandler:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabCloseClickHandler;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarCoordinator;Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarCoordinator;->lambda$showCustomButtonsOnToolbar$1(Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarCoordinator;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarCoordinator;->lambda$onToolbarInitialized$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onToolbarInitialized$0(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarCoordinator;->mCloseClickHandler:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabCloseClickHandler;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabCloseClickHandler;->onCloseClick()V

    return-void
.end method

.method private synthetic lambda$showCustomButtonsOnToolbar$1(Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarCoordinator;->onCustomButtonClick(Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;)V

    return-void
.end method

.method private onCustomButtonClick(Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;)V
    .locals 2
    .param p1    # Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCustomButtonClick() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomTabToolbarCoordinator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarCoordinator;->mTabProvider:Lcom/sec/android/app/sbrowser/customtabs/content/CustomTabActivityTabProvider;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/content/CustomTabActivityTabProvider;->getTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarCoordinator;->sendButtonPendingIntentWithUrlAndTitle(Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendButtonPendingIntentWithUrlAndTitle(Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.SUBJECT"

    invoke-virtual {v3, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->setActivityOptionsBackgroundActivityStartAllowAlways(Landroid/app/ActivityOptions;)V

    invoke-interface {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "CustomTabToolbarCoordinator"

    const-string p1, "CanceledException while sending pending intent in custom tab"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private showCustomButtonsOnToolbar()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarCoordinator;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getCustomButtonsOnToolbar()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarCoordinator;->mToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    new-instance v3, LFa/b;

    const/4 v4, 0x5

    invoke-direct {v3, v4, p0, v1}, LFa/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v3}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->addCustomActionButton(Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onToolbarInitialized()V
    .locals 3

    const-string v0, "CustomTabToolbarCoordinator"

    const-string v1, "onToolbarInitialized()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarCoordinator;->showCustomButtonsOnToolbar()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarCoordinator;->mToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    new-instance v1, LK6/a;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p0}, LK6/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->setCustomTabCloseClickHandler(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateCustomButton(Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarCoordinator;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;->doesIconFitToolbar(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarCoordinator;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-interface {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getCustomToolbarButtonIndexForId(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateCustomButton() for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CustomTabToolbarCoordinator"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarCoordinator;->mToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->updateCustomActionButton(ILcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;)V

    const/4 p0, 0x1

    return p0
.end method
