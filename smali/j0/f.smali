.class public final Lj0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Z

.field public final c:Lj0/l;


# direct methods
.method public constructor <init>(Lj0/h;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lj0/f;->a:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj0/f;->b:Z

    iget-object v0, p1, Lj0/h;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    new-instance v0, LB0/a;

    const/16 v1, 0x17

    invoke-direct {v0, v1, p1}, LB0/a;-><init>(ILjava/lang/Object;)V

    sget-object p1, Lj0/m;->a:La0/L0;

    new-instance p1, Lj0/l;

    invoke-direct {p1, p2, v0}, Lj0/l;-><init>(Ljava/util/Map;Lsb/k;)V

    iput-object p1, p0, Lj0/f;->c:Lj0/l;

    return-void
.end method
