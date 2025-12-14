.class public final Lmc/k;
.super Lmc/p;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lmc/g;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(LJb/C;)Lyc/w;
    .locals 0

    const-string p0, "module"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LJb/C;->j()LGb/i;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, LGb/l;->INT:LGb/l;

    invoke-virtual {p0, p1}, LGb/i;->t(LGb/l;)Lyc/A;

    move-result-object p0

    return-object p0
.end method
