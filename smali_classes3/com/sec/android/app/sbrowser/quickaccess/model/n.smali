.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/model/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;

.field public final synthetic d:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/n;->c:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/n;->d:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/n;->b:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/n;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/n;->c:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/n;->d:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/n;->a:I

    check-cast p1, LS2/a;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/n;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/n;->c:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/n;->d:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    invoke-static {p1, p0, v1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->q(LS2/a;Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/lang/String;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/n;->c:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/n;->d:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/n;->b:Ljava/lang/String;

    invoke-static {p1, v1, v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->v(LS2/a;Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
