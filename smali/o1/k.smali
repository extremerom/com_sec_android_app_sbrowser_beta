.class public final Lo1/k;
.super Landroidx/datastore/preferences/protobuf/A;
.source "SourceFile"


# static fields
.field public static final BOOLEAN_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lo1/k;

.field public static final DOUBLE_FIELD_NUMBER:I = 0x7

.field public static final FLOAT_FIELD_NUMBER:I = 0x2

.field public static final INTEGER_FIELD_NUMBER:I = 0x3

.field public static final LONG_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Landroidx/datastore/preferences/protobuf/b0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/b0;"
        }
    .end annotation
.end field

.field public static final STRING_FIELD_NUMBER:I = 0x5

.field public static final STRING_SET_FIELD_NUMBER:I = 0x6


# instance fields
.field private bitField0_:I

.field private valueCase_:I

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo1/k;

    invoke-direct {v0}, Lo1/k;-><init>()V

    sput-object v0, Lo1/k;->DEFAULT_INSTANCE:Lo1/k;

    const-class v1, Lo1/k;

    invoke-static {v1, v0}, Landroidx/datastore/preferences/protobuf/A;->h(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/A;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/A;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lo1/k;->valueCase_:I

    return-void
.end method

.method public static i(Lo1/k;J)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lo1/k;->valueCase_:I

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo1/k;->value_:Ljava/lang/Object;

    return-void
.end method

.method public static j(Lo1/k;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x5

    iput v0, p0, Lo1/k;->valueCase_:I

    iput-object p1, p0, Lo1/k;->value_:Ljava/lang/Object;

    return-void
.end method

.method public static k(Lo1/k;Lo1/g;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/x;->a()Landroidx/datastore/preferences/protobuf/A;

    move-result-object p1

    iput-object p1, p0, Lo1/k;->value_:Ljava/lang/Object;

    const/4 p1, 0x6

    iput p1, p0, Lo1/k;->valueCase_:I

    return-void
.end method

.method public static l(Lo1/k;D)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lo1/k;->valueCase_:I

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lo1/k;->value_:Ljava/lang/Object;

    return-void
.end method

.method public static m(Lo1/k;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lo1/k;->valueCase_:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lo1/k;->value_:Ljava/lang/Object;

    return-void
.end method

.method public static n(Lo1/k;F)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lo1/k;->valueCase_:I

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lo1/k;->value_:Ljava/lang/Object;

    return-void
.end method

.method public static o(Lo1/k;I)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lo1/k;->valueCase_:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lo1/k;->value_:Ljava/lang/Object;

    return-void
.end method

.method public static q()Lo1/k;
    .locals 1

    sget-object v0, Lo1/k;->DEFAULT_INSTANCE:Lo1/k;

    return-object v0
.end method

.method public static y()Lo1/i;
    .locals 2

    sget-object v0, Lo1/k;->DEFAULT_INSTANCE:Lo1/k;

    sget-object v1, Landroidx/datastore/preferences/protobuf/z;->NEW_BUILDER:Landroidx/datastore/preferences/protobuf/z;

    invoke-virtual {v0, v1}, Lo1/k;->d(Landroidx/datastore/preferences/protobuf/z;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/x;

    check-cast v0, Lo1/i;

    return-object v0
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
    sget-object p0, Lo1/k;->PARSER:Landroidx/datastore/preferences/protobuf/b0;

    if-nez p0, :cond_1

    const-class p1, Lo1/k;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lo1/k;->PARSER:Landroidx/datastore/preferences/protobuf/b0;

    if-nez p0, :cond_0

    new-instance p0, Landroidx/datastore/preferences/protobuf/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lo1/k;->PARSER:Landroidx/datastore/preferences/protobuf/b0;

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
    sget-object p0, Lo1/k;->DEFAULT_INSTANCE:Lo1/k;

    return-object p0

    :pswitch_4
    const-string p0, "value_"

    const-string p1, "valueCase_"

    const-string v0, "bitField0_"

    const-class v1, Lo1/h;

    filled-new-array {p0, p1, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0007\u0001\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001:\u0000\u00024\u0000\u00037\u0000\u00045\u0000\u0005;\u0000\u0006<\u0000\u00073\u0000"

    sget-object v0, Lo1/k;->DEFAULT_INSTANCE:Lo1/k;

    new-instance v1, Landroidx/datastore/preferences/protobuf/g0;

    invoke-direct {v1, v0, p1, p0}, Landroidx/datastore/preferences/protobuf/g0;-><init>(Landroidx/datastore/preferences/protobuf/A;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :pswitch_5
    new-instance p0, Lo1/i;

    sget-object p1, Lo1/k;->DEFAULT_INSTANCE:Lo1/k;

    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/x;-><init>(Landroidx/datastore/preferences/protobuf/A;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lo1/k;

    invoke-direct {p0}, Lo1/k;-><init>()V

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

.method public final p()Z
    .locals 2

    iget v0, p0, Lo1/k;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lo1/k;->value_:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final r()D
    .locals 2

    iget v0, p0, Lo1/k;->valueCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lo1/k;->value_:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final s()F
    .locals 2

    iget v0, p0, Lo1/k;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lo1/k;->value_:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final t()I
    .locals 2

    iget v0, p0, Lo1/k;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lo1/k;->value_:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final u()J
    .locals 2

    iget v0, p0, Lo1/k;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lo1/k;->value_:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final v()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lo1/k;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lo1/k;->value_:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public final w()Lo1/h;
    .locals 2

    iget v0, p0, Lo1/k;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lo1/k;->value_:Ljava/lang/Object;

    check-cast p0, Lo1/h;

    return-object p0

    :cond_0
    invoke-static {}, Lo1/h;->j()Lo1/h;

    move-result-object p0

    return-object p0
.end method

.method public final x()Lo1/j;
    .locals 0

    iget p0, p0, Lo1/k;->valueCase_:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    sget-object p0, Lo1/j;->DOUBLE:Lo1/j;

    goto :goto_0

    :pswitch_1
    sget-object p0, Lo1/j;->STRING_SET:Lo1/j;

    goto :goto_0

    :pswitch_2
    sget-object p0, Lo1/j;->STRING:Lo1/j;

    goto :goto_0

    :pswitch_3
    sget-object p0, Lo1/j;->LONG:Lo1/j;

    goto :goto_0

    :pswitch_4
    sget-object p0, Lo1/j;->INTEGER:Lo1/j;

    goto :goto_0

    :pswitch_5
    sget-object p0, Lo1/j;->FLOAT:Lo1/j;

    goto :goto_0

    :pswitch_6
    sget-object p0, Lo1/j;->BOOLEAN:Lo1/j;

    goto :goto_0

    :pswitch_7
    sget-object p0, Lo1/j;->VALUE_NOT_SET:Lo1/j;

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
