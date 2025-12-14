.class public final synthetic Lcom/sec/android/app/sbrowser/common/account/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/common/account/a;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/account/a;->b:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/account/a;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/account/a;->b:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;->a(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;)Landroidx/lifecycle/S;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;->c(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;)LQc/h;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;->b(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;)LQc/h;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
