.class public abstract Ly3/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ly3/i;

.field public b:Ly3/p;


# direct methods
.method public constructor <init>(Ly3/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly3/e;->a:Ly3/i;

    const-string p0, "majorType is null"

    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Ly3/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Ly3/e;

    iget-object v0, p0, Ly3/e;->b:Ly3/p;

    const/4 v2, 0x1

    iget-object p0, p0, Ly3/e;->a:Ly3/i;

    if-eqz v0, :cond_1

    iget-object v3, p1, Ly3/e;->b:Ly3/p;

    invoke-virtual {v0, v3}, Ly3/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Ly3/e;->a:Ly3/i;

    if-ne p0, p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget-object v0, p1, Ly3/e;->b:Ly3/p;

    if-nez v0, :cond_2

    iget-object p1, p1, Ly3/e;->a:Ly3/i;

    if-ne p0, p1, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ly3/e;->a:Ly3/i;

    iget-object p0, p0, Ly3/e;->b:Ly3/p;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
