.class public final synthetic Lcom/sec/android/app/sbrowser/si_log/ui/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/si_log/ui/d;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/ui/d;->b:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/si_log/ui/d;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/ui/d;->b:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->l(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->m(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Ldb/j;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->h(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;Ldb/j;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
