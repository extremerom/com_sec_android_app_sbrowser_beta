.class public final LU1/g;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LR1/x;

.field public final synthetic c:LW1/d;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(LR1/x;LW1/d;JI)V
    .locals 0

    iput p5, p0, LU1/g;->a:I

    iput-object p1, p0, LU1/g;->b:LR1/x;

    iput-object p2, p0, LU1/g;->c:LW1/d;

    iput-wide p3, p0, LU1/g;->d:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, LU1/g;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "textView"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, LU1/g;->d:J

    iget-object v2, p0, LU1/g;->b:LR1/x;

    iget-object p0, p0, LU1/g;->c:LW1/d;

    invoke-static {p1, v2, p0, v0, v1}, LG5/C2;->d(Landroid/widget/TextView;LR1/x;LW1/d;J)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-wide v1, p0, LU1/g;->d:J

    iget-object p1, p0, LU1/g;->b:LR1/x;

    iget-object p0, p0, LU1/g;->c:LW1/d;

    invoke-static {v0, p1, p0, v1, v2}, LG5/C2;->d(Landroid/widget/TextView;LR1/x;LW1/d;J)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
