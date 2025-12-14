.class Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$2;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView;

.field final synthetic val$endIndex:I

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$ssb:Landroid/text/SpannableStringBuilder;

.field final synthetic val$startIndex:I


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$2;->this$0:Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView;->a(Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView;)Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$OnTextClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$2;->this$0:Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView;->a(Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView;)Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$OnTextClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$2;->val$id:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$OnTextClickListener;->onTextClick(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$2;->val$ssb:Landroid/text/SpannableStringBuilder;

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v1, -0xffff01

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$2;->val$startIndex:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$2;->val$endIndex:I

    const/16 v3, 0x21

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$2;->this$0:Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$2;->val$ssb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$2$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$2$1;-><init>(Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$2;)V

    const-wide/16 v1, 0x14

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
