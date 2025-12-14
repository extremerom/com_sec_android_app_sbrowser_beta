.class public final synthetic Lcom/sec/android/app/sbrowser/download/ui/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/download/ui/q;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/q;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/download/ui/q;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/download/ui/q;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/q;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/q;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->a(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/q;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/q;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->a(Ljava/util/List;Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/q;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/q;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->e(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/q;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/q;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;->a(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$3;Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
