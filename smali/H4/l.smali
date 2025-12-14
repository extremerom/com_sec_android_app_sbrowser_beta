.class public final LH4/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW3/u;
.implements LW3/h;


# instance fields
.field public final synthetic a:I

.field public b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LH4/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, LH4/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LH4/l;->b:Landroid/content/Context;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, LH4/l;->a:I

    iput-object p1, p0, LH4/l;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 0

    const-class p0, Landroid/content/res/AssetFileDescriptor;

    return-object p0
.end method

.method public b(ILandroid/content/res/Resources$Theme;Landroid/content/res/Resources;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V

    return-void
.end method

.method public d()LH4/m;
    .locals 14

    iget-object p0, p0, LH4/l;->b:Landroid/content/Context;

    if-eqz p0, :cond_0

    new-instance v0, LH4/m;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, LH4/p;->a:LO7/a;

    invoke-static {v1}, LJ4/a;->a(LJ4/b;)Lcb/a;

    move-result-object v1

    iput-object v1, v0, LH4/m;->a:Lcb/a;

    new-instance v1, LO9/a;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, LO9/a;-><init>(ILjava/lang/Object;)V

    iput-object v1, v0, LH4/m;->b:LO9/a;

    new-instance p0, LG5/J2;

    invoke-direct {p0, v1}, LG5/J2;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lt9/c;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v1, p0}, Lt9/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, LJ4/a;->a(LJ4/b;)Lcb/a;

    move-result-object p0

    iput-object p0, v0, LH4/m;->c:Lcb/a;

    iget-object p0, v0, LH4/m;->b:LO9/a;

    new-instance v1, LX4/i;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0}, LX4/i;-><init>(ILjava/lang/Object;)V

    iput-object v1, v0, LH4/m;->d:LX4/i;

    new-instance v1, LP7/c;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p0}, LP7/c;-><init>(ILjava/lang/Object;)V

    invoke-static {v1}, LJ4/a;->a(LJ4/b;)Lcb/a;

    move-result-object p0

    iget-object v1, v0, LH4/m;->d:LX4/i;

    new-instance v2, LL8/a;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v1, p0}, LL8/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, LJ4/a;->a(LJ4/b;)Lcb/a;

    move-result-object p0

    iput-object p0, v0, LH4/m;->e:Lcb/a;

    new-instance v1, LR7/a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v2, v0, LH4/m;->b:LO9/a;

    new-instance v3, Lo3/t;

    const/16 v4, 0xe

    invoke-direct {v3, v2, v4, p0, v1}, Lo3/t;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, v0, LH4/m;->a:Lcb/a;

    iget-object v10, v0, LH4/m;->c:Lcb/a;

    new-instance v12, LA7/c;

    move-object v4, v12

    move-object v5, v1

    move-object v6, v10

    move-object v7, v3

    move-object v8, p0

    move-object v9, p0

    invoke-direct/range {v4 .. v9}, LA7/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v13, LD4/d;

    move-object v4, v13

    move-object v5, v2

    move-object v6, v10

    move-object v7, p0

    move-object v8, v3

    move-object v9, v1

    move-object v10, p0

    move-object v11, p0

    invoke-direct/range {v4 .. v11}, LD4/d;-><init>(LO9/a;Lcb/a;Lcb/a;Lo3/t;Lcb/a;Lcb/a;Lcb/a;)V

    new-instance v2, Lcom/google/firebase/messaging/q;

    invoke-direct {v2, v1, p0, v3, p0}, Lcom/google/firebase/messaging/q;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Lo3/t;

    const/16 v1, 0xa

    invoke-direct {p0, v12, v1, v13, v2}, Lo3/t;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0}, LJ4/a;->a(LJ4/b;)Lcb/a;

    move-result-object p0

    iput-object p0, v0, LH4/m;->f:Lcb/a;

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " must be set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public y(LW3/z;)LW3/t;
    .locals 3

    iget v0, p0, LH4/l;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, LW3/p;

    iget-object p0, p0, LH4/l;->b:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, LW3/p;-><init>(Landroid/content/Context;I)V

    return-object p1

    :pswitch_0
    new-instance v0, LW3/b;

    const-class v1, Ljava/lang/Integer;

    const-class v2, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p1, v1, v2}, LW3/z;->a(Ljava/lang/Class;Ljava/lang/Class;)LW3/t;

    move-result-object p1

    iget-object p0, p0, LH4/l;->b:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, LW3/b;-><init>(Landroid/content/Context;LW3/t;)V

    return-object v0

    :pswitch_1
    new-instance p1, LW3/b;

    iget-object v0, p0, LH4/l;->b:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, LW3/b;-><init>(Landroid/content/Context;LW3/h;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
