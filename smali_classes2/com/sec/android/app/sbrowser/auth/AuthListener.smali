.class public interface abstract Lcom/sec/android/app/sbrowser/auth/AuthListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY:Lcom/sec/android/app/sbrowser/auth/AuthListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/auth/AuthListener$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/auth/AuthListener$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/auth/AuthListener;->EMPTY:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    return-void
.end method


# virtual methods
.method public onAuthBlock()V
    .locals 0

    return-void
.end method

.method public onAuthError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onAuthFail()V
    .locals 0

    return-void
.end method

.method public onAuthLockout(J)V
    .locals 0

    return-void
.end method

.method public onAuthRetry()V
    .locals 0

    return-void
.end method

.method public onAuthSuccess()V
    .locals 0

    return-void
.end method
