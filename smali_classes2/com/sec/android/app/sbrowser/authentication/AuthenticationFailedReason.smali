.class Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final errorCode:I

.field public final errorMessage:Ljava/lang/String;

.field public final errorType:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;->errorType:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;->errorCode:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;->errorMessage:Ljava/lang/String;

    return-void
.end method
