.class public Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/authentication/Authenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public final nonce:[B

.field public final success:Z

.field public final token:[B

.field public final type:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->UNKNOWN:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;-><init>(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;Z[B[B)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;Z[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;->type:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;->success:Z

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;->nonce:[B

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;->token:[B

    return-void
.end method
