.class Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->addBillingAddressSpinner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$2;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$2;->lambda$onTouch$0()V

    return-void
.end method

.method private synthetic lambda$onTouch$0()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$2;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->n(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)Landroid/widget/Spinner;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Spinner;->performClick()Z

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$2;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardShowing(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->forcehideKeyboard(Landroid/app/Activity;)Z

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/autofill/a;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p0}, Lcom/sec/android/app/sbrowser/settings/autofill/a;-><init>(ILjava/lang/Object;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
