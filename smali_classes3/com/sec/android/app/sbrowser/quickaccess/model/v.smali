.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/model/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/v;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/v;->a:I

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->h(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->g(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$addQuickAccessItemsFromSync$1;->f(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
