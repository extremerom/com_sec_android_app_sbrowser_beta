.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/model/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/util/List;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/k;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/k;->b:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/k;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/k;->a:I

    check-cast p1, LS2/a;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/k;->b:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/k;->c:Ljava/util/List;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->w(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/util/List;LS2/a;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/k;->b:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/k;->c:Ljava/util/List;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->n(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/util/List;LS2/a;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/k;->b:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/k;->c:Ljava/util/List;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->z(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/util/List;LS2/a;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
