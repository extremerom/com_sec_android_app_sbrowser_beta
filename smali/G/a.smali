.class public final LG/a;
.super LG/f;
.source "SourceFile"


# instance fields
.field public final e:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LG/f;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LG/a;->e:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)LG/c;
    .locals 0

    iget-object p0, p0, LG/a;->e:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LG/c;

    return-object p0
.end method

.method public final i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, LG/a;->g(Ljava/lang/Object;)LG/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, LG/c;->b:Ljava/lang/Object;

    return-object p0

    :cond_0
    iget-object v0, p0, LG/a;->e:Ljava/util/HashMap;

    new-instance v1, LG/c;

    invoke-direct {v1, p1, p2}, LG/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget p2, p0, LG/f;->d:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, LG/f;->d:I

    iget-object p2, p0, LG/f;->b:LG/c;

    if-nez p2, :cond_1

    iput-object v1, p0, LG/f;->a:LG/c;

    iput-object v1, p0, LG/f;->b:LG/c;

    goto :goto_0

    :cond_1
    iput-object v1, p2, LG/c;->c:LG/c;

    iput-object p2, v1, LG/c;->d:LG/c;

    iput-object v1, p0, LG/f;->b:LG/c;

    :goto_0
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method public final l(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-super {p0, p1}, LG/f;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, LG/a;->e:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
