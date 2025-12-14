.class final Lcom/samsung/android/sdk/pass/SpassFingerprint$b;
.super Lcom/samsung/android/fingerprint/IFingerprintClient$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pass/SpassFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;

.field private synthetic b:Lcom/samsung/android/sdk/pass/SpassFingerprint;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/pass/SpassFingerprint;Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->b:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/IFingerprintClient$Stub;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/pass/SpassFingerprint;Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;-><init>(Lcom/samsung/android/sdk/pass/SpassFingerprint;Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/sdk/pass/SpassFingerprint$b;)Lcom/samsung/android/sdk/pass/SpassFingerprint;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->b:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;

    return-void
.end method

.method public final a(Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;

    return-void
.end method

.method public final onFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 5

    const-string v0, "SpassFingerprintSDK"

    if-nez p1, :cond_0

    const-string p0, "onFingerprintEvent: null event will be ignored!"

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->b:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    invoke-static {v2}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Landroid/os/Handler;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->b:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    invoke-static {v2}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x10

    goto :goto_1

    :cond_2
    const/16 v2, 0xd

    :goto_1
    iget v3, p1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    if-ne v3, v2, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mCompletedEventId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->b:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    invoke-static {v2}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->c(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->b:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    invoke-static {v2}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->d(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->b:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    invoke-static {v2}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->d(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->b:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    invoke-static {v3}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->c(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->unregisterClient(Landroid/os/IBinder;)Z

    iget-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->b:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    invoke-static {v2}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e(Lcom/samsung/android/sdk/pass/SpassFingerprint;)V

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->b:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    invoke-static {v2}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Lcom/samsung/android/fingerprint/IFingerprintClient;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->b:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    invoke-static {v2}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->g(Lcom/samsung/android/sdk/pass/SpassFingerprint;)V

    :cond_4
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->b:Lcom/samsung/android/sdk/pass/SpassFingerprint;

    invoke-static {v2}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sdk/pass/c;

    invoke-direct {v3, p0, p1, v1}, Lcom/samsung/android/sdk/pass/c;-><init>(Lcom/samsung/android/sdk/pass/SpassFingerprint$b;Lcom/samsung/android/fingerprint/FingerprintEvent;Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_3
    return-void

    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "onFingerprintEvent: Error : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method
