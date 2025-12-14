.class public final LF1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm1/k;


# static fields
.field public static final a:LF1/n;

.field public static final b:LF1/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LF1/n;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LF1/n;->a:LF1/n;

    invoke-static {}, LF1/f;->p()LF1/f;

    move-result-object v0

    const-string v1, "getDefaultInstance(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, LF1/n;->b:LF1/f;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0

    sget-object p0, LF1/n;->b:LF1/f;

    return-object p0
.end method

.method public final b(Ljava/lang/Object;Lm1/p;)V
    .locals 1

    check-cast p1, LF1/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/glance/appwidget/protobuf/y;->a(Landroidx/glance/appwidget/protobuf/f0;)I

    move-result p0

    sget-object v0, Landroidx/glance/appwidget/protobuf/k;->f:Ljava/util/logging/Logger;

    const/16 v0, 0x1000

    if-le p0, v0, :cond_0

    move p0, v0

    :cond_0
    new-instance v0, Landroidx/glance/appwidget/protobuf/k;

    invoke-direct {v0, p2, p0}, Landroidx/glance/appwidget/protobuf/k;-><init>(Lm1/p;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/glance/appwidget/protobuf/c0;->c:Landroidx/glance/appwidget/protobuf/c0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/glance/appwidget/protobuf/c0;->a(Ljava/lang/Class;)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object p0

    iget-object p2, v0, Landroidx/glance/appwidget/protobuf/k;->a:Landroidx/glance/appwidget/protobuf/O;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Landroidx/glance/appwidget/protobuf/O;

    invoke-direct {p2, v0}, Landroidx/glance/appwidget/protobuf/O;-><init>(Landroidx/glance/appwidget/protobuf/k;)V

    :goto_0
    invoke-interface {p0, p1, p2}, Landroidx/glance/appwidget/protobuf/f0;->i(Ljava/lang/Object;Landroidx/glance/appwidget/protobuf/O;)V

    iget p0, v0, Landroidx/glance/appwidget/protobuf/k;->d:I

    if-lez p0, :cond_2

    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/k;->G()V

    :cond_2
    return-void
.end method

.method public final c(Ljava/io/FileInputStream;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-static {p1}, LF1/f;->s(Ljava/io/FileInputStream;)LF1/f;

    move-result-object p0
    :try_end_0
    .catch Landroidx/glance/appwidget/protobuf/F; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lm1/a;

    const-string v0, "Cannot read proto."

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
