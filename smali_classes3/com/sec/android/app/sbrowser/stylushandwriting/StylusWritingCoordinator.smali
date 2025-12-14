.class public Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mTabManagerEventListener:Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator;Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator;->getTabManager(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    return-object p0
.end method

.method private getTabManager(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getTabManager(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    return-object p0
.end method

.method private removeTabManagerEventListener(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator;->getTabManager(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator;->mTabManagerEventListener:Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->removeListener(Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator;->mTabManagerEventListener:Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addTabManagerEventListener(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator;->getTabManager(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator;->mTabManagerEventListener:Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator$1;-><init>(Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator;->mTabManagerEventListener:Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->addListener(Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public destroy(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator;->removeTabManagerEventListener(Landroid/app/Activity;)V

    return-void
.end method

.method public onCurrentTabChanged(Lcom/sec/terrace/Terrace;Lcom/sec/terrace/TerraceActivity;)V
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/sec/terrace/TerraceActivity;->getTerraceStylusWritingController()Lcom/sec/terrace/TerraceStylusWritingController;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/sec/terrace/TerraceActivity;->getTerraceStylusWritingController()Lcom/sec/terrace/TerraceStylusWritingController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/TerraceStylusWritingController;->onCurrentTabChanged(Lcom/sec/terrace/Terrace;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onWindowFocusChanged(ZLcom/sec/terrace/TerraceActivity;)V
    .locals 0

    invoke-virtual {p2}, Lcom/sec/terrace/TerraceActivity;->getTerraceStylusWritingController()Lcom/sec/terrace/TerraceStylusWritingController;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/sec/terrace/TerraceActivity;->getTerraceStylusWritingController()Lcom/sec/terrace/TerraceStylusWritingController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/TerraceStylusWritingController;->onWindowFocusChanged(Z)V

    return-void
.end method
