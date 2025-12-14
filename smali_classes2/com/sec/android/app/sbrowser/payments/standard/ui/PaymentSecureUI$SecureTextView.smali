.class Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecureTextView"
.end annotation


# instance fields
.field private mIsPongdangEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setPongdangEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureTextView;->mIsPongdangEnabled:Z

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isPersonalDataSyncSet()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureTextView;->mIsPongdangEnabled:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->hasToken()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "(.)."

    const-string v1, "$1\u2022"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method
