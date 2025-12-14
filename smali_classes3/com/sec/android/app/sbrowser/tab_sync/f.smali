.class public final synthetic Lcom/sec/android/app/sbrowser/tab_sync/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

.field public final synthetic b:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/f;->a:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_sync/f;->b:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/f;->a:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/f;->b:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->d(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;Landroid/view/View;)V

    return-void
.end method
