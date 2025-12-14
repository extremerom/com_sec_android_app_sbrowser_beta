.class public final Lm1/n;
.super Lm1/o;
.source "SourceFile"


# instance fields
.field public final a:Lsb/n;

.field public final b:LNc/q;

.field public final c:Lm1/H;

.field public final d:Lib/h;


# direct methods
.method public constructor <init>(Lsb/n;LNc/q;Lm1/H;Lib/h;)V
    .locals 1

    const-string v0, "transform"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerContext"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm1/n;->a:Lsb/n;

    iput-object p2, p0, Lm1/n;->b:LNc/q;

    iput-object p3, p0, Lm1/n;->c:Lm1/H;

    iput-object p4, p0, Lm1/n;->d:Lib/h;

    return-void
.end method
