.class Lcom/sec/android/app/sbrowser/auth/FakeAuthenticator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/auth/Authenticator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/auth/AuthListener;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/FakeAuthenticator;->lambda$startAuth$0(Lcom/sec/android/app/sbrowser/auth/AuthListener;)V

    return-void
.end method

.method private static synthetic lambda$startAuth$0(Lcom/sec/android/app/sbrowser/auth/AuthListener;)V
    .locals 2

    const-string v0, "FakeAuthenticator"

    const-string v1, "startAuth call fake onSucceeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthSuccess()V

    return-void
.end method


# virtual methods
.method public cancelAuth()V
    .locals 0

    return-void
.end method

.method public startAuth(Lcom/sec/android/app/sbrowser/auth/AuthParam;Lcom/sec/android/app/sbrowser/auth/AuthListener;)V
    .locals 2

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance p1, Lcom/sec/android/app/sbrowser/auth/l;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2}, Lcom/sec/android/app/sbrowser/auth/l;-><init>(ILjava/lang/Object;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
