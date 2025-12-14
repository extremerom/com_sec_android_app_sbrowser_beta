.class public Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/authentication/Authenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Option"
.end annotation


# instance fields
.field public enableSamsungPass:Z

.field public nonce:[B

.field public type:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;-><init>(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;Z[B)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;Z[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;->type:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;->enableSamsungPass:Z

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;->nonce:[B

    return-void
.end method
