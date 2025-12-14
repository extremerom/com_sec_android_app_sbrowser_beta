.class Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend$1;->this$0:Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend$1;->this$0:Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/Backend;->mListener:Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;->onResetErrorMessage()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
