.class public final synthetic Lcom/sec/android/app/sbrowser/settings/autofill/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/i;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/i;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/i;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/i;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewHolder;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewHolder;->a(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewHolder;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->n(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->i(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
