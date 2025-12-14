.class Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->showZoomInOutPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

.field final synthetic val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore$1;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissPopup()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->t(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;)V

    return-void
.end method

.method public onProgressChangeConfirmed(DZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore$1;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0, p3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setZoomApplyToThisTabOnly(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore$1;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setConfirmedZoomValue(D)V

    return-void
.end method

.method public onProgressChanged(D)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore$1;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setZoomValue(D)V

    return-void
.end method
