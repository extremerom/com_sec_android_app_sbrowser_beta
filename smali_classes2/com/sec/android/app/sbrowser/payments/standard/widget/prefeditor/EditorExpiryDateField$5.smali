.class Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$5;
.super Landroid/text/InputFilter$LengthFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->createTextLengthFilter()Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$5;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$5;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->d(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)Landroid/widget/EditText;

    move-result-object p3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$5;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->a(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)Landroid/content/Context;

    move-result-object p0

    const p4, 0x7f140677

    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p4, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-static {p0, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p4, 0x1

    invoke-static {p2, p3, p4, p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->q(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;Landroid/widget/EditText;ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$5;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->d(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)Landroid/widget/EditText;

    move-result-object p2

    const/4 p3, 0x0

    const/4 p4, 0x0

    invoke-static {p0, p2, p3, p4}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->q(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;Landroid/widget/EditText;ZLjava/lang/String;)V

    :goto_0
    return-object p1
.end method
