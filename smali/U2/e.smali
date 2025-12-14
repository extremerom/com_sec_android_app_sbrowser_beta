.class public final LU2/e;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field public final a:LU2/f;

.field public final b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(LU2/f;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "callbackName"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    iput-object p1, p0, LU2/e;->a:LU2/f;

    iput-object p2, p0, LU2/e;->b:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final getCause()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, LU2/e;->b:Ljava/lang/Throwable;

    return-object p0
.end method
