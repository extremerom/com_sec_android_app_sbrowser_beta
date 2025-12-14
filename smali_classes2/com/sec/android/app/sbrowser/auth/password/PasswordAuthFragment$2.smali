.class Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment$2;->this$0:Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment$2;->this$0:Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->F(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment$2;->this$0:Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->access$000(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f1400ef

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method
