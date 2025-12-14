.class public final LV/f;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:Lm0/m;

.field public final synthetic b:LV/J;

.field public final synthetic c:LU/t;

.field public final synthetic d:Z

.field public final synthetic e:LU/d;

.field public final synthetic f:Lm0/b;

.field public final synthetic g:LS/g;

.field public final synthetic h:Z

.field public final synthetic i:LX1/d;

.field public final synthetic j:I


# direct methods
.method public constructor <init>(Lm0/m;LV/J;LU/t;ZLU/d;Lm0/b;LS/g;ZLX1/d;I)V
    .locals 0

    iput-object p1, p0, LV/f;->a:Lm0/m;

    iput-object p2, p0, LV/f;->b:LV/J;

    iput-object p3, p0, LV/f;->c:LU/t;

    iput-boolean p4, p0, LV/f;->d:Z

    iput-object p5, p0, LV/f;->e:LU/d;

    iput-object p6, p0, LV/f;->f:Lm0/b;

    iput-object p7, p0, LV/f;->g:LS/g;

    iput-boolean p8, p0, LV/f;->h:Z

    iput-object p9, p0, LV/f;->i:LX1/d;

    iput p10, p0, LV/f;->j:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v9, p1

    check-cast v9, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, LV/f;->j:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, La0/d;->P(I)I

    move-result v10

    iget-object v8, p0, LV/f;->i:LX1/d;

    iget-object v5, p0, LV/f;->f:Lm0/b;

    iget-object v6, p0, LV/f;->g:LS/g;

    iget-object v0, p0, LV/f;->a:Lm0/m;

    iget-object v1, p0, LV/f;->b:LV/J;

    iget-object v2, p0, LV/f;->c:LU/t;

    iget-boolean v3, p0, LV/f;->d:Z

    iget-object v4, p0, LV/f;->e:LU/d;

    iget-boolean v7, p0, LV/f;->h:Z

    invoke-static/range {v0 .. v10}, LG5/I2;->a(Lm0/m;LV/J;LU/t;ZLU/d;Lm0/b;LS/g;ZLX1/d;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
