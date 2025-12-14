.class public final synthetic Lcom/sec/android/app/sbrowser/secret_mode/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpResultListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/secret_mode/c;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/c;->b:Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/secret_mode/c;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Z)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/c;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/c;->b:Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/c;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->c(Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;Ljava/lang/Runnable;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/c;->b:Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/c;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->d(Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;Ljava/lang/String;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
