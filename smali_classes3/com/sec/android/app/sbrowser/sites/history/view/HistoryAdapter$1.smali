.class Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder$OnClickEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->f(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Listener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Listener;->createContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;I)V

    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->f(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Listener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Listener;->onChildClick(Landroid/view/View;I)Z

    return-void
.end method

.method public onItemLongClick(Landroid/view/View;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->f(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Listener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Listener;->onItemLongClick(Landroid/view/View;I)Z

    return-void
.end method
