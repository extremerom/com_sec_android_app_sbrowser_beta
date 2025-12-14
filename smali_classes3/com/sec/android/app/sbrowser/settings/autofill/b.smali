.class public final synthetic Lcom/sec/android/app/sbrowser/settings/autofill/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/b;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/b;->b:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/b;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/b;->b:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;->F(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;Landroid/widget/CompoundButton;Z)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardPreferenceFragment;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardPreferenceFragment;->F(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardPreferenceFragment;Landroid/widget/CompoundButton;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
