.class public final La2/c;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:La2/e;

.field public final synthetic b:Lx1/r;

.field public final synthetic c:LK1/c;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Z

.field public final synthetic f:Li0/a;

.field public final synthetic g:I

.field public final synthetic h:I


# direct methods
.method public constructor <init>(La2/e;Lx1/r;LK1/c;Ljava/lang/String;ZLi0/a;II)V
    .locals 0

    iput-object p1, p0, La2/c;->a:La2/e;

    iput-object p2, p0, La2/c;->b:Lx1/r;

    iput-object p3, p0, La2/c;->c:LK1/c;

    iput-object p4, p0, La2/c;->d:Ljava/lang/String;

    iput-boolean p5, p0, La2/c;->e:Z

    iput-object p6, p0, La2/c;->f:Li0/a;

    iput p7, p0, La2/c;->g:I

    iput p8, p0, La2/c;->h:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v6, p1

    check-cast v6, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, La2/c;->g:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, La0/d;->P(I)I

    move-result v7

    iget-object v5, p0, La2/c;->f:Li0/a;

    iget-object v3, p0, La2/c;->d:Ljava/lang/String;

    iget v8, p0, La2/c;->h:I

    iget-object v0, p0, La2/c;->a:La2/e;

    iget-object v1, p0, La2/c;->b:Lx1/r;

    iget-object v2, p0, La2/c;->c:LK1/c;

    iget-boolean v4, p0, La2/c;->e:Z

    invoke-virtual/range {v0 .. v8}, La2/e;->b(Lx1/r;LK1/c;Ljava/lang/String;ZLi0/a;La0/m;II)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
