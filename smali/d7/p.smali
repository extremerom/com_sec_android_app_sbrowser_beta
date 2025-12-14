.class public abstract Ld7/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LL3/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LL3/f;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, LL3/f;-><init>(I)V

    sput-object v0, Ld7/p;->a:LL3/f;

    return-void
.end method

.method public static a(I)[B
    .locals 1

    new-array p0, p0, [B

    sget-object v0, Ld7/p;->a:LL3/f;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/SecureRandom;

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p0
.end method
