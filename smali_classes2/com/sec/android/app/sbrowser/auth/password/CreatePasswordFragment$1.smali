.class Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$1;->this$0:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/RecordUserAction;->recordCancelButtonClickFromCreatePassword()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$1;->this$0:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->i(Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$1;->this$0:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
