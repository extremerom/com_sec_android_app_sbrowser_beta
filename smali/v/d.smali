.class public final Lv/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lv/d;->a:I

    iput-object p1, p0, Lv/d;->b:Ljava/lang/Object;

    iput-object p2, p0, Lv/d;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Lv/d;
    .locals 4

    instance-of v0, p0, Lx/a;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Lx/a;

    const/4 v2, 0x6

    iget v1, v1, Lx/a;->a:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "AppSearchResult"

    const-string v2, "Converting throwable to failed result."

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Lx/a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lv/d;

    iget p0, p0, Lx/a;->a:I

    invoke-direct {v2, v1, v0, p0}, Lv/d;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    return-object v2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    instance-of v2, p0, Ljava/lang/IllegalStateException;

    if-nez v2, :cond_6

    instance-of v2, p0, Ljava/lang/NullPointerException;

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    instance-of v2, p0, Ljava/lang/IllegalArgumentException;

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    goto :goto_2

    :cond_3
    instance-of v2, p0, Ljava/io/IOException;

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    goto :goto_2

    :cond_4
    instance-of v2, p0, Ljava/lang/SecurityException;

    if-eqz v2, :cond_5

    const/16 v2, 0x8

    goto :goto_2

    :cond_5
    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v2, 0x2

    :goto_2
    const-string v3, ": "

    invoke-static {v0, v3}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lv/d;

    invoke-direct {v0, v1, p0, v2}, Lv/d;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lv/d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lv/d;

    iget v1, p1, Lv/d;->a:I

    iget v3, p0, Lv/d;->a:I

    if-ne v3, v1, :cond_2

    iget-object v1, p0, Lv/d;->b:Ljava/lang/Object;

    iget-object v3, p1, Lv/d;->b:Ljava/lang/Object;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lv/d;->c:Ljava/lang/String;

    iget-object p1, p1, Lv/d;->c:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lv/d;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lv/d;->b:Ljava/lang/Object;

    iget-object p0, p0, Lv/d;->c:Ljava/lang/String;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lv/d;->a:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[SUCCESS]: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lv/d;->b:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[FAILURE("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")]: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lv/d;->c:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
