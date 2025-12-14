.class Lcom/sec/android/app/sbrowser/tab_manager/TabManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getNativePageDelegate(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

.field final synthetic val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab_manager/TabManager;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager$1;->this$0:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager$1;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeNativePage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager$1;->this$0:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->b(Lcom/sec/android/app/sbrowser/tab_manager/TabManager;)Lcom/sec/android/app/sbrowser/tab_manager/NativePageManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager$1;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/sbrowser/tab_manager/NativePageManager;->get(Ljava/lang/String;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-interface {p0, p1, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->exitEditMode(ZZ)V

    :cond_0
    return-void
.end method

.method public bridge synthetic getCurrentTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager$1;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager$1;->this$0:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public getMainViewLayout()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager$1;->this$0:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->c(Lcom/sec/android/app/sbrowser/tab_manager/TabManager;)Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getParentView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getNativePage(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager$1;->this$0:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->b(Lcom/sec/android/app/sbrowser/tab_manager/TabManager;)Lcom/sec/android/app/sbrowser/tab_manager/NativePageManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager$1;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/sbrowser/tab_manager/NativePageManager;->get(Ljava/lang/String;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    move-result-object p0

    return-object p0
.end method
