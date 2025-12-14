.class Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->setShowSelectModeAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$4;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$4;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->j(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;)Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$4;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->i(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$4;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->m(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;)Z

    move-result p0

    return p0
.end method
