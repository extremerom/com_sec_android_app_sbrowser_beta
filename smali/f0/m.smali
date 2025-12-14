.class public abstract Lf0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lub/a;


# instance fields
.field public a:[Ljava/lang/Object;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lf0/l;->e:Lf0/l;

    iget-object v0, v0, Lf0/l;->d:[Ljava/lang/Object;

    iput-object v0, p0, Lf0/m;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b(II[Ljava/lang/Object;)V
    .locals 0

    iput-object p3, p0, Lf0/m;->a:[Ljava/lang/Object;

    iput p1, p0, Lf0/m;->b:I

    iput p2, p0, Lf0/m;->c:I

    return-void
.end method

.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lf0/m;->c:I

    iget p0, p0, Lf0/m;->b:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
