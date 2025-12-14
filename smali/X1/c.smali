.class public final LX1/c;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/p;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:I

.field public final synthetic c:Lm0/c;

.field public final synthetic d:Lm0/m;

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:Lcom/samsung/android/motionphoto/utils/ex/e;


# direct methods
.method public constructor <init>(Ljava/util/List;ILm0/c;Lm0/m;ZZLcom/samsung/android/motionphoto/utils/ex/e;)V
    .locals 0

    iput-object p1, p0, LX1/c;->a:Ljava/util/List;

    iput p2, p0, LX1/c;->b:I

    iput-object p3, p0, LX1/c;->c:Lm0/c;

    iput-object p4, p0, LX1/c;->d:Lm0/m;

    iput-boolean p5, p0, LX1/c;->e:Z

    iput-boolean p6, p0, LX1/c;->f:Z

    iput-object p7, p0, LX1/c;->g:Lcom/samsung/android/motionphoto/utils/ex/e;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, LV/g;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v1

    move-object v8, p3

    check-cast v8, La0/m;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p2

    const-string p3, "$this$items"

    invoke-static {p1, p3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p3, p2, 0xe

    if-nez p3, :cond_1

    move-object p3, v8

    check-cast p3, La0/q;

    invoke-virtual {p3, p1}, La0/q;->e(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    or-int/2addr p1, p2

    goto :goto_1

    :cond_1
    move p1, p2

    :goto_1
    and-int/lit8 p2, p2, 0x70

    if-nez p2, :cond_3

    move-object p2, v8

    check-cast p2, La0/q;

    invoke-virtual {p2, v1}, La0/q;->c(I)Z

    move-result p2

    if-eqz p2, :cond_2

    const/16 p2, 0x20

    goto :goto_2

    :cond_2
    const/16 p2, 0x10

    :goto_2
    or-int/2addr p1, p2

    :cond_3
    and-int/lit16 p2, p1, 0x2db

    const/16 p3, 0x92

    if-ne p2, p3, :cond_5

    move-object p2, v8

    check-cast p2, La0/q;

    invoke-virtual {p2}, La0/q;->x()Z

    move-result p3

    if-nez p3, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, La0/q;->K()V

    goto :goto_4

    :cond_5
    :goto_3
    iget-object p2, p0, LX1/c;->a:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, LR1/r;

    iget-object p2, p0, LX1/c;->g:Lcom/samsung/android/motionphoto/utils/ex/e;

    const p3, 0x1000008

    and-int/lit8 p1, p1, 0x70

    or-int v9, p1, p3

    iget-object v3, p0, LX1/c;->c:Lm0/c;

    iget-object v4, p0, LX1/c;->d:Lm0/m;

    iget-boolean v5, p0, LX1/c;->e:Z

    iget v2, p0, LX1/c;->b:I

    iget-boolean v6, p0, LX1/c;->f:Z

    iget-object p0, p2, Lcom/samsung/android/motionphoto/utils/ex/e;->c:Ljava/lang/Object;

    move-object v7, p0

    check-cast v7, Lf2/a;

    invoke-static/range {v0 .. v9}, LG5/q3;->a(LR1/r;IILm0/c;Lm0/m;ZZLf2/a;La0/m;I)V

    :goto_4
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
