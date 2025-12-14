.class public final synthetic Lcom/sec/android/app/sbrowser/payments/standard/ui/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/authentication/Authenticator$Callback;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureClickListener;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureClickListener;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/a;->a:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureClickListener;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/a;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/a;->a:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureClickListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/a;->b:Landroid/view/View;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureClickListener;->a(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureClickListener;Landroid/view/View;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V

    return-void
.end method
