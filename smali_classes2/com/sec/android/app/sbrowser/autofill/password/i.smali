.class public final synthetic Lcom/sec/android/app/sbrowser/autofill/password/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk$ResultCallback;
.implements Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$AddLogin_Response;
.implements Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$RemoveLogin_Response;
.implements Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$UpdateLogin_Response;
.implements Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$FillMatchingLogins_Response;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/autofill/password/i;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/autofill/password/i;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Z)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/i;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/i;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$UpdateLogin_Response;

    invoke-interface {p0, p1}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$UpdateLogin_Response;->call(Z)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$RemoveLogin_Response;

    invoke-interface {p0, p1}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$RemoveLogin_Response;->call(Z)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$AddLogin_Response;

    invoke-interface {p0, p1}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$AddLogin_Response;->call(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public call([Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/i;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$FillMatchingLogins_Response;

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$FillMatchingLogins_Response;->call([Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/i;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/autofill/password/FindMyMobileDialog;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/FindMyMobileDialog;->i(Lcom/sec/android/app/sbrowser/autofill/password/FindMyMobileDialog;Z)V

    return-void
.end method
