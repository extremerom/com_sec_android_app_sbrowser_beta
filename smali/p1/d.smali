.class public final Lp1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm1/h;


# instance fields
.field public final a:Lm1/G;


# direct methods
.method public constructor <init>(Lm1/G;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp1/d;->a:Lm1/G;

    return-void
.end method


# virtual methods
.method public final a(Lsb/n;Lkb/c;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lp1/c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lp1/c;-><init>(Lsb/n;Lib/c;)V

    iget-object p0, p0, Lp1/d;->a:Lm1/G;

    invoke-virtual {p0, v0, p2}, Lm1/G;->a(Lsb/n;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getData()LQc/h;
    .locals 0

    iget-object p0, p0, Lp1/d;->a:Lm1/G;

    iget-object p0, p0, Lm1/G;->d:LQc/k;

    return-object p0
.end method
