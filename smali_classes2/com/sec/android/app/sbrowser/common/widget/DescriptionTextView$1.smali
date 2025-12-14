.class Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$1;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView;->setDescription(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$1;->this$0:Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$1;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$1;->this$0:Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView;->a(Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView;)Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$OnTextClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$1;->this$0:Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView;->a(Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView;)Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$OnTextClickListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$1;->val$id:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$OnTextClickListener;->onTextClick(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
