.class Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$8;
.super Landroid/text/InputFilter$LengthFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->updateStage(Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$8;->this$0:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$8;->this$0:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->h(Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;)Landroid/widget/TextView;

    move-result-object p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$8;->this$0:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->j(Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const p4, 0x7f1406a0

    invoke-virtual {p0, p4, p3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p1
.end method
