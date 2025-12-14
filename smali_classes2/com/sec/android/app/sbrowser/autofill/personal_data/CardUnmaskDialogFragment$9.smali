.class Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->setOnClickEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;

.field final synthetic val$doUserInput:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$9;->this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$9;->val$doUserInput:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$9;Ljava/lang/Runnable;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$9;->lambda$onClick$0(Ljava/lang/Runnable;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V

    return-void
.end method

.method private synthetic lambda$onClick$0(Ljava/lang/Runnable;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V
    .locals 0

    iget-boolean p2, p2, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;->success:Z

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$9;->this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$9;->this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$9;->this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/u;->dismissAllowingStateLoss()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$9;->this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2310"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$9;->this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->x(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$9;->this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$9;->val$doUserInput:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->createOption()Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;

    move-result-object p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$9;->val$doUserInput:Ljava/lang/Runnable;

    new-instance v2, Lcom/sec/android/app/sbrowser/autofill/personal_data/d;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v2}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->authenticate(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Callback;)V

    :goto_0
    return-void
.end method
