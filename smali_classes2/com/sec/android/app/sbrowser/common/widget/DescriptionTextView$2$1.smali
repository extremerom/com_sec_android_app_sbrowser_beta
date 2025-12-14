.class Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$2;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$2;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$2$1;->this$1:Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$2$1;->this$1:Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$2;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$2;->val$ssb:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$2$1;->this$1:Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$2;

    iget v3, v2, Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$2;->val$startIndex:I

    iget v2, v2, Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$2;->val$endIndex:I

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$2$1;->this$1:Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$2;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$2;->this$0:Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$2;->val$ssb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
