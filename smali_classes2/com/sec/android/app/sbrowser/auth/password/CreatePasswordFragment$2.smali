.class Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$2;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$2;->this$0:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$2;->this$0:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->k(Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;)Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;->Introduction:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/RecordUserAction;->recordNextButtonClickFromCreatePassword(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$2;->this$0:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->handlePassword()V

    return-void
.end method
