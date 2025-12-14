.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/model/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;


# direct methods
.method public synthetic constructor <init>(ILcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/m;->a:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/m;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/m;->c:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/m;->a:I

    check-cast p1, LS2/a;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/m;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/m;->c:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->D(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;LS2/a;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/m;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/m;->c:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->g(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;LS2/a;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/m;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/m;->c:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->c(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;LS2/a;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/m;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/m;->c:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->i(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;LS2/a;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/m;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/m;->c:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->d(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;LS2/a;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/m;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/m;->c:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->f(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;LS2/a;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/m;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/m;->c:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->b(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;LS2/a;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
