.class public final synthetic Lcom/sec/android/app/sbrowser/settings/autofill/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/h;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/h;->b:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/h;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/h;->b:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->o(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->m(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
