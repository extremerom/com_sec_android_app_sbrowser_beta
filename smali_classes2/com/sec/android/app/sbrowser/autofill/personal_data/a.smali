.class public final synthetic Lcom/sec/android/app/sbrowser/autofill/personal_data/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/authentication/Authenticator$Callback;
.implements Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/a;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/a;->b:Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/a;->b:Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->e(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V

    return-void
.end method

.method public onResult(Z)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/a;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/a;->b:Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->b(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;Z)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->d(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
