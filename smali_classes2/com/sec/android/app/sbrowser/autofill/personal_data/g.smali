.class public final synthetic Lcom/sec/android/app/sbrowser/autofill/personal_data/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/function/Supplier;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/g;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;->a()Lcom/sec/android/app/sbrowser/autofill/personal_data/SdpDatabaseManagerDelegate;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletBroadcastReceiver;->a()Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletBroadcastReceiver;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/NativeWebData;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/NativeWebData;-><init>()V

    return-object p0

    :pswitch_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->a()Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData;->a()Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletDataSyncer;->a()Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletDataSyncer;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->a()Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassDataSyncer;->a()Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassDataSyncer;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
