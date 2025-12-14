.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/model/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/t;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/t;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/t;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/t;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    check-cast p1, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->g(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p0, Ljava/lang/String;

    check-cast p1, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->a(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p0, Ljava/lang/String;

    check-cast p1, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;->c(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
