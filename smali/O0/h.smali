.class public LO0/h;
.super LO0/g;
.source "SourceFile"


# instance fields
.field public m:I


# direct methods
.method public constructor <init>(LO0/t;)V
    .locals 0

    invoke-direct {p0, p1}, LO0/g;-><init>(LO0/t;)V

    instance-of p1, p1, LO0/m;

    if-eqz p1, :cond_0

    sget-object p1, LO0/f;->HORIZONTAL_DIMENSION:LO0/f;

    iput-object p1, p0, LO0/g;->e:LO0/f;

    goto :goto_0

    :cond_0
    sget-object p1, LO0/f;->VERTICAL_DIMENSION:LO0/f;

    iput-object p1, p0, LO0/g;->e:LO0/f;

    :goto_0
    return-void
.end method


# virtual methods
.method public final d(I)V
    .locals 1

    iget-boolean v0, p0, LO0/g;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LO0/g;->j:Z

    iput p1, p0, LO0/g;->g:I

    iget-object p0, p0, LO0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LO0/d;

    invoke-interface {p1, p1}, LO0/d;->a(LO0/d;)V

    goto :goto_0

    :cond_1
    return-void
.end method
