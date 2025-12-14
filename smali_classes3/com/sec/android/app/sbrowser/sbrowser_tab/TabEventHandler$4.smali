.class Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager$AppBannerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->initializeAppBanner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler$4;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isIncognitoModeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler$4;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->h(Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result p0

    return p0
.end method

.method public onAcceptBannerInstallation(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler$4;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->i(Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;II)V

    return-void
.end method

.method public onPWAStatusUpdated(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler$4;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->g(Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;)Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->setPwaType(I)V

    return-void
.end method
