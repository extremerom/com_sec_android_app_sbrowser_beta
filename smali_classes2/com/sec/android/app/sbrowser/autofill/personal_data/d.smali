.class public final synthetic Lcom/sec/android/app/sbrowser/autofill/personal_data/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/authentication/Authenticator$Callback;
.implements Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCards_Response;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/d;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/d;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call([Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardDatabaseService;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCards_Response;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardDatabaseService;->a(Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardDatabaseService;Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCards_Response;[Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)V

    return-void
.end method

.method public onResult(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$9;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/d;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$9;->a(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$9;Ljava/lang/Runnable;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V

    return-void
.end method
