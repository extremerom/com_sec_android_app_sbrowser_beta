.class public final Le7/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le7/b;

.field public final b:Le7/r;

.field public c:I

.field public d:Lk7/k;


# direct methods
.method public constructor <init>(Le7/b;Le7/r;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Le7/p;->c:I

    iput-object p1, p0, Le7/p;->a:Le7/b;

    iput-object p2, p0, Le7/p;->b:Le7/r;

    return-void
.end method


# virtual methods
.method public final a()Lk7/k;
    .locals 1

    iget-object v0, p0, Le7/p;->d:Lk7/k;

    if-nez v0, :cond_1

    iget-object v0, p0, Le7/p;->a:Le7/b;

    invoke-virtual {v0}, Le7/b;->f()V

    iget-object v0, p0, Le7/p;->d:Lk7/k;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Le7/p;->d:Lk7/k;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "v"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Le7/p;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Le7/p;->b:Le7/r;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
