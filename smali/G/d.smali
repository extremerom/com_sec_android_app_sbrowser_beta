.class public final LG/d;
.super LG/e;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:LG/c;

.field public b:Z

.field public final synthetic c:LG/f;


# direct methods
.method public constructor <init>(LG/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG/d;->c:LG/f;

    const/4 p1, 0x1

    iput-boolean p1, p0, LG/d;->b:Z

    return-void
.end method


# virtual methods
.method public final b(LG/c;)V
    .locals 1

    iget-object v0, p0, LG/d;->a:LG/c;

    if-ne p1, v0, :cond_1

    iget-object p1, v0, LG/c;->d:LG/c;

    iput-object p1, p0, LG/d;->a:LG/c;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, LG/d;->b:Z

    :cond_1
    return-void
.end method

.method public final hasNext()Z
    .locals 3

    iget-boolean v0, p0, LG/d;->b:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, LG/d;->c:LG/f;

    iget-object p0, p0, LG/f;->a:LG/c;

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget-object p0, p0, LG/d;->a:LG/c;

    if-eqz p0, :cond_2

    iget-object p0, p0, LG/c;->c:LG/c;

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, LG/d;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, LG/d;->b:Z

    iget-object v0, p0, LG/d;->c:LG/f;

    iget-object v0, v0, LG/f;->a:LG/c;

    iput-object v0, p0, LG/d;->a:LG/c;

    goto :goto_1

    :cond_0
    iget-object v0, p0, LG/d;->a:LG/c;

    if-eqz v0, :cond_1

    iget-object v0, v0, LG/c;->c:LG/c;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, LG/d;->a:LG/c;

    :goto_1
    iget-object p0, p0, LG/d;->a:LG/c;

    return-object p0
.end method
