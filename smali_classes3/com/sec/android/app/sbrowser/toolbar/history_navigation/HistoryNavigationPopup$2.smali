.class Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->initPopupView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    const-string v0, "si__HistoryNavigationPopup"

    const-string v1, "HistoryNavigationPopup: onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mAnchorView:Landroid/view/View;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->a(Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->mAdapter:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->b(Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;)Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$HistoryNavigationListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$HistoryNavigationListener;->onDismiss()V

    return-void
.end method
