.class public final synthetic Lcom/sec/android/app/sbrowser/secret_mode/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

.field public final synthetic c:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;Landroid/app/Activity;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/secret_mode/a;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/a;->b:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/secret_mode/a;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/a;->b:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/a;->c:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->c(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;Landroid/app/Activity;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/a;->b:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/a;->c:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->a(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;Landroid/app/Activity;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
