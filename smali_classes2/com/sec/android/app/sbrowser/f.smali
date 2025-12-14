.class public final synthetic Lcom/sec/android/app/sbrowser/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/services/TerraceServiceManager$Factory;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Lorg/chromium/mojo/bindings/Interface;
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/f;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillProfileDatabaseService;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillProfileDatabaseService;-><init>()V

    return-object p0

    :pswitch_0
    new-instance p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/sec/android/app/sbrowser/autofill/autocomplete/AutofillDeletionConfirm;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/autocomplete/AutofillDeletionConfirm;-><init>()V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassService;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassService;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/NativeWebData;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/NativeWebData;-><init>()V

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/sec/android/app/sbrowser/hello/HelloService;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hello/HelloService;-><init>()V

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskPromptImpl;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskPromptImpl;-><init>()V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardDatabaseService;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardDatabaseService;-><init>()V

    return-object p0

    :pswitch_7
    new-instance p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;-><init>()V

    return-object p0

    :pswitch_8
    new-instance p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationService;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationService;-><init>()V

    return-object p0

    :pswitch_9
    invoke-static {}, Lcom/sec/android/app/sbrowser/ServiceManager;->a()Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
