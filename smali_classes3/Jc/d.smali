.class public final LJc/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJc/l;
.implements LJc/e;


# instance fields
.field public final a:LJc/l;

.field public final b:I


# direct methods
.method public constructor <init>(LJc/l;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJc/d;->a:LJc/l;

    iput p2, p0, LJc/d;->b:I

    if-ltz p2, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "count must be non-negative, but was "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(I)LJc/l;
    .locals 1

    iget v0, p0, LJc/d;->b:I

    add-int/2addr v0, p1

    if-gez v0, :cond_0

    new-instance v0, LJc/d;

    invoke-direct {v0, p0, p1}, LJc/d;-><init>(LJc/l;I)V

    goto :goto_0

    :cond_0
    new-instance p1, LJc/d;

    iget-object p0, p0, LJc/d;->a:LJc/l;

    invoke-direct {p1, p0, v0}, LJc/d;-><init>(LJc/l;I)V

    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, LJc/c;

    invoke-direct {v0, p0}, LJc/c;-><init>(LJc/d;)V

    return-object v0
.end method
