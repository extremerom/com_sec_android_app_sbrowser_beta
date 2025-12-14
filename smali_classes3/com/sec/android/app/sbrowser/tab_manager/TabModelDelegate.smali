.class interface abstract Lcom/sec/android/app/sbrowser/tab_manager/TabModelDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY:Lcom/sec/android/app/sbrowser/tab_manager/TabModelDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_manager/TabModelDelegate$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModelDelegate$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/tab_manager/TabModelDelegate;->EMPTY:Lcom/sec/android/app/sbrowser/tab_manager/TabModelDelegate;

    return-void
.end method


# virtual methods
.method public addTabToSaveQueue(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public closeAllTabs()V
    .locals 0

    return-void
.end method

.method public getNativePageEarly(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public handleBeforeTabHidden(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public isSecretModeEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isTabGroupExist(ZLjava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public removeTabFromQueue(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
