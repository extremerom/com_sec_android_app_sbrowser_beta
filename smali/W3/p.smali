.class public final LW3/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW3/t;


# instance fields
.field public final synthetic a:I

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, LW3/p;->a:I

    packed-switch p2, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LW3/p;->b:Landroid/content/Context;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, LW3/p;->b:Landroid/content/Context;

    return-void

    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, LW3/p;->b:Landroid/content/Context;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILQ3/k;)LW3/s;
    .locals 2

    iget v0, p0, LW3/p;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/net/Uri;

    const/high16 v0, -0x80000000

    if-eq p2, v0, :cond_0

    if-eq p3, v0, :cond_0

    const/16 v0, 0x200

    if-gt p2, v0, :cond_0

    const/16 p2, 0x180

    if-gt p3, p2, :cond_0

    sget-object p2, LZ3/I;->d:LQ3/j;

    invoke-virtual {p4, p2}, LQ3/k;->a(LQ3/j;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    const-wide/16 v0, -0x1

    cmp-long p2, p2, v0

    if-nez p2, :cond_0

    new-instance p2, LW3/s;

    new-instance p3, Lk4/d;

    invoke-direct {p3, p1}, Lk4/d;-><init>(Ljava/lang/Object;)V

    new-instance p4, LR3/a;

    iget-object p0, p0, LW3/p;->b:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p4, v0, v1}, LR3/a;-><init>(Landroid/content/ContentResolver;I)V

    invoke-static {p0, p1, p4}, LR3/b;->e(Landroid/content/Context;Landroid/net/Uri;LR3/c;)LR3/b;

    move-result-object p0

    invoke-direct {p2, p3, p0}, LW3/s;-><init>(LQ3/g;Lcom/bumptech/glide/load/data/e;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2

    :pswitch_0
    check-cast p1, Landroid/net/Uri;

    const/high16 p4, -0x80000000

    if-eq p2, p4, :cond_1

    if-eq p3, p4, :cond_1

    const/16 p4, 0x200

    if-gt p2, p4, :cond_1

    const/16 p2, 0x180

    if-gt p3, p2, :cond_1

    new-instance p2, LW3/s;

    new-instance p3, Lk4/d;

    invoke-direct {p3, p1}, Lk4/d;-><init>(Ljava/lang/Object;)V

    new-instance p4, LR3/a;

    iget-object p0, p0, LW3/p;->b:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p4, v0, v1}, LR3/a;-><init>(Landroid/content/ContentResolver;I)V

    invoke-static {p0, p1, p4}, LR3/b;->e(Landroid/content/Context;Landroid/net/Uri;LR3/c;)LR3/b;

    move-result-object p0

    invoke-direct {p2, p3, p0}, LW3/s;-><init>(LQ3/g;Lcom/bumptech/glide/load/data/e;)V

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    return-object p2

    :pswitch_1
    check-cast p1, Landroid/net/Uri;

    new-instance p2, LW3/s;

    new-instance p3, Lk4/d;

    invoke-direct {p3, p1}, Lk4/d;-><init>(Ljava/lang/Object;)V

    new-instance p4, LW3/o;

    iget-object p0, p0, LW3/p;->b:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p4, v0, p0, p1}, LW3/o;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p2, p3, p4}, LW3/s;-><init>(LQ3/g;Lcom/bumptech/glide/load/data/e;)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, LW3/p;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroid/net/Uri;

    invoke-static {p1}, LG5/F;->c(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    const-string p1, "video"

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    check-cast p1, Landroid/net/Uri;

    invoke-static {p1}, LG5/F;->c(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    const-string p1, "video"

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_1
    check-cast p1, Landroid/net/Uri;

    invoke-static {p1}, LG5/F;->c(Landroid/net/Uri;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
