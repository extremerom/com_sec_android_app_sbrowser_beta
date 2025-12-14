.class Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$DismissListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DismissListener"
.end annotation


# instance fields
.field private mListener:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface$OnDismissListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$DismissListener;->mListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->stopSession()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$DismissListener;->mListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {p0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
