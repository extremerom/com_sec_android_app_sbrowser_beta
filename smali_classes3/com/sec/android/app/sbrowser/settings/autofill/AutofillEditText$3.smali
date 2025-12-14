.class Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText$3;
.super Landroid/text/InputFilter$LengthFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->getMaxLengthFilterWithTip(Landroid/content/Context;III)Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$msgMaxLength:I

.field final synthetic val$msgStringId:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;ILandroid/content/Context;II)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText$3;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText$3;->val$ctx:Landroid/content/Context;

    iput p4, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText$3;->val$msgStringId:I

    iput p5, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText$3;->val$msgMaxLength:I

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText$3;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText$3;->val$ctx:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget p4, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText$3;->val$msgStringId:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText$3;->val$msgMaxLength:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p3, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->v(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method
