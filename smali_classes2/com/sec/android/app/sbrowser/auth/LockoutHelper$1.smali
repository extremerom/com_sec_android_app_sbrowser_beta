.class Lcom/sec/android/app/sbrowser/auth/LockoutHelper$1;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/auth/LockoutHelper;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/auth/LockoutHelper;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/auth/LockoutHelper;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/LockoutHelper$1;->this$0:Lcom/sec/android/app/sbrowser/auth/LockoutHelper;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/LockoutHelper$1;->this$0:Lcom/sec/android/app/sbrowser/auth/LockoutHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/auth/LockoutHelper;->a(Lcom/sec/android/app/sbrowser/auth/LockoutHelper;)Lcom/sec/android/app/sbrowser/auth/LockoutHelper$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/LockoutHelper$1;->this$0:Lcom/sec/android/app/sbrowser/auth/LockoutHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/LockoutHelper;->a(Lcom/sec/android/app/sbrowser/auth/LockoutHelper;)Lcom/sec/android/app/sbrowser/auth/LockoutHelper$Listener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/auth/LockoutHelper$Listener;->onLockoutFinished()V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    long-to-int p1, p1

    add-int/lit8 p1, p1, 0x1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/auth/LockoutHelper$1;->this$0:Lcom/sec/android/app/sbrowser/auth/LockoutHelper;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/auth/LockoutHelper;->b(Lcom/sec/android/app/sbrowser/auth/LockoutHelper;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/LockoutHelper$1;->this$0:Lcom/sec/android/app/sbrowser/auth/LockoutHelper;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/auth/LockoutHelper;->c(Lcom/sec/android/app/sbrowser/auth/LockoutHelper;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    rem-int/lit8 p1, p1, 0x5

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/LockoutHelper$1;->this$0:Lcom/sec/android/app/sbrowser/auth/LockoutHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/auth/LockoutHelper;->b(Lcom/sec/android/app/sbrowser/auth/LockoutHelper;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/LockoutHelper$1;->this$0:Lcom/sec/android/app/sbrowser/auth/LockoutHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/LockoutHelper;->b(Lcom/sec/android/app/sbrowser/auth/LockoutHelper;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
