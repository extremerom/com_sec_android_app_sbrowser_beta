.class public final Ll3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ll3/d;

.field public final synthetic b:LPc/y;


# direct methods
.method public constructor <init>(Ll3/d;LPc/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/b;->a:Ll3/d;

    iput-object p2, p0, Ll3/b;->b:LPc/y;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ll3/b;->a:Ll3/d;

    invoke-virtual {v0, p1}, Ll3/d;->c(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lk3/b;

    invoke-virtual {v0}, Ll3/d;->a()I

    move-result v0

    invoke-direct {p1, v0}, Lk3/b;-><init>(I)V

    goto :goto_0

    :cond_0
    sget-object p1, Lk3/a;->a:Lk3/a;

    :goto_0
    iget-object p0, p0, Ll3/b;->b:LPc/y;

    check-cast p0, LPc/x;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, LPc/x;->k(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
