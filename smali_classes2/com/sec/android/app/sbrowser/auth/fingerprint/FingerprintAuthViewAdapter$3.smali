.class Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->onAuthSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter$3;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter$3;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;->d(Lcom/sec/android/app/sbrowser/auth/fingerprint/FingerprintAuthViewAdapter;)Lcom/sec/android/app/sbrowser/auth/AuthView;

    move-result-object p0

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/auth/AuthView;->onAuthSuccess(I)V

    return-void
.end method
