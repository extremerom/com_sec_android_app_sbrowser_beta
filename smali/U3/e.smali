.class public final LU3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm4/b;


# instance fields
.field public final a:Ljava/security/MessageDigest;

.field public final b:Lm4/e;


# direct methods
.method public constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm4/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LU3/e;->b:Lm4/e;

    iput-object p1, p0, LU3/e;->a:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public final d()Lm4/e;
    .locals 0

    iget-object p0, p0, LU3/e;->b:Lm4/e;

    return-object p0
.end method
