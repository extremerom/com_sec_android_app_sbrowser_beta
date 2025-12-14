.class public final Lo1/f;
.super Landroidx/datastore/preferences/protobuf/A;
.source "SourceFile"


# static fields
.field private static final DEFAULT_INSTANCE:Lo1/f;

.field private static volatile PARSER:Landroidx/datastore/preferences/protobuf/b0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/b0;"
        }
    .end annotation
.end field

.field public static final PREFERENCES_FIELD_NUMBER:I = 0x1


# instance fields
.field private preferences_:Landroidx/datastore/preferences/protobuf/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/S;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo1/f;

    invoke-direct {v0}, Lo1/f;-><init>()V

    sput-object v0, Lo1/f;->DEFAULT_INSTANCE:Lo1/f;

    const-class v1, Lo1/f;

    invoke-static {v1, v0}, Landroidx/datastore/preferences/protobuf/A;->h(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/A;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/A;-><init>()V

    sget-object v0, Landroidx/datastore/preferences/protobuf/S;->b:Landroidx/datastore/preferences/protobuf/S;

    iput-object v0, p0, Lo1/f;->preferences_:Landroidx/datastore/preferences/protobuf/S;

    return-void
.end method

.method public static i(Lo1/f;)Landroidx/datastore/preferences/protobuf/S;
    .locals 2

    iget-object v0, p0, Lo1/f;->preferences_:Landroidx/datastore/preferences/protobuf/S;

    iget-boolean v1, v0, Landroidx/datastore/preferences/protobuf/S;->a:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/S;->b()Landroidx/datastore/preferences/protobuf/S;

    move-result-object v0

    iput-object v0, p0, Lo1/f;->preferences_:Landroidx/datastore/preferences/protobuf/S;

    :cond_0
    iget-object p0, p0, Lo1/f;->preferences_:Landroidx/datastore/preferences/protobuf/S;

    return-object p0
.end method

.method public static k()Lo1/d;
    .locals 2

    sget-object v0, Lo1/f;->DEFAULT_INSTANCE:Lo1/f;

    sget-object v1, Landroidx/datastore/preferences/protobuf/z;->NEW_BUILDER:Landroidx/datastore/preferences/protobuf/z;

    invoke-virtual {v0, v1}, Lo1/f;->d(Landroidx/datastore/preferences/protobuf/z;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/x;

    check-cast v0, Lo1/d;

    return-object v0
.end method

.method public static l(Ljava/io/FileInputStream;)Lo1/f;
    .locals 4

    sget-object v0, Lo1/f;->DEFAULT_INSTANCE:Lo1/f;

    new-instance v1, Landroidx/datastore/preferences/protobuf/h;

    invoke-direct {v1, p0}, Landroidx/datastore/preferences/protobuf/h;-><init>(Ljava/io/FileInputStream;)V

    invoke-static {}, Landroidx/datastore/preferences/protobuf/n;->a()Landroidx/datastore/preferences/protobuf/n;

    move-result-object p0

    sget-object v2, Landroidx/datastore/preferences/protobuf/z;->NEW_MUTABLE_INSTANCE:Landroidx/datastore/preferences/protobuf/z;

    invoke-virtual {v0, v2}, Lo1/f;->d(Landroidx/datastore/preferences/protobuf/z;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/A;

    :try_start_0
    sget-object v2, Landroidx/datastore/preferences/protobuf/e0;->c:Landroidx/datastore/preferences/protobuf/e0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/datastore/preferences/protobuf/e0;->a(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v2

    iget-object v3, v1, Landroidx/datastore/preferences/protobuf/h;->b:LN/h;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, LN/h;

    invoke-direct {v3, v1}, LN/h;-><init>(Landroidx/datastore/preferences/protobuf/h;)V

    :goto_0
    invoke-interface {v2, v0, v3, p0}, Landroidx/datastore/preferences/protobuf/h0;->f(Ljava/lang/Object;LN/h;Landroidx/datastore/preferences/protobuf/n;)V

    invoke-interface {v2, v0}, Landroidx/datastore/preferences/protobuf/h0;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/A;->g()Z

    move-result p0

    if-eqz p0, :cond_1

    check-cast v0, Lo1/f;

    return-object v0

    :cond_1
    new-instance p0, LI5/b;

    invoke-direct {p0}, LI5/b;-><init>()V

    new-instance v0, Landroidx/datastore/preferences/protobuf/F;

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

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroidx/datastore/preferences/protobuf/F;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/F;

    throw p0

    :cond_2
    throw p0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroidx/datastore/preferences/protobuf/F;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/F;

    throw p0

    :cond_3
    new-instance v0, Landroidx/datastore/preferences/protobuf/F;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final d(Landroidx/datastore/preferences/protobuf/z;)Ljava/lang/Object;
    .locals 2

    sget-object p0, Lo1/c;->a:[I

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
    sget-object p0, Lo1/f;->PARSER:Landroidx/datastore/preferences/protobuf/b0;

    if-nez p0, :cond_1

    const-class p1, Lo1/f;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lo1/f;->PARSER:Landroidx/datastore/preferences/protobuf/b0;

    if-nez p0, :cond_0

    new-instance p0, Landroidx/datastore/preferences/protobuf/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lo1/f;->PARSER:Landroidx/datastore/preferences/protobuf/b0;

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
    sget-object p0, Lo1/f;->DEFAULT_INSTANCE:Lo1/f;

    return-object p0

    :pswitch_4
    const-string p0, "preferences_"

    sget-object p1, Lo1/e;->a:Landroidx/datastore/preferences/protobuf/Q;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012"

    sget-object v0, Lo1/f;->DEFAULT_INSTANCE:Lo1/f;

    new-instance v1, Landroidx/datastore/preferences/protobuf/g0;

    invoke-direct {v1, v0, p1, p0}, Landroidx/datastore/preferences/protobuf/g0;-><init>(Landroidx/datastore/preferences/protobuf/A;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :pswitch_5
    new-instance p0, Lo1/d;

    sget-object p1, Lo1/f;->DEFAULT_INSTANCE:Lo1/f;

    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/x;-><init>(Landroidx/datastore/preferences/protobuf/A;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lo1/f;

    invoke-direct {p0}, Lo1/f;-><init>()V

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

.method public final j()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lo1/f;->preferences_:Landroidx/datastore/preferences/protobuf/S;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
