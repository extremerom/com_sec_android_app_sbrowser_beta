.class public final synthetic Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/a;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/a;->b:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/a;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/a;->b:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;

    check-cast p1, Ljava/util/Map$Entry;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;->b(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;Ljava/util/Map$Entry;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;->g(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;Ljava/util/Map$Entry;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;->a(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;Ljava/util/Map$Entry;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
