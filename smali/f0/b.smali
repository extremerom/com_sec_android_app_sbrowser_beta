.class public final Lf0/b;
.super Lf0/a;
.source "SourceFile"

# interfaces
.implements Lub/d;


# instance fields
.field public final c:LHc/h;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LHc/h;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lf0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lf0/b;->c:LHc/h;

    iput-object p3, p0, Lf0/b;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lf0/b;->d:Ljava/lang/Object;

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lf0/b;->d:Ljava/lang/Object;

    iput-object p1, p0, Lf0/b;->d:Ljava/lang/Object;

    iget-object v1, p0, Lf0/b;->c:LHc/h;

    iget-object v1, v1, LHc/h;->b:Ljava/lang/Object;

    check-cast v1, Lf0/e;

    iget-object v2, v1, Lf0/e;->d:Li0/d;

    iget-object p0, p0, Lf0/a;->a:Ljava/lang/Object;

    invoke-virtual {v2, p0}, Li0/d;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v3, v1, Lf0/d;->c:Z

    if-eqz v3, :cond_3

    if-eqz v3, :cond_2

    iget-object v3, v1, Lf0/d;->a:[Lf0/m;

    iget v4, v1, Lf0/d;->b:I

    aget-object v3, v3, v4

    iget-object v4, v3, Lf0/m;->a:[Ljava/lang/Object;

    iget v3, v3, Lf0/m;->c:I

    aget-object v3, v4, v3

    invoke-virtual {v2, p0, p1}, Li0/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, p0

    :goto_0
    iget-object v4, v2, Li0/d;->b:Lf0/l;

    invoke-virtual {v1, p1, v4, v3, p0}, Lf0/e;->d(ILf0/l;Ljava/lang/Object;I)V

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_3
    invoke-virtual {v2, p0, p1}, Li0/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget p0, v2, Li0/d;->d:I

    iput p0, v1, Lf0/e;->g:I

    :goto_2
    return-object v0
.end method
