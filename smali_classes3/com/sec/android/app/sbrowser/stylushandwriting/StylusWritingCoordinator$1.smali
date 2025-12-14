.class Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator;->addTabManagerEventListener(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator$1;->this$0:Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentTabChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator$1;->this$0:Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator$1;->val$activity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator;->a(Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator;Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator$1;->val$activity:Landroid/app/Activity;

    check-cast p0, Lcom/sec/terrace/TerraceActivity;

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->getTerraceStylusWritingController()Lcom/sec/terrace/TerraceStylusWritingController;

    move-result-object p0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/TerraceStylusWritingController;->onCurrentTabChanged(Lcom/sec/terrace/Terrace;)V

    :cond_1
    return-void
.end method
