.class public abstract Landroidx/glance/appwidget/protobuf/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final a:Landroidx/glance/appwidget/protobuf/y;

.field public b:Landroidx/glance/appwidget/protobuf/y;


# direct methods
.method public constructor <init>(Landroidx/glance/appwidget/protobuf/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/glance/appwidget/protobuf/v;->a:Landroidx/glance/appwidget/protobuf/y;

    invoke-virtual {p1}, Landroidx/glance/appwidget/protobuf/y;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/glance/appwidget/protobuf/y;->j()Landroidx/glance/appwidget/protobuf/y;

    move-result-object p1

    iput-object p1, p0, Landroidx/glance/appwidget/protobuf/v;->b:Landroidx/glance/appwidget/protobuf/y;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Default instance must be immutable."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Landroidx/glance/appwidget/protobuf/c0;->c:Landroidx/glance/appwidget/protobuf/c0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/glance/appwidget/protobuf/c0;->a(Ljava/lang/Class;)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroidx/glance/appwidget/protobuf/f0;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/glance/appwidget/protobuf/y;
    .locals 1

    invoke-virtual {p0}, Landroidx/glance/appwidget/protobuf/v;->b()Landroidx/glance/appwidget/protobuf/y;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroidx/glance/appwidget/protobuf/y;->g(Landroidx/glance/appwidget/protobuf/y;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Landroidx/glance/appwidget/protobuf/h0;

    invoke-direct {p0}, Landroidx/glance/appwidget/protobuf/h0;-><init>()V

    throw p0
.end method

.method public final b()Landroidx/glance/appwidget/protobuf/y;
    .locals 3

    iget-object v0, p0, Landroidx/glance/appwidget/protobuf/v;->b:Landroidx/glance/appwidget/protobuf/y;

    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/y;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/v;->b:Landroidx/glance/appwidget/protobuf/y;

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/glance/appwidget/protobuf/v;->b:Landroidx/glance/appwidget/protobuf/y;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/glance/appwidget/protobuf/c0;->c:Landroidx/glance/appwidget/protobuf/c0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/glance/appwidget/protobuf/c0;->a(Ljava/lang/Class;)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v1

    invoke-interface {v1, v0}, Landroidx/glance/appwidget/protobuf/f0;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/y;->i()V

    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/v;->b:Landroidx/glance/appwidget/protobuf/y;

    return-object p0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Landroidx/glance/appwidget/protobuf/v;->b:Landroidx/glance/appwidget/protobuf/y;

    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/y;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/glance/appwidget/protobuf/v;->a:Landroidx/glance/appwidget/protobuf/y;

    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/y;->j()Landroidx/glance/appwidget/protobuf/y;

    move-result-object v0

    iget-object v1, p0, Landroidx/glance/appwidget/protobuf/v;->b:Landroidx/glance/appwidget/protobuf/y;

    invoke-static {v0, v1}, Landroidx/glance/appwidget/protobuf/v;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/glance/appwidget/protobuf/v;->b:Landroidx/glance/appwidget/protobuf/y;

    :cond_0
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    sget-object v0, Landroidx/glance/appwidget/protobuf/x;->NEW_BUILDER:Landroidx/glance/appwidget/protobuf/x;

    iget-object v1, p0, Landroidx/glance/appwidget/protobuf/v;->a:Landroidx/glance/appwidget/protobuf/y;

    invoke-virtual {v1, v0}, Landroidx/glance/appwidget/protobuf/y;->d(Landroidx/glance/appwidget/protobuf/x;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/glance/appwidget/protobuf/v;

    invoke-virtual {p0}, Landroidx/glance/appwidget/protobuf/v;->b()Landroidx/glance/appwidget/protobuf/y;

    move-result-object p0

    iput-object p0, v0, Landroidx/glance/appwidget/protobuf/v;->b:Landroidx/glance/appwidget/protobuf/y;

    return-object v0
.end method
