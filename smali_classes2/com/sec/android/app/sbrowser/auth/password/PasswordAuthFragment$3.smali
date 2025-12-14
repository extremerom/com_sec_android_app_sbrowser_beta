.class Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->updateCommonLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment$3;->this$0:Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment$3;->this$0:Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->C(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->G(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;Landroid/widget/Button;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment$3;->this$0:Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->C(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->H(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;Landroid/widget/Button;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment$3;->this$0:Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->D(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->G(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;Landroid/widget/Button;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment$3;->this$0:Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->D(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->H(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;Landroid/widget/Button;Z)V

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
