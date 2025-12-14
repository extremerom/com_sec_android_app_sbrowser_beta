.class public final LW1/f;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:LF3/f;

.field public final synthetic d:LJ1/b;

.field public final synthetic e:LV9/a;

.field public final synthetic f:Ly1/a;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Li0/a;

.field public final synthetic i:I

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;LF3/f;LJ1/b;LV9/a;Ly1/a;Ljava/lang/String;Li0/a;III)V
    .locals 0

    iput p10, p0, LW1/f;->a:I

    iput-object p1, p0, LW1/f;->b:Ljava/lang/String;

    iput-object p2, p0, LW1/f;->c:LF3/f;

    iput-object p3, p0, LW1/f;->d:LJ1/b;

    iput-object p4, p0, LW1/f;->e:LV9/a;

    iput-object p5, p0, LW1/f;->f:Ly1/a;

    iput-object p6, p0, LW1/f;->g:Ljava/lang/String;

    iput-object p7, p0, LW1/f;->h:Li0/a;

    iput p8, p0, LW1/f;->i:I

    iput p9, p0, LW1/f;->j:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget v0, p0, LW1/f;->a:I

    packed-switch v0, :pswitch_data_0

    move-object v8, p1

    check-cast v8, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, LW1/f;->i:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, La0/d;->P(I)I

    move-result v9

    iget-object v7, p0, LW1/f;->h:Li0/a;

    iget-object v1, p0, LW1/f;->b:Ljava/lang/String;

    iget-object v5, p0, LW1/f;->f:Ly1/a;

    iget v10, p0, LW1/f;->j:I

    iget-object v2, p0, LW1/f;->c:LF3/f;

    iget-object v3, p0, LW1/f;->d:LJ1/b;

    iget-object v4, p0, LW1/f;->e:LV9/a;

    iget-object v6, p0, LW1/f;->g:Ljava/lang/String;

    invoke-static/range {v1 .. v10}, LG5/h3;->b(Ljava/lang/String;LF3/f;LJ1/b;LV9/a;Ly1/a;Ljava/lang/String;Li0/a;La0/m;II)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    move-object v7, p1

    check-cast v7, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, LW1/f;->i:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, La0/d;->P(I)I

    move-result v8

    iget-object v6, p0, LW1/f;->h:Li0/a;

    iget-object v0, p0, LW1/f;->b:Ljava/lang/String;

    iget-object v4, p0, LW1/f;->f:Ly1/a;

    iget v9, p0, LW1/f;->j:I

    iget-object v1, p0, LW1/f;->c:LF3/f;

    iget-object v2, p0, LW1/f;->d:LJ1/b;

    iget-object v3, p0, LW1/f;->e:LV9/a;

    iget-object v5, p0, LW1/f;->g:Ljava/lang/String;

    invoke-static/range {v0 .. v9}, LG5/h3;->b(Ljava/lang/String;LF3/f;LJ1/b;LV9/a;Ly1/a;Ljava/lang/String;Li0/a;La0/m;II)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
