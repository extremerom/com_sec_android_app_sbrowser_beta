.class Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->onUpdatedFavicon(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;

.field final synthetic val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$3;->this$1:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$3;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$3;->this$1:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$3;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->updateTouchIcon(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method
