.class Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$HistoryNavigationListener;)V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->b(Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;)Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$HistoryNavigationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$HistoryNavigationListener;->onLayoutChanged()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->c(Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;)V

    return-void
.end method
