.class Lcom/sec/android/app/sbrowser/main_view/MainViewImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->launchNewTabWithTerrace(Lcom/sec/terrace/Terrace;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    const-string v0, "si__MainViewImpl"

    const-string v1, "[launchNewTabWithTerrace] close tab by request"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->closeTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method
