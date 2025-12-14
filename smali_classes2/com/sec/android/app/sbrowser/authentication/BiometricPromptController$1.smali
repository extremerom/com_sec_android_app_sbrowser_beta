.class Lcom/sec/android/app/sbrowser/authentication/BiometricPromptController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/authentication/BiometricPromptController;->authenticate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/authentication/BiometricPromptController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/authentication/BiometricPromptController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/BiometricPromptController$1;->this$0:Lcom/sec/android/app/sbrowser/authentication/BiometricPromptController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p0, "BiometricPromptController"

    const-string p1, "onClick(): Cancel button clicked"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->handleCallback()V

    return-void
.end method
