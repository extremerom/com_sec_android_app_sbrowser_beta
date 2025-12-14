.class Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->createFindOnPageDelegate()Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageDelegate;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$5;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultToolbarColor()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$5;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->p(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getColorProvider()Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;->getDefaultToolbarColor()I

    move-result p0

    return p0
.end method

.method public getThemeColor()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$5;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->o(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$5;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->o(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getThemeColor()I

    move-result p0

    return p0
.end method

.method public getToolbarColor()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$5;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->p(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getColorProvider()Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;->getToolbarColor()I

    move-result p0

    return p0
.end method

.method public hasTheme()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$5;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->o(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$5;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$5;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->p(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getColorProvider()Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;->hasCustomToolbarColor()Z

    move-result p0

    return p0
.end method
