.class Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField$4;
.super Landroid/text/InputFilter$LengthFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->createTextLengthFilter()Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    move p4, p3

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-static {p2, p4}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->h(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;Z)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->f(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->updateDisplayedError(Z)V

    :cond_1
    return-object p1
.end method
