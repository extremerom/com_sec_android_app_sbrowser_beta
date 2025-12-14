.class public final synthetic Lcom/sec/android/app/sbrowser/search_widget/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/search_widget/c;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/c;->b:Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/search_widget/c;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/c;->b:Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->g(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;Lcom/sec/android/app/sbrowser/common/livedata/Event;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->m(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;Lcom/sec/android/app/sbrowser/common/livedata/Event;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->l(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;Lcom/sec/android/app/sbrowser/common/livedata/Event;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->i(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;Ljava/lang/Integer;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->k(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;Lcom/sec/android/app/sbrowser/common/livedata/Event;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
