.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/model/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/j;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/j;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/j;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/j;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->a(Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->p(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;)LQc/h;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDatabase_Impl;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDatabase_Impl;->b(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDatabase_Impl;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
