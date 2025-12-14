.class public final LV/v;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:Lm0/m;

.field public final synthetic b:LV/J;

.field public final synthetic c:LU/t;

.field public final synthetic d:Z

.field public final synthetic e:LS/g;

.field public final synthetic f:Z

.field public final synthetic g:I

.field public final synthetic h:Lm0/b;

.field public final synthetic i:LU/d;

.field public final synthetic j:Lm0/c;

.field public final synthetic k:LU/c;

.field public final synthetic l:LX1/d;

.field public final synthetic m:I

.field public final synthetic n:I


# direct methods
.method public constructor <init>(Lm0/m;LV/J;LU/t;ZLS/g;ZILm0/b;LU/d;Lm0/c;LU/c;LX1/d;II)V
    .locals 0

    iput-object p1, p0, LV/v;->a:Lm0/m;

    iput-object p2, p0, LV/v;->b:LV/J;

    iput-object p3, p0, LV/v;->c:LU/t;

    iput-boolean p4, p0, LV/v;->d:Z

    iput-object p5, p0, LV/v;->e:LS/g;

    iput-boolean p6, p0, LV/v;->f:Z

    iput p7, p0, LV/v;->g:I

    iput-object p8, p0, LV/v;->h:Lm0/b;

    iput-object p9, p0, LV/v;->i:LU/d;

    iput-object p10, p0, LV/v;->j:Lm0/c;

    iput-object p11, p0, LV/v;->k:LU/c;

    iput-object p12, p0, LV/v;->l:LX1/d;

    iput p13, p0, LV/v;->m:I

    iput p14, p0, LV/v;->n:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    check-cast v12, La0/m;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    iget v1, v0, LV/v;->m:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, La0/d;->P(I)I

    move-result v13

    iget v1, v0, LV/v;->n:I

    invoke-static {v1}, La0/d;->P(I)I

    move-result v14

    iget-object v11, v0, LV/v;->l:LX1/d;

    iget-object v8, v0, LV/v;->i:LU/d;

    iget-object v9, v0, LV/v;->j:Lm0/c;

    iget-object v1, v0, LV/v;->a:Lm0/m;

    iget-object v2, v0, LV/v;->b:LV/J;

    iget-object v3, v0, LV/v;->c:LU/t;

    iget-boolean v4, v0, LV/v;->d:Z

    iget-object v5, v0, LV/v;->e:LS/g;

    iget-boolean v6, v0, LV/v;->f:Z

    iget v7, v0, LV/v;->g:I

    iget-object v10, v0, LV/v;->h:Lm0/b;

    iget-object v15, v0, LV/v;->k:LU/c;

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v10

    move-object v10, v15

    invoke-static/range {v0 .. v14}, LG5/Q2;->b(Lm0/m;LV/J;LU/t;ZLS/g;ZILm0/b;LU/d;Lm0/c;LU/c;LX1/d;La0/m;II)V

    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0
.end method
