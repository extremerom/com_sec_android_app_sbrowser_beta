.class public final Le2/j;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lx1/r;

.field public final synthetic c:Le2/l;

.field public final synthetic d:I

.field public final synthetic e:F

.field public final synthetic f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lx1/r;Le2/l;IFI)V
    .locals 0

    iput-object p1, p0, Le2/j;->a:Ljava/lang/String;

    iput-object p2, p0, Le2/j;->b:Lx1/r;

    iput-object p3, p0, Le2/j;->c:Le2/l;

    iput p4, p0, Le2/j;->d:I

    iput p5, p0, Le2/j;->e:F

    iput p6, p0, Le2/j;->f:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v5, p1

    check-cast v5, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, Le2/j;->f:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, La0/d;->P(I)I

    move-result v6

    iget-object v1, p0, Le2/j;->b:Lx1/r;

    iget-object v2, p0, Le2/j;->c:Le2/l;

    iget-object v0, p0, Le2/j;->a:Ljava/lang/String;

    iget v3, p0, Le2/j;->d:I

    iget v4, p0, Le2/j;->e:F

    invoke-static/range {v0 .. v6}, LG5/H2;->a(Ljava/lang/String;Lx1/r;Le2/l;IFLa0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
