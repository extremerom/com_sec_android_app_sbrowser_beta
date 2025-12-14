.class public final Ljd/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:Ljava/util/ArrayList;

.field public final synthetic d:Ljd/g;


# direct methods
.method public constructor <init>(Ljd/g;Ljava/lang/String;JLjava/util/ArrayList;[J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "key"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lengths"

    invoke-static {p6, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ljd/e;->d:Ljd/g;

    iput-object p2, p0, Ljd/e;->a:Ljava/lang/String;

    iput-wide p3, p0, Ljd/e;->b:J

    iput-object p5, p0, Ljd/e;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object p0, p0, Ljd/e;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwd/z;

    invoke-static {v0}, Lid/b;->c(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
