.class public final LF1/j;
.super Landroidx/glance/appwidget/protobuf/y;
.source "SourceFile"


# static fields
.field public static final CHILDREN_FIELD_NUMBER:I = 0x7

.field private static final DEFAULT_INSTANCE:LF1/j;

.field public static final HASACTION_FIELD_NUMBER:I = 0x9

.field public static final HAS_IMAGE_COLOR_FILTER_FIELD_NUMBER:I = 0xb

.field public static final HAS_IMAGE_DESCRIPTION_FIELD_NUMBER:I = 0xa

.field public static final HEIGHT_FIELD_NUMBER:I = 0x3

.field public static final HORIZONTAL_ALIGNMENT_FIELD_NUMBER:I = 0x4

.field public static final IDENTITY_FIELD_NUMBER:I = 0x8

.field public static final IMAGE_SCALE_FIELD_NUMBER:I = 0x6

.field private static volatile PARSER:Landroidx/glance/appwidget/protobuf/Z; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/glance/appwidget/protobuf/Z;"
        }
    .end annotation
.end field

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field public static final VERTICAL_ALIGNMENT_FIELD_NUMBER:I = 0x5

.field public static final WIDTH_FIELD_NUMBER:I = 0x2


# instance fields
.field private children_:Landroidx/glance/appwidget/protobuf/C;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/glance/appwidget/protobuf/C;"
        }
    .end annotation
.end field

.field private hasAction_:Z

.field private hasImageColorFilter_:Z

.field private hasImageDescription_:Z

.field private height_:I

.field private horizontalAlignment_:I

.field private identity_:I

.field private imageScale_:I

.field private type_:I

.field private verticalAlignment_:I

