.class Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->startFindOnPage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentTheme()Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->a(Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;)Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageDelegate;->getDefaultToolbarColor()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->a(Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;)Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageDelegate;->hasToolbarColor()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->a(Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;)Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageDelegate;->getToolbarColor()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->a(Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;)Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageDelegate;->hasTheme()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->a(Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;)Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageDelegate;->getThemeColor()I

    move-result v0

    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->isValidThemeColor(I)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;-><init>(I)V

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public isNightModeEnabled()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result p0

    return p0
.end method
