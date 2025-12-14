.class public final synthetic Lcom/sec/android/app/sbrowser/auth/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/auth/AuthManager;

.field public final synthetic c:Landroid/os/Bundle;

.field public final synthetic d:Lcom/sec/android/app/sbrowser/auth/AuthCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/auth/AuthManager;Landroid/os/Bundle;Lcom/sec/android/app/sbrowser/auth/AuthCallback;I)V
    .locals 0

    iput p4, p0, Lcom/sec/android/app/sbrowser/auth/i;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/i;->b:Lcom/sec/android/app/sbrowser/auth/AuthManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/auth/i;->c:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/auth/i;->d:Lcom/sec/android/app/sbrowser/auth/AuthCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityResult(I)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/i;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/i;->d:Lcom/sec/android/app/sbrowser/auth/AuthCallback;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/i;->b:Lcom/sec/android/app/sbrowser/auth/AuthManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/i;->c:Landroid/os/Bundle;

    invoke-static {v1, p0, v0, p1}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->e(Lcom/sec/android/app/sbrowser/auth/AuthManager;Landroid/os/Bundle;Lcom/sec/android/app/sbrowser/auth/AuthCallback;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/i;->d:Lcom/sec/android/app/sbrowser/auth/AuthCallback;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/i;->b:Lcom/sec/android/app/sbrowser/auth/AuthManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/i;->c:Landroid/os/Bundle;

    invoke-static {v1, p0, v0, p1}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->a(Lcom/sec/android/app/sbrowser/auth/AuthManager;Landroid/os/Bundle;Lcom/sec/android/app/sbrowser/auth/AuthCallback;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
