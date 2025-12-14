.class public abstract Landroidx/datastore/preferences/protobuf/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final a:Landroidx/datastore/preferences/protobuf/A;

.field public b:Landroidx/datastore/preferences/protobuf/A;

.field public c:Z


# direct methods
.method public constructor <init>(Landroidx/datastore/preferences/protobuf/A;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/x;->a:Landroidx/datastore/preferences/protobuf/A;

    sget-object v0, Landroidx/datastore/preferences/protobuf/z;->NEW_MUTABLE_INSTANCE:Landroidx/datastore/preferences/protobuf/z;

    invoke-virtual {p1, v0}, Landroidx/datastore/preferences/protobuf/A;->d(Landroidx/datastore/preferences/protobuf/z;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/datastore/preferences/protobuf/A;

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/x;->b:Landroidx/datastore/preferences/protobuf/A;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/datastore/preferences/protobuf/x;->c:Z

    return-void
.end method

.method public static d(Landroidx/datastore/preferences/protobuf/A;Landroidx/datastore/preferences/protobuf/A;)V
    .locals 2

    sget-object v0, Landroidx/datastore/preferences/protobuf/e0;->c:Landroidx/datastore/preferences/protobuf/e0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/e0;->a(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/h0;->h(Landroidx/datastore/preferences/protobuf/A;Landroidx/datastore/preferences/protobuf/A;)V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/datastore/preferences/protobuf/A;
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/x;->b()Landroidx/datastore/preferences/protobuf/A;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/A;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, LI5/b;

    invoke-direct {p0}, LI5/b;-><init>()V

    throw p0
.end method

.method public final b()Landroidx/datastore/preferences/protobuf/A;
    .locals 3

    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/x;->c:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/x;->b:Landroidx/datastore/preferences/protobuf/A;

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/x;->b:Landroidx/datastore/preferences/protobuf/A;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/datastore/preferences/protobuf/e0;->c:Landroidx/datastore/preferences/protobuf/e0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/datastore/preferences/protobuf/e0;->a(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v1

    invoke-interface {v1, v0}, Landroidx/datastore/preferences/protobuf/h0;->b(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/datastore/preferences/protobuf/x;->c:Z

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/x;->b:Landroidx/datastore/preferences/protobuf/A;

    return-object p0
.end method

.method public final c()V
    .locals 2

    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/x;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/x;->b:Landroidx/datastore/preferences/protobuf/A;

    sget-object v1, Landroidx/datastore/preferences/protobuf/z;->NEW_MUTABLE_INSTANCE:Landroidx/datastore/preferences/protobuf/z;

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/A;->d(Landroidx/datastore/preferences/protobuf/z;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/A;

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/x;->b:Landroidx/datastore/preferences/protobuf/A;

    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/x;->d(Landroidx/datastore/preferences/protobuf/A;Landroidx/datastore/preferences/protobuf/A;)V

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/x;->b:Landroidx/datastore/preferences/protobuf/A;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/datastore/preferences/protobuf/x;->c:Z

    :cond_0
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    sget-object v0, Landroidx/datastore/preferences/protobuf/z;->NEW_BUILDER:Landroidx/datastore/preferences/protobuf/z;

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/x;->a:Landroidx/datastore/preferences/protobuf/A;

    invoke-virtual {v1, v0}, Landroidx/datastore/preferences/protobuf/A;->d(Landroidx/datastore/preferences/protobuf/z;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/x;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/x;->b()Landroidx/datastore/preferences/protobuf/A;

    move-result-object p0

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/x;->c()V

    iget-object v1, v0, Landroidx/datastore/preferences/protobuf/x;->b:Landroidx/datastore/preferences/protobuf/A;

    invoke-static {v1, p0}, Landroidx/datastore/preferences/protobuf/x;->d(Landroidx/datastore/preferences/protobuf/A;Landroidx/datastore/preferences/protobuf/A;)V

    return-object v0
.end method
