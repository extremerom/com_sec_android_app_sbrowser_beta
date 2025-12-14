.class public final synthetic Lcom/sec/android/app/sbrowser/autofill/password/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$RemoveLogin_Response;
.implements Lcom/sec/android/app/sbrowser/common/function/Supplier;
.implements Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk$ResultCallback;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/autofill/password/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Z)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/autofill/password/DataRemoveServiceImpl;->b(Z)V

    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/h;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->isAutoSigninEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;->c()Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker;->a()Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->a()Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResult(Z)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungAccountUpdateDialog;->j(Z)V

    return-void
.end method
