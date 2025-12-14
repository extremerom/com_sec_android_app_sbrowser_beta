.class Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->registerFieldChangedListener()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$4;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$4;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->H(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
