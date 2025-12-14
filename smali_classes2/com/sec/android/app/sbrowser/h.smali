.class public final synthetic Lcom/sec/android/app/sbrowser/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/services/TerraceServiceManager$Factory;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/autofill/otp/export/OtpModuleLoader;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/autofill/otp/export/OtpModuleLoader;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/h;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/h;->b:Lcom/sec/android/app/sbrowser/autofill/otp/export/OtpModuleLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Lorg/chromium/mojo/bindings/Interface;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/h;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/h;->b:Lcom/sec/android/app/sbrowser/autofill/otp/export/OtpModuleLoader;

    packed-switch v0, :pswitch_data_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/autofill/otp/export/OtpModuleLoader;->getOtpStore()Lcom/sec/android/app/sbrowser/autofill/otp/export/OtpStore;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/autofill/otp/export/OtpModuleLoader;->getOtpAutofillHook()Lcom/sec/android/app/sbrowser/autofill/otp/export/OtpAutofillHook;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
