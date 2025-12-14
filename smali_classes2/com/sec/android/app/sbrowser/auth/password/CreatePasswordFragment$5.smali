.class Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$5;->this$0:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$5;->this$0:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->k(Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;)Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;->ConfirmWrong:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$5;->this$0:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;

    sget-object v0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;->NeedToConfirm:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->l(Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$5;->this$0:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->n(Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;)V

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
