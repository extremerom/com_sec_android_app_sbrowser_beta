.class public final LW1/c;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/samsung/android/motionphoto/utils/ex/e;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:Z

.field public final synthetic h:Z

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/motionphoto/utils/ex/e;ZZFFZZII)V
    .locals 0

    iput p9, p0, LW1/c;->a:I

    iput-object p1, p0, LW1/c;->b:Lcom/samsung/android/motionphoto/utils/ex/e;

    iput-boolean p2, p0, LW1/c;->c:Z

    iput-boolean p3, p0, LW1/c;->d:Z

    iput p4, p0, LW1/c;->e:F

    iput p5, p0, LW1/c;->f:F

    iput-boolean p6, p0, LW1/c;->g:Z

    iput-boolean p7, p0, LW1/c;->h:Z

    iput p8, p0, LW1/c;->i:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, LW1/c;->a:I

    packed-switch v0, :pswitch_data_0

    move-object v8, p1

    check-cast v8, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, LW1/c;->i:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, La0/d;->P(I)I

    move-result v9

    iget-object v1, p0, LW1/c;->b:Lcom/samsung/android/motionphoto/utils/ex/e;

    iget v4, p0, LW1/c;->e:F

    iget v5, p0, LW1/c;->f:F

    iget-boolean v2, p0, LW1/c;->c:Z

    iget-boolean v3, p0, LW1/c;->d:Z

    iget-boolean v6, p0, LW1/c;->g:Z

    iget-boolean v7, p0, LW1/c;->h:Z

    invoke-static/range {v1 .. v9}, LG5/w3;->a(Lcom/samsung/android/motionphoto/utils/ex/e;ZZFFZZLa0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    move-object v7, p1

    check-cast v7, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, LW1/c;->i:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, La0/d;->P(I)I

    move-result v8

    iget-object v0, p0, LW1/c;->b:Lcom/samsung/android/motionphoto/utils/ex/e;

    iget v3, p0, LW1/c;->e:F

    iget v4, p0, LW1/c;->f:F

    iget-boolean v1, p0, LW1/c;->c:Z

    iget-boolean v2, p0, LW1/c;->d:Z

    iget-boolean v5, p0, LW1/c;->g:Z

    iget-boolean v6, p0, LW1/c;->h:Z

    invoke-static/range {v0 .. v8}, LG5/w3;->a(Lcom/samsung/android/motionphoto/utils/ex/e;ZZFFZZLa0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_1
    move-object v7, p1

    check-cast v7, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, LW1/c;->i:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, La0/d;->P(I)I

    move-result v8

    iget-object v0, p0, LW1/c;->b:Lcom/samsung/android/motionphoto/utils/ex/e;

    iget v3, p0, LW1/c;->e:F

    iget v4, p0, LW1/c;->f:F

    iget-boolean v1, p0, LW1/c;->c:Z

    iget-boolean v2, p0, LW1/c;->d:Z

    iget-boolean v5, p0, LW1/c;->g:Z

    iget-boolean v6, p0, LW1/c;->h:Z

    invoke-static/range {v0 .. v8}, LG5/q3;->b(Lcom/samsung/android/motionphoto/utils/ex/e;ZZFFZZLa0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_2
    move-object v7, p1

    check-cast v7, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, LW1/c;->i:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, La0/d;->P(I)I

    move-result v8

    iget-object v0, p0, LW1/c;->b:Lcom/samsung/android/motionphoto/utils/ex/e;

    iget v3, p0, LW1/c;->e:F

    iget v4, p0, LW1/c;->f:F

    iget-boolean v1, p0, LW1/c;->c:Z

    iget-boolean v2, p0, LW1/c;->d:Z

    iget-boolean v5, p0, LW1/c;->g:Z

    iget-boolean v6, p0, LW1/c;->h:Z

    invoke-static/range {v0 .. v8}, LG5/q3;->b(Lcom/samsung/android/motionphoto/utils/ex/e;ZZFFZZLa0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_3
    move-object v7, p1

    check-cast v7, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, LW1/c;->i:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, La0/d;->P(I)I

    move-result v8

    iget-object v0, p0, LW1/c;->b:Lcom/samsung/android/motionphoto/utils/ex/e;

    iget v3, p0, LW1/c;->e:F

    iget v4, p0, LW1/c;->f:F

    iget-boolean v1, p0, LW1/c;->c:Z

    iget-boolean v2, p0, LW1/c;->d:Z

    iget-boolean v5, p0, LW1/c;->g:Z

    iget-boolean v6, p0, LW1/c;->h:Z

    invoke-static/range {v0 .. v8}, LG5/f3;->a(Lcom/samsung/android/motionphoto/utils/ex/e;ZZFFZZLa0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
