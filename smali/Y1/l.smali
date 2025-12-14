.class public final LY1/l;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/o;


# instance fields
.field public final synthetic a:Lcom/samsung/android/motionphoto/utils/ex/e;

.field public final synthetic b:I

.field public final synthetic c:Lx1/r;

.field public final synthetic d:Z

.field public final synthetic e:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/motionphoto/utils/ex/e;ILx1/r;ZZ)V
    .locals 0

    iput-object p1, p0, LY1/l;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    iput p2, p0, LY1/l;->b:I

    iput-object p3, p0, LY1/l;->c:Lx1/r;

    iput-boolean p4, p0, LY1/l;->d:Z

    iput-boolean p5, p0, LY1/l;->e:Z

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, LK1/i;

    check-cast p2, La0/m;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    const-string p3, "$this$Column"

    invoke-static {p1, p3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, LY1/l;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object p3, p1, Lcom/samsung/android/motionphoto/utils/ex/e;->b:Ljava/lang/Object;

    check-cast p3, Ljava/util/ArrayList;

    iget v0, p0, LY1/l;->b:I

    invoke-static {p3, v0}, Lfb/n;->b0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/lang/Iterable;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v9, v1, 0x1

    if-ltz v1, :cond_0

    check-cast v0, LR1/r;

    iget-object v2, p1, Lcom/samsung/android/motionphoto/utils/ex/e;->c:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Lf2/a;

    const v8, 0x1000008

    iget v2, p0, LY1/l;->b:I

    iget-object v3, p0, LY1/l;->c:Lx1/r;

    iget-boolean v4, p0, LY1/l;->d:Z

    iget-boolean v5, p0, LY1/l;->e:Z

    move-object v7, p2

    invoke-static/range {v0 .. v8}, LG5/w3;->c(LR1/r;IILx1/r;ZZLf2/a;La0/m;I)V

    move v1, v9

    goto :goto_0

    :cond_0
    invoke-static {}, Lfb/o;->l()V

    const/4 p0, 0x0

    throw p0

    :cond_1
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
