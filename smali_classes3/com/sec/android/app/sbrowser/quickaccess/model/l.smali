.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/model/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/l;->d:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/l;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/l;->c:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;I)V
    .locals 0

    iput p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/l;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/l;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/l;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/l;->d:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/l;->a:I

    check-cast p1, LS2/a;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/l;->d:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/l;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/l;->c:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->C(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/lang/String;Ljava/lang/String;LS2/a;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/l;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/l;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/l;->d:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;

    invoke-static {p0, v0, v1, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->A(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/lang/String;Ljava/lang/String;LS2/a;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/l;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/l;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/l;->d:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;

    invoke-static {p0, v0, v1, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->B(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/lang/String;Ljava/lang/String;LS2/a;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
