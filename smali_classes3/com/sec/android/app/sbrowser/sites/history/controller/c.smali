.class public final synthetic Lcom/sec/android/app/sbrowser/sites/history/controller/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/util/List;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/c;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/c;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/c;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/c;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/c;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/c;->b:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->e(Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;Ljava/util/List;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/c;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/c;->b:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController$4;->a(Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;Ljava/util/List;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
