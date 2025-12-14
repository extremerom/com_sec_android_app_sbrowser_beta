.class Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->setAutofillEditText(Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText$2;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText$2;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->s(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;)Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;->CARD_NUMBER_TYPE:Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText$2;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->u(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;Landroid/text/Editable;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText$2;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->t(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;)V

    :goto_0
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
