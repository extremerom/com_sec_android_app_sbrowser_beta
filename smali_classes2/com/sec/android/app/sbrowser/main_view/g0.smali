.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController$Listener;
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/g0;->a:Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpenHistory(IZI)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/g0;->a:Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->c(Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;IZI)V

    return-void
.end method

.method public onResult(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/g0;->a:Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->d(Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;Z)V

    return-void
.end method
