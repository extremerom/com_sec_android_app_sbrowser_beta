.class public final synthetic Lcom/sec/android/app/sbrowser/sites/history/view/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;

.field public final synthetic b:Lcom/sec/terrace/browser/history/TerraceHistoryItem;

.field public final synthetic c:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;Lcom/sec/terrace/browser/history/TerraceHistoryItem;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/h;->a:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/h;->b:Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/history/view/h;->c:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/h;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/h;->a:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/h;->b:Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    invoke-static {v1, p0, v0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;->c(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper;Lcom/sec/terrace/browser/history/TerraceHistoryItem;Landroid/app/Activity;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
