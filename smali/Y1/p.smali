.class public final LY1/p;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:LF3/f;

.field public final synthetic c:Ly1/a;

.field public final synthetic d:LV9/a;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Li0/a;

.field public final synthetic g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;LF3/f;Ly1/a;LV9/a;Ljava/lang/String;Li0/a;I)V
    .locals 0

    iput-object p1, p0, LY1/p;->a:Ljava/lang/String;

    iput-object p2, p0, LY1/p;->b:LF3/f;

    iput-object p3, p0, LY1/p;->c:Ly1/a;

    iput-object p4, p0, LY1/p;->d:LV9/a;

    iput-object p5, p0, LY1/p;->e:Ljava/lang/String;

    iput-object p6, p0, LY1/p;->f:Li0/a;

    iput p7, p0, LY1/p;->g:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v6, p1

    check-cast v6, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, LY1/p;->g:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, La0/d;->P(I)I

    move-result v7

    iget-object v5, p0, LY1/p;->f:Li0/a;

    iget-object v0, p0, LY1/p;->a:Ljava/lang/String;

    iget-object v2, p0, LY1/p;->c:Ly1/a;

    iget-object v3, p0, LY1/p;->d:LV9/a;

    iget-object v1, p0, LY1/p;->b:LF3/f;

    iget-object v4, p0, LY1/p;->e:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, LG5/y3;->b(Ljava/lang/String;LF3/f;Ly1/a;LV9/a;Ljava/lang/String;Li0/a;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
