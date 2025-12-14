.class public final LX1/d;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:Lcom/samsung/android/motionphoto/utils/ex/e;

.field public final synthetic b:I

.field public final synthetic c:Lm0/c;

.field public final synthetic d:Lm0/m;

.field public final synthetic e:Z

.field public final synthetic f:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/motionphoto/utils/ex/e;ILm0/c;Lm0/m;ZZ)V
    .locals 0

    iput-object p1, p0, LX1/d;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    iput p2, p0, LX1/d;->b:I

    iput-object p3, p0, LX1/d;->c:Lm0/c;

    iput-object p4, p0, LX1/d;->d:Lm0/m;

    iput-boolean p5, p0, LX1/d;->e:Z

    iput-boolean p6, p0, LX1/d;->f:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    check-cast p1, LV/E;

    const-string v0, "$this$LazyColumn"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, p0, LX1/d;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v0, v8, Lcom/samsung/android/motionphoto/utils/ex/e;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget v1, p0, LX1/d;->b:I

    invoke-static {v0, v1}, Lfb/n;->b0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-instance v9, LX1/b;

    const/4 v1, 0x0

    invoke-direct {v9, v1, v2}, LX1/b;-><init>(ILjava/util/List;)V

    new-instance v10, LX1/c;

    iget-object v4, p0, LX1/d;->c:Lm0/c;

    iget-object v5, p0, LX1/d;->d:Lm0/m;

    iget-boolean v6, p0, LX1/d;->e:Z

    iget v3, p0, LX1/d;->b:I

    iget-boolean v7, p0, LX1/d;->f:Z

    move-object v1, v10

    invoke-direct/range {v1 .. v8}, LX1/c;-><init>(Ljava/util/List;ILm0/c;Lm0/m;ZZLcom/samsung/android/motionphoto/utils/ex/e;)V

    new-instance p0, Li0/a;

    const v1, -0x410876af

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v10}, Li0/a;-><init>(IZLdb/b;)V

    new-instance v1, Lt9/c;

    const/4 v2, 0x6

    invoke-direct {v1, v2, v9, p0}, Lt9/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p1, LV/E;->a:LG5/g4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, LW/d;

    iget v2, p0, LG5/g4;->b:I

    invoke-direct {p1, v2, v0, v1}, LW/d;-><init>(IILt9/c;)V

    iget v1, p0, LG5/g4;->b:I

    add-int/2addr v1, v0

    iput v1, p0, LG5/g4;->b:I

    iget-object p0, p0, LG5/g4;->c:Ljava/lang/Object;

    check-cast p0, Lc0/d;

    invoke-virtual {p0, p1}, Lc0/d;->c(Ljava/lang/Object;)V

    :goto_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :cond_1
    const-string p0, "size should be >=0, but was "

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
