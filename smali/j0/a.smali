.class public final Lj0/a;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:Lj0/b;

.field public final synthetic b:Lo3/c;

.field public final synthetic c:Lj0/k;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lj0/b;Lo3/c;Lj0/k;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lj0/a;->a:Lj0/b;

    iput-object p2, p0, Lj0/a;->b:Lo3/c;

    iput-object p3, p0, Lj0/a;->c:Lj0/k;

    iput-object p4, p0, Lj0/a;->d:Ljava/lang/String;

    iput-object p5, p0, Lj0/a;->e:Ljava/lang/Object;

    iput-object p6, p0, Lj0/a;->f:[Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lj0/a;->a:Lj0/b;

    iget-object v1, v0, Lj0/b;->b:Lj0/k;

    iget-object v2, p0, Lj0/a;->c:Lj0/k;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    iput-object v2, v0, Lj0/b;->b:Lj0/k;

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lj0/b;->c:Ljava/lang/String;

    iget-object v4, p0, Lj0/a;->d:Ljava/lang/String;

    invoke-static {v2, v4}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iput-object v4, v0, Lj0/b;->c:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    iget-object v1, p0, Lj0/a;->b:Lo3/c;

    iput-object v1, v0, Lj0/b;->a:Lo3/c;

    iget-object v1, p0, Lj0/a;->e:Ljava/lang/Object;

    iput-object v1, v0, Lj0/b;->d:Ljava/lang/Object;

    iget-object p0, p0, Lj0/a;->f:[Ljava/lang/Object;

    iput-object p0, v0, Lj0/b;->e:[Ljava/lang/Object;

    iget-object p0, v0, Lj0/b;->f:Lj0/j;

    if-eqz p0, :cond_2

    if-eqz v3, :cond_2

    check-cast p0, LZ3/x;

    invoke-virtual {p0}, LZ3/x;->K()V

    const/4 p0, 0x0

    iput-object p0, v0, Lj0/b;->f:Lj0/j;

    invoke-virtual {v0}, Lj0/b;->d()V

    :cond_2
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
