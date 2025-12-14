.class Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->registerSBrowserTabsCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapReceived(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->m(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public onDidChangeThemeColor(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->n(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V

    return-void
.end method

.method public onLoadFinished(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->p(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public onTabThumbnailCreated(ILandroid/graphics/Bitmap;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->q(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public onTitleUpdated(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->r(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V

    return-void
.end method

.method public onToggleFullscreenModeForTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->s(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V

    return-void
.end method

.method public onUpdatedFavicon(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->o(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public onUrlUpdated(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->t(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method