.field private width_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LF1/j;

    invoke-direct {v0}, LF1/j;-><init>()V

    sput-object v0, LF1/j;->DEFAULT_INSTANCE:LF1/j;

    const-class v1, LF1/j;

    invoke-static {v1, v0}, Landroidx/glance/appwidget/protobuf/y;->k(Ljava/lang/Class;Landroidx/glance/appwidget/protobuf/y;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/glance/appwidget/protobuf/y;-><init>()V

    sget-object v0, Landroidx/glance/appwidget/protobuf/d0;->d:Landroidx/glance/appwidget/protobuf/d0;

    iput-object v0, p0, LF1/j;->children_:Landroidx/glance/appwidget/protobuf/C;

    return-void
.end method

.method public static m(LF1/j;Ljava/util/ArrayList;)V
    .locals 5

    iget-object v0, p0, LF1/j;->children_:Landroidx/glance/appwidget/protobuf/C;

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

    iput-object v0, p0, LF1/j;->children_:Landroidx/glance/appwidget/protobuf/C;

    :cond_1
    iget-object p0, p0, LF1/j;->children_:Landroidx/glance/appwidget/protobuf/C;

    sget-object v0, Landroidx/glance/appwidget/protobuf/D;->a:Ljava/nio/charset/Charset;

    instance-of v0, p1, Landroidx/glance/appwidget/protobuf/I;

    const-string v1, " is null."

    const-string v2, "Element at index "

    if-eqz v0, :cond_5

    check-cast p1, Landroidx/glance/appwidget/protobuf/I;

    invoke-interface {p1}, Landroidx/glance/appwidget/protobuf/I;->b()Ljava/util/List;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Landroidx/glance/appwidget/protobuf/I;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, p0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-lt v1, p0, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    instance-of v4, v3, Landroidx/glance/appwidget/protobuf/g;

    if-eqz v4, :cond_4

    check-cast v3, Landroidx/glance/appwidget/protobuf/g;

    invoke-interface {v0, v3}, Landroidx/glance/appwidget/protobuf/I;->W(Landroidx/glance/appwidget/protobuf/g;)V

    goto :goto_1

    :cond_4
    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :cond_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_4
    if-lt v1, v0, :cond_7

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    return-void
.end method

.method public static n(LF1/j;Z)V
    .locals 0

    iput-boolean p1, p0, LF1/j;->hasAction_:Z

    return-void
.end method

.method public static o(LF1/j;Z)V
    .locals 0

    iput-boolean p1, p0, LF1/j;->hasImageColorFilter_:Z

    return-void
.end method

.method public static p(LF1/j;Z)V
    .locals 0

    iput-boolean p1, p0, LF1/j;->hasImageDescription_:Z

    return-void
.end method

.method public static q(LF1/j;LF1/c;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, LF1/c;->getNumber()I

    move-result p1

    iput p1, p0, LF1/j;->height_:I

    return-void
.end method

.method public static r(LF1/j;LF1/d;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, LF1/d;->getNumber()I

    move-result p1

    iput p1, p0, LF1/j;->horizontalAlignment_:I

    return-void
.end method

.method public static s(LF1/j;LF1/l;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, LF1/l;->getNumber()I

    move-result p1

    iput p1, p0, LF1/j;->identity_:I

    return-void
.end method

.method public static t(LF1/j;LF1/b;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, LF1/b;->getNumber()I

    move-result p1

    iput p1, p0, LF1/j;->imageScale_:I

    return-void
.end method

.method public static u(LF1/j;LF1/k;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, LF1/k;->getNumber()I

    move-result p1

    iput p1, p0, LF1/j;->type_:I

    return-void
.end method

.method public static v(LF1/j;LF1/m;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, LF1/m;->getNumber()I

    move-result p1

    iput p1, p0, LF1/j;->verticalAlignment_:I

    return-void
.end method

.method public static w(LF1/j;LF1/c;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, LF1/c;->getNumber()I

    move-result p1

    iput p1, p0, LF1/j;->width_:I

    return-void
.end method

.method public static x()LF1/j;
    .locals 1

    sget-object v0, LF1/j;->DEFAULT_INSTANCE:LF1/j;

    return-object v0
.end method

.method public static y()LF1/i;
    .locals 2

    sget-object v0, LF1/j;->DEFAULT_INSTANCE:LF1/j;

    sget-object v1, Landroidx/glance/appwidget/protobuf/x;->NEW_BUILDER:Landroidx/glance/appwidget/protobuf/x;

    invoke-virtual {v0, v1}, LF1/j;->d(Landroidx/glance/appwidget/protobuf/x;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/glance/appwidget/protobuf/v;

    check-cast v0, LF1/i;

    return-object v0
.end method


# virtual methods
.method public final d(Landroidx/glance/appwidget/protobuf/x;)Ljava/lang/Object;
    .locals 12

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
    sget-object p0, LF1/j;->PARSER:Landroidx/glance/appwidget/protobuf/Z;

    if-nez p0, :cond_1

    const-class p1, LF1/j;

    monitor-enter p1

    :try_start_0
    sget-object p0, LF1/j;->PARSER:Landroidx/glance/appwidget/protobuf/Z;

    if-nez p0, :cond_0

    new-instance p0, Landroidx/glance/appwidget/protobuf/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, LF1/j;->PARSER:Landroidx/glance/appwidget/protobuf/Z;

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
    sget-object p0, LF1/j;->DEFAULT_INSTANCE:LF1/j;

    return-object p0

    :pswitch_4
    const-string v0, "type_"

    const-string v1, "width_"

    const-string v2, "height_"

    const-string v3, "horizontalAlignment_"

    const-string v4, "verticalAlignment_"

    const-string v5, "imageScale_"

    const-string v6, "children_"

    const-class v7, LF1/j;

    const-string v8, "identity_"

    const-string v9, "hasAction_"

    const-string v10, "hasImageDescription_"

    const-string v11, "hasImageColorFilter_"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0000\u000b\u0000\u0000\u0001\u000b\u000b\u0000\u0001\u0000\u0001\u000c\u0002\u000c\u0003\u000c\u0004\u000c\u0005\u000c\u0006\u000c\u0007\u001b\u0008\u000c\t\u0007\n\u0007\u000b\u0007"

    sget-object v0, LF1/j;->DEFAULT_INSTANCE:LF1/j;

    new-instance v1, Landroidx/glance/appwidget/protobuf/e0;

    invoke-direct {v1, v0, p1, p0}, Landroidx/glance/appwidget/protobuf/e0;-><init>(Landroidx/glance/appwidget/protobuf/y;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :pswitch_5
    new-instance p0, LF1/i;

    sget-object p1, LF1/j;->DEFAULT_INSTANCE:LF1/j;

    invoke-direct {p0, p1}, Landroidx/glance/appwidget/protobuf/v;-><init>(Landroidx/glance/appwidget/protobuf/y;)V

    return-object p0

    :pswitch_6
    new-instance p0, LF1/j;

    invoke-direct {p0}, LF1/j;-><init>()V

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
