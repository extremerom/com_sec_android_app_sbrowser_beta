.class Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->createToolbarDelegate()Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canGoForward()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->o(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->o(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->canGoForward()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCloseButtonDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->p(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getCloseButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getCloseButtonPosition()I
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->p(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getCloseButtonPosition()I

    move-result p0

    return p0
.end method

.method public getDefaultToolbarColor()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->p(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getColorProvider()Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;->getDefaultToolbarColor()I

    move-result p0

    return p0
.end method

.method public getExtraStatusBarColor()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->p(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getColorProvider()Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;->getStatusBarColor()I

    move-result p0

    return p0
.end method

.method public getExtraTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->p(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getExtraTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getExtraTitleColor()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->p(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getExtraTitleColor()I

    move-result p0

    return p0
.end method

.method public getExtraTitleSize()F
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->p(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getExtraTitleSize()F

    move-result p0

    return p0
.end method

.method public getMenuTitles()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->p(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getMenuTitles()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSecurityLevel()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->n(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getSecurityLevel()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->n(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getSecurityLevel()I

    move-result p0

    return p0
.end method

.method public getTheme()Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->o(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->o(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getTheme()Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->o(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->o(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->isMainFrameLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->o(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getTitle()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->i(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    move-result-object p0

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1403fd

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public getTitleVisibilityState()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->p(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getTitleVisibilityState()I

    move-result p0

    return p0
.end method

.method public getToolbarColor()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->p(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getColorProvider()Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;->getToolbarColor()I

    move-result p0

    return p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->o(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->o(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasExtraStatusBarColor()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->p(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getColorProvider()Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;->getStatusBarColor()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->l(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getDefaultToolbarColor()I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasExtraTitle()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$2;->getExtraTitle()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public hasExtraTitleColor()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->p(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getColorProvider()Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;->getToolbarColor()I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->p(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getExtraTitleColor()I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasExtraTitleSize()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->p(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getExtraTitleSize()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasTheme()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->o(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->o(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->hasTheme()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasToolbarColor()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->p(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getColorProvider()Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;->hasCustomToolbarColor()Z

    move-result p0

    return p0
.end method

.method public isExtraRemoveOpenInInternet()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->p(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->isExtraRemoveOpenInInternetEnabled()Z

    move-result p0

    return p0
.end method

.method public isExtraRemoveSecurityIcon()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->p(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->isExtraRemoveSecurityIconEnabled()Z

    move-result p0

    return p0
.end method

.method public shouldRemoveMenuItems()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->p(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->shouldRemoveMenuItems()Z

    move-result p0

    return p0
.end method

.method public shouldShowShareMenuItem()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->p(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->shouldShowShareMenuItem()Z

    move-result p0

    return p0
.end method

.method public showTitleAfterCompleteLoad()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->p(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->showTitleAfterCompleteLoad()Z

    move-result p0

    return p0
.end method
