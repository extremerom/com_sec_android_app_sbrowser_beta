.class Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$PaymentRequestObserverForTest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

.field final synthetic val$cardNumberPattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;Ljava/util/regex/Pattern;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$2;->val$cardNumberPattern:Ljava/util/regex/Pattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    const/4 p4, 0x0

    if-ne p2, p3, :cond_0

    return-object p4

    :cond_0
    iget-object p5, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

    invoke-virtual {p5}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->updateDoneButtonStatus()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$2;->val$cardNumberPattern:Ljava/util/regex/Pattern;

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_1

    return-object p4

    :cond_1
    const-string p0, ""

    return-object p0
.end method
