.class public abstract Lcom/sec/android/app/sbrowser/tab_manager/TabCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createFrozenTab(IZLcom/sec/terrace/TerraceState;ZZLjava/lang/String;IIJ)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .param p3    # Lcom/sec/terrace/TerraceState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract createFrozenTab(Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .param p1    # Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract createNewBackgroundTab(ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
.end method

.method public abstract createNewInstantTab(ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract createNewTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract createNewTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract createNewTabWithTerrace(Lcom/sec/terrace/Terrace;I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .param p1    # Lcom/sec/terrace/Terrace;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract createNewTabWithTerrace(Lcom/sec/terrace/Terrace;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .param p1    # Lcom/sec/terrace/Terrace;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
