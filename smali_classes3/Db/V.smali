.class public final LDb/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final b:LDb/Y;

.field public final c:LDb/W;


# direct methods
.method public constructor <init>(LDb/W;LDb/Y;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LDb/V;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LDb/V;->c:LDb/W;

    iput-object p2, p0, LDb/V;->b:LDb/Y;

    return-void
.end method

.method public constructor <init>(LDb/Y;LDb/W;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LDb/V;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LDb/V;->b:LDb/Y;

    iput-object p2, p0, LDb/V;->c:LDb/W;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, LDb/V;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LDb/V;->c:LDb/W;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, LDb/W;->g:[LAb/u;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v0, v0, LDb/W;->d:LDb/B0;

    invoke-virtual {v0}, LDb/B0;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lrc/o;

    sget-object v1, LDb/G;->DECLARED:LDb/G;

    iget-object p0, p0, LDb/V;->b:LDb/Y;

    invoke-virtual {p0, v0, v1}, LDb/I;->j(Lrc/o;LDb/G;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, LDb/V;->c:LDb/W;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, LDb/W;->g:[LAb/u;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v0, v0, LDb/W;->c:LDb/B0;

    invoke-virtual {v0}, LDb/B0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOb/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, LOb/b;->b:Lbc/c;

    iget-object v2, v0, Lbc/c;->c:Ljava/lang/Object;

    check-cast v2, Lbc/b;

    sget-object v3, Lbc/b;->MULTIFILE_CLASS_PART:Lbc/b;

    if-ne v2, v3, :cond_0

    iget-object v0, v0, Lbc/c;->h:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object p0, p0, LDb/V;->b:LDb/Y;

    iget-object p0, p0, LDb/Y;->b:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-static {v0, v1, v2}, LKc/r;->k(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    :cond_1
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
