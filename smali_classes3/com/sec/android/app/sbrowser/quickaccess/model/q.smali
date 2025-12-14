.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/model/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/q;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/q;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/q;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/q;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/q;->a:I

    check-cast p1, LS2/a;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/q;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/q;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/q;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LS2/a;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/q;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/q;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/q;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->p(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;LS2/a;)Ldb/r;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
