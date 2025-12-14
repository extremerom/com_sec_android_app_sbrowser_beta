.class public final LF1/f;
.super Landroidx/glance/appwidget/protobuf/y;
.source "SourceFile"


# static fields
.field private static final DEFAULT_INSTANCE:LF1/f;

.field public static final LAYOUT_FIELD_NUMBER:I = 0x1

.field public static final NEXT_INDEX_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Landroidx/glance/appwidget/protobuf/Z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/glance/appwidget/protobuf/Z;"
        }
    .end annotation
.end field


# instance fields
.field private layout_:Landroidx/glance/appwidget/protobuf/C;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/glance/appwidget/protobuf/C;"
        }
    .end annotation
.end field

.field private nextIndex_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LF1/f;

    invoke-direct {v0}, LF1/f;-><init>()V

    sput-object v0, LF1/f;->DEFAULT_INSTANCE:LF1/f;

    const-class v1, LF1/f;

    invoke-static {v1, v0}, Landroidx/glance/appwidget/protobuf/y;->k(Ljava/lang/Class;Landroidx/glance/appwidget/protobuf/y;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/glance/appwidget/protobuf/y;-><init>()V

    sget-object v0, Landroidx/glance/appwidget/protobuf/d0;->d:Landroidx/glance/appwidget/protobuf/d0;

    iput-object v0, p0, LF1/f;->layout_:Landroidx/glance/appwidget/protobuf/C;

    return-void
.end method

.method public static m(LF1/f;LF1/h;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LF1/f;->layout_:Landroidx/glance/appwidget/protobuf/C;

    move-object v1, v0

    check-cast v1, Landroidx/glance/appwidget/protobuf/b;

    iget-boolean v1, v1, Landroidx/glance/appwidget/protobuf/b;->a:Z

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v1, 0x2

    :goto_0
    invoke-interface {v0, v1}, Landroidx/glance/appwidget/protobuf/C;->a(I)Landroidx/glance/appwidget/protobuf/C;

    move-result-object v0

    iput-object v0, p0, LF1/f;->layout_:Landroidx/glance/appwidget/protobuf/C;

    :cond_1
    iget-object p0, p0, LF1/f;->layout_:Landroidx/glance/appwidget/protobuf/C;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static n(LF1/f;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/glance/appwidget/protobuf/d0;->d:Landroidx/glance/appwidget/protobuf/d0;

    iput-object v0, p0, LF1/f;->layout_:Landroidx/glance/appwidget/protobuf/C;

    return-void
.end method

.method public static o(LF1/f;I)V
    .locals 0

    iput p1, p0, LF1/f;->nextIndex_:I

    return-void
.end method

.method public static p()LF1/f;
    .locals 1

    sget-object v0, LF1/f;->DEFAULT_INSTANCE:LF1/f;

    return-object v0
.end method

.method public static s(Ljava/io/FileInputStream;)LF1/f;
    .locals 4

    sget-object v0, LF1/f;->DEFAULT_INSTANCE:LF1/f;

    new-instance v1, Landroidx/glance/appwidget/protobuf/i;

    invoke-direct {v1, p0}, Landroidx/glance/appwidget/protobuf/i;-><init>(Ljava/io/FileInputStream;)V

    invoke-static {}, Landroidx/glance/appwidget/protobuf/n;->a()Landroidx/glance/appwidget/protobuf/n;

    move-result-object p0

    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/y;->j()Landroidx/glance/appwidget/protobuf/y;

    move-result-object v0

    :try_start_0
    sget-object v2, Landroidx/glance/appwidget/protobuf/c0;->c:Landroidx/glance/appwidget/protobuf/c0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/glance/appwidget/protobuf/c0;->a(Ljava/lang/Class;)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v2

    iget-object v3, v1, Landroidx/glance/appwidget/protobuf/j;->b:LN/h;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, LN/h;

    invoke-direct {v3, v1}, LN/h;-><init>(Landroidx/glance/appwidget/protobuf/j;)V

    :goto_0
    invoke-interface {v2, v0, v3, p0}, Landroidx/glance/appwidget/protobuf/f0;->e(Ljava/lang/Object;LN/h;Landroidx/glance/appwidget/protobuf/n;)V

    invoke-interface {v2, v0}, Landroidx/glance/appwidget/protobuf/f0;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroidx/glance/appwidget/protobuf/F; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroidx/glance/appwidget/protobuf/h0; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    invoke-static {v0, p0}, Landroidx/glance/appwidget/protobuf/y;->g(Landroidx/glance/appwidget/protobuf/y;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    check-cast v0, LF1/f;

    return-object v0

    :cond_1
    new-instance p0, Landroidx/glance/appwidget/protobuf/h0;

    invoke-direct {p0}, Landroidx/glance/appwidget/protobuf/h0;-><init>()V

    new-instance v0, Landroidx/glance/appwidget/protobuf/F;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_3

    :catch_3
    move-exception p0

    goto :goto_4

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroidx/glance/appwidget/protobuf/F;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Landroidx/glance/appwidget/protobuf/F;

    throw p0

    :cond_2
    throw p0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroidx/glance/appwidget/protobuf/F;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Landroidx/glance/appwidget/protobuf/F;

    throw p0

    :cond_3
    new-instance v0, Landroidx/glance/appwidget/protobuf/F;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_3
    new-instance v0, Landroidx/glance/appwidget/protobuf/F;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_4
    iget-boolean v0, p0, Landroidx/glance/appwidget/protobuf/F;->a:Z

    if-eqz v0, :cond_4

    new-instance v0, Landroidx/glance/appwidget/protobuf/F;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    :cond_4
    throw p0
.end method


# virtual methods
.method public final d(Landroidx/glance/appwidget/protobuf/x;)Ljava/lang/Object;
    .locals 2

    sget-object p0, LF1/a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget-object p0, LF1/f;->PARSER:Landroidx/glance/appwidget/protobuf/Z;

    if-nez p0, :cond_1

    const-class p1, LF1/f;

    monitor-enter p1

    :try_start_0
    sget-object p0, LF1/f;->PARSER:Landroidx/glance/appwidget/protobuf/Z;

    if-nez p0, :cond_0

    new-instance p0, Landroidx/glance/appwidget/protobuf/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, LF1/f;->PARSER:Landroidx/glance/appwidget/protobuf/Z;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-object p0

    :pswitch_3
    sget-object p0, LF1/f;->DEFAULT_INSTANCE:LF1/f;

    return-object p0

    :pswitch_4
    const-string p0, "layout_"

    const-class p1, LF1/h;

    const-string v0, "nextIndex_"

    filled-new-array {p0, p1, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\u0004"

    sget-object v0, LF1/f;->DEFAULT_INSTANCE:LF1/f;

    new-instance v1, Landroidx/glance/appwidget/protobuf/e0;

    invoke-direct {v1, v0, p1, p0}, Landroidx/glance/appwidget/protobuf/e0;-><init>(Landroidx/glance/appwidget/protobuf/y;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :pswitch_5
    new-instance p0, LF1/e;

    sget-object p1, LF1/f;->DEFAULT_INSTANCE:LF1/f;

    invoke-direct {p0, p1}, Landroidx/glance/appwidget/protobuf/v;-><init>(Landroidx/glance/appwidget/protobuf/y;)V

    return-object p0

    :pswitch_6
    new-instance p0, LF1/f;

    invoke-direct {p0}, LF1/f;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final q()Landroidx/glance/appwidget/protobuf/C;
    .locals 0

    iget-object p0, p0, LF1/f;->layout_:Landroidx/glance/appwidget/protobuf/C;

    return-object p0
.end method

.method public final r()I
    .locals 0

    iget p0, p0, LF1/f;->nextIndex_:I

    return p0
.end method
