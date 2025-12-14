.class public final synthetic Lcom/sec/android/app/sbrowser/secret_mode/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/auth/AuthCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/secret_mode/b;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/b;->b:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAuthResult(Z)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/b;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/b;->b:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->b(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;Z)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->d(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
