.class public final synthetic Lcom/sec/android/app/sbrowser/secret_mode/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/secret_mode/d;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/d;->b:Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/d;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/d;->b:Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->b(Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->e(Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
