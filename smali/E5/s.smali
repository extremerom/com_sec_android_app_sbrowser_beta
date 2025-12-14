.class public final LE5/s;
.super LF3/f;
.source "SourceFile"


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LE5/s;->c:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, LF3/f;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final F0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget p0, p0, LE5/s;->c:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, LG5/c4;

    new-instance p0, LG5/f4;

    invoke-static {}, LQ7/f;->b()LQ7/f;

    move-result-object v0

    new-instance v1, LG5/d4;

    invoke-static {}, LQ7/f;->b()LQ7/f;

    move-result-object v2

    const-class v3, Landroid/content/Context;

    invoke-virtual {v2, v3}, LQ7/f;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v1, v2, p1, v4}, LG5/d4;-><init>(Landroid/content/Context;LG5/c4;I)V

    invoke-virtual {v0, v3}, LQ7/f;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, LQ7/h;

    invoke-virtual {v0, v3}, LQ7/f;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQ7/h;

    iget-object p1, p1, LG5/c4;->a:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1, p1}, LG5/f4;-><init>(Landroid/content/Context;LQ7/h;LG5/d4;Ljava/lang/String;)V

    return-object p0

    :pswitch_0
    check-cast p1, LE5/o;

    new-instance p0, LE5/r;

    invoke-static {}, LQ7/f;->b()LQ7/f;

    move-result-object p1

    invoke-static {}, LQ7/f;->b()LQ7/f;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, LQ7/f;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lu5/d;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    sget-object v4, LF4/a;->e:LF4/a;

    invoke-static {v0}, LH4/w;->b(Landroid/content/Context;)V

    invoke-static {}, LH4/w;->a()LH4/w;

    move-result-object v0

    invoke-virtual {v0, v4}, LH4/w;->c(LF4/a;)LH4/u;

    sget-object v0, LF4/a;->d:Ljava/util/Set;

    new-instance v4, LE4/b;

    const-string v5, "json"

    invoke-direct {v4, v5}, LE4/b;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v1}, LQ7/f;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v1, LQ7/h;

    invoke-virtual {p1, v1}, LQ7/f;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LQ7/h;

    invoke-direct {p0, v0, p1}, LE5/r;-><init>(Landroid/content/Context;LQ7/h;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
