.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/ui/page/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/i;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/i;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/i;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/i;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;->a(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;Ljava/util/List;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->a(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;Ljava/lang/Boolean;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->i(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Ljava/lang/Boolean;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter;

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter;->b(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter;Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;)Ldb/r;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
