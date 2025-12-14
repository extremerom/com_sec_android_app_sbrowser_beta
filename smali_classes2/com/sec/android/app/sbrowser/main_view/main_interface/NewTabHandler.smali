.class public interface abstract Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->EMPTY:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    return-void
.end method


# virtual methods
.method public getTabWithSameUrlInTabList(ZLjava/lang/String;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public handleBixbyIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public launchMultiTabStack(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public launchNewTab(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public launchNewTabFromAssistIntent()V
    .locals 0

    return-void
.end method

.method public launchNewTabFromSyncTab(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public launchNewTabWithAnim(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public launchNewTabWithTerrace(Lcom/sec/terrace/Terrace;)V
    .locals 0

    return-void
.end method

.method public launchNewTabWithoutAnim(ZZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public loadHomePageWithNewTab(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public loadUrlWithExistingTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public loadUrlWithNewTab(Ljava/lang/String;Ljava/lang/String;ZZLcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Z)V
    .locals 0

    return-void
.end method

.method public loadUrlWithNewTabFromExternalApp(Ljava/lang/String;Landroid/content/Intent;ZZ)V
    .locals 0

    return-void
.end method

.method public loadUrlWithNewTabFromExternalApp(ZZ)V
    .locals 0

    return-void
.end method

.method public onOpenInNewTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    return-void
.end method

.method public onOpenInNewTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public openDownloadFile(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public openNewTabOnTabManager()V
    .locals 0

    return-void
.end method

.method public openSites(IZI)V
    .locals 0

    return-void
.end method

.method public showTabWithoutLoading(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/content/Intent;)V
    .locals 0
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
