.class public final synthetic Lcom/sec/android/app/sbrowser/tab_sync/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

.field public final synthetic c:I

.field public final synthetic d:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;

.field public final synthetic e:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;ILcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;I)V
    .locals 0

    iput p5, p0, Lcom/sec/android/app/sbrowser/tab_sync/e;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/e;->b:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    iput p2, p0, Lcom/sec/android/app/sbrowser/tab_sync/e;->c:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/tab_sync/e;->d:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/tab_sync/e;->e:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/e;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/e;->b:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    iget v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/e;->c:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/e;->d:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/e;->e:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->c(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;ILcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;Landroid/view/View;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/e;->b:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    iget v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/e;->c:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/e;->d:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/e;->e:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->b(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;ILcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter$HeaderViewHolder;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
