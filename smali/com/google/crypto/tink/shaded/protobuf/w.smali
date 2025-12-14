.class public abstract Lcom/google/crypto/tink/shaded/protobuf/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final a:Lcom/google/crypto/tink/shaded/protobuf/z;

.field public b:Lcom/google/crypto/tink/shaded/protobuf/z;

.field public c:Z


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/z;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/w;->a:Lcom/google/crypto/tink/shaded/protobuf/z;

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/y;->NEW_MUTABLE_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/y;

    invoke-virtual {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/z;->f(Lcom/google/crypto/tink/shaded/protobuf/y;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/z;

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/crypto/tink/shaded/protobuf/w;->c:Z

    return-void
.end method

.method public static d(Lcom/google/crypto/tink/shaded/protobuf/z;Lcom/google/crypto/tink/shaded/protobuf/z;)V
    .locals 2

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/c0;->c:Lcom/google/crypto/tink/shaded/protobuf/c0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/c0;->a(Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/f0;->i(Lcom/google/crypto/tink/shaded/protobuf/z;Lcom/google/crypto/tink/shaded/protobuf/z;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/crypto/tink/shaded/protobuf/z;
    .locals 1

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/w;->b()Lcom/google/crypto/tink/shaded/protobuf/z;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/z;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, LI5/b;

    invoke-direct {p0}, LI5/b;-><init>()V

    throw p0
.end method

.method public final b()Lcom/google/crypto/tink/shaded/protobuf/z;
    .locals 3

    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/w;->c:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/c0;->c:Lcom/google/crypto/tink/shaded/protobuf/c0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/c0;->a(Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/f0;->b(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/w;->c:Z

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    return-object p0
.end method

.method public final c()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/w;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/y;->NEW_MUTABLE_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/y;

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/z;->f(Lcom/google/crypto/tink/shaded/protobuf/y;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/z;

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/w;->d(Lcom/google/crypto/tink/shaded/protobuf/z;Lcom/google/crypto/tink/shaded/protobuf/z;)V

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/w;->c:Z

    :cond_0
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/y;->NEW_BUILDER:Lcom/google/crypto/tink/shaded/protobuf/y;

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/w;->a:Lcom/google/crypto/tink/shaded/protobuf/z;

    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/z;->f(Lcom/google/crypto/tink/shaded/protobuf/y;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/w;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/w;->b()Lcom/google/crypto/tink/shaded/protobuf/z;

    move-result-object p0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object v1, v0, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    invoke-static {v1, p0}, Lcom/google/crypto/tink/shaded/protobuf/w;->d(Lcom/google/crypto/tink/shaded/protobuf/z;Lcom/google/crypto/tink/shaded/protobuf/z;)V

    return-object v0
.end method
