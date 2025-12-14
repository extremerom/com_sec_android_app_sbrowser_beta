.class public final synthetic Lcom/sec/android/app/sbrowser/settings/autofill/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/a;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/a;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/a;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroid/widget/EditText;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->n(Landroid/widget/EditText;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsStorageFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsStorageFragment;->j(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsStorageFragment;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$3;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$3;->a(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$3;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$2;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$2;->a(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$2;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
