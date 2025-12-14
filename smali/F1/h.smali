.class public final LF1/h;
.super Landroidx/glance/appwidget/protobuf/y;
.source "SourceFile"


# static fields
.field private static final DEFAULT_INSTANCE:LF1/h;

.field public static final LAYOUT_FIELD_NUMBER:I = 0x1

.field public static final LAYOUT_INDEX_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Landroidx/glance/appwidget/protobuf/Z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/glance/appwidget/protobuf/Z;"
        }
    .end annotation
.end field


# instance fields
.field private layoutIndex_:I

.field private layout_:LF1/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LF1/h;

    invoke-direct {v0}, Landroidx/glance/appwidget/protobuf/y;-><init>()V

    sput-object v0, LF1/h;->DEFAULT_INSTANCE:LF1/h;

    const-class v1, LF1/h;

    invoke-static {v1, v0}, Landroidx/glance/appwidget/protobuf/y;->k(Ljava/lang/Class;Landroidx/glance/appwidget/protobuf/y;)V

    return-void
.end method

.method public static m(LF1/h;LF1/j;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LF1/h;->layout_:LF1/j;

    return-void
.end method

.method public static n(LF1/h;I)V
    .locals 0

    iput p1, p0, LF1/h;->layoutIndex_:I

    return-void
.end method

.method public static q()LF1/g;
    .locals 2

    sget-object v0, LF1/h;->DEFAULT_INSTANCE:LF1/h;

    sget-object v1, Landroidx/glance/appwidget/protobuf/x;->NEW_BUILDER:Landroidx/glance/appwidget/protobuf/x;

    invoke-virtual {v0, v1}, LF1/h;->d(Landroidx/glance/appwidget/protobuf/x;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/glance/appwidget/protobuf/v;

    check-cast v0, LF1/g;

    return-object v0
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
    sget-object p0, LF1/h;->PARSER:Landroidx/glance/appwidget/protobuf/Z;

    if-nez p0, :cond_1

    const-class p1, LF1/h;

    monitor-enter p1

    :try_start_0
    sget-object p0, LF1/h;->PARSER:Landroidx/glance/appwidget/protobuf/Z;

    if-nez p0, :cond_0

    new-instance p0, Landroidx/glance/appwidget/protobuf/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, LF1/h;->PARSER:Landroidx/glance/appwidget/protobuf/Z;

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
    sget-object p0, LF1/h;->DEFAULT_INSTANCE:LF1/h;

    return-object p0

    :pswitch_4
    const-string p0, "layout_"

    const-string p1, "layoutIndex_"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\u0004"

    sget-object v0, LF1/h;->DEFAULT_INSTANCE:LF1/h;

    new-instance v1, Landroidx/glance/appwidget/protobuf/e0;

    invoke-direct {v1, v0, p1, p0}, Landroidx/glance/appwidget/protobuf/e0;-><init>(Landroidx/glance/appwidget/protobuf/y;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :pswitch_5
    new-instance p0, LF1/g;

    sget-object p1, LF1/h;->DEFAULT_INSTANCE:LF1/h;

    invoke-direct {p0, p1}, Landroidx/glance/appwidget/protobuf/v;-><init>(Landroidx/glance/appwidget/protobuf/y;)V

    return-object p0

    :pswitch_6
    new-instance p0, LF1/h;

    invoke-direct {p0}, Landroidx/glance/appwidget/protobuf/y;-><init>()V

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

.method public final o()LF1/j;
    .locals 0

    iget-object p0, p0, LF1/h;->layout_:LF1/j;

    if-nez p0, :cond_0

    invoke-static {}, LF1/j;->x()LF1/j;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final p()I
    .locals 0

    iget p0, p0, LF1/h;->layoutIndex_:I

    return p0
.end method
