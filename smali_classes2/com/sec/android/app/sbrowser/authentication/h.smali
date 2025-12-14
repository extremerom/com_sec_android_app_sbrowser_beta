.class public final synthetic Lcom/sec/android/app/sbrowser/authentication/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pass/SpassFingerprint$RegisterListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/h;->a:Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;

    return-void
.end method


# virtual methods
.method public final onFinished()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/h;->a:Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintRegistration;->a(Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;)V

    return-void
.end method
