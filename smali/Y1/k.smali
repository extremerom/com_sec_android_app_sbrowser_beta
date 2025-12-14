.class public final LY1/k;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:Lcom/samsung/android/motionphoto/utils/ex/e;

.field public final synthetic b:I

.field public final synthetic c:Lx1/r;

.field public final synthetic d:Z

.field public final synthetic e:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/motionphoto/utils/ex/e;ILx1/r;ZZ)V
    .locals 0

    iput-object p1, p0, LY1/k;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    iput p2, p0, LY1/k;->b:I

    iput-object p3, p0, LY1/k;->c:Lx1/r;

    iput-boolean p4, p0, LY1/k;->d:Z

    iput-boolean p5, p0, LY1/k;->e:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, LB1/k;

    const-string v0, "$this$LazyColumn"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, LY1/k;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v0, v7, Lcom/samsung/android/motionphoto/utils/ex/e;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget v1, p0, LY1/k;->b:I

    invoke-static {v0, v1}, Lfb/n;->b0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-instance v8, LX1/b;

    const/4 v1, 0x1

    invoke-direct {v8, v1, v2}, LX1/b;-><init>(ILjava/util/List;)V

    new-instance v9, LY1/j;

    iget-object v4, p0, LY1/k;->c:Lx1/r;

    iget-boolean v5, p0, LY1/k;->d:Z

    iget v3, p0, LY1/k;->b:I

    iget-boolean v6, p0, LY1/k;->e:Z

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, LY1/j;-><init>(Ljava/util/List;ILx1/r;ZZLcom/samsung/android/motionphoto/utils/ex/e;)V

    new-instance p0, Li0/a;

    const v1, -0x53c3d895

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v9}, Li0/a;-><init>(IZLdb/b;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v3}, LX1/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, LB1/j;

    invoke-direct {v3, p0, v1}, LB1/j;-><init>(Li0/a;I)V

    new-instance v4, Li0/a;

    const v5, 0x12c3ca0

    invoke-direct {v4, v5, v2, v3}, Li0/a;-><init>(IZLdb/b;)V

    const-wide/high16 v5, -0x8000000000000000L

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v5, Ldb/j;

    invoke-direct {v5, v3, v4}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, p1, LB1/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
