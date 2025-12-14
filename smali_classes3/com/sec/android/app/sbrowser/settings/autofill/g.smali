.class public final synthetic Lcom/sec/android/app/sbrowser/settings/autofill/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lw2/A;


# direct methods
.method public synthetic constructor <init>(Lw2/A;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/g;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/g;->b:Lw2/A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/g;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/g;->b:Lw2/A;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsStorageFragment;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsStorageFragment;->k(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsStorageFragment;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->p(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;Landroid/content/DialogInterface;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
