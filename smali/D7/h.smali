.class public final LD7/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD7/k;


# instance fields
.field public final a:LD7/l;

.field public final b:LR5/i;


# direct methods
.method public constructor <init>(LD7/l;LR5/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD7/h;->a:LD7/l;

    iput-object p2, p0, LD7/h;->b:LR5/i;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)Z
    .locals 0

    iget-object p0, p0, LD7/h;->b:LR5/i;

    invoke-virtual {p0, p1}, LR5/i;->c(Ljava/lang/Exception;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final b(LE7/b;)Z
    .locals 7

    sget-object v0, LE7/d;->REGISTERED:LE7/d;

    iget-object v1, p1, LE7/b;->b:LE7/d;

    if-ne v1, v0, :cond_1

    iget-object v0, p0, LD7/h;->a:LD7/l;

    invoke-virtual {v0, p1}, LD7/l;->a(LE7/b;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v2, p1, LE7/b;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v0, LD7/a;

    iget-wide v3, p1, LE7/b;->e:J

    iget-wide v5, p1, LE7/b;->f:J

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, LD7/a;-><init>(Ljava/lang/String;JJ)V

    iget-object p0, p0, LD7/h;->b:LR5/i;

    invoke-virtual {p0, v0}, LR5/i;->b(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null token"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
