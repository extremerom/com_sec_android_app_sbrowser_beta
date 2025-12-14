.class Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tab_group/TabGroupListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->onShowTabGroupList(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;

.field final synthetic val$anchor:Landroid/view/View;

.field final synthetic val$referrerUrl:Ljava/lang/String;

.field final synthetic val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$2;->this$1:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$2;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$2;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$2;->val$referrerUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$2;->val$anchor:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangedObserved()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$2;->this$1:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onTabGroupListChanged()V

    return-void
.end method

.method public onCreateGroup(II)V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$2;->this$1:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$2;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$2;->val$url:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$2;->val$referrerUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$2;->val$anchor:Landroid/view/View;

    move v6, p1

    move v7, p2

    invoke-interface/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->showGroupNameDialog(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;II)V

    return-void
.end method

.method public onNewTabInGroup(Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$2;->this$1:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->l(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$2;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$2;->val$url:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$2;->val$referrerUrl:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p1

    invoke-interface/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->onOpenInNewTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method
