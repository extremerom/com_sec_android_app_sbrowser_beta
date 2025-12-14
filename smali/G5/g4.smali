.class public final LG5/g4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    iput p1, p0, LG5/g4;->a:I

    sparse-switch p1, :sswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, LMd/b;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p1, LMd/b;->c:I

    const/16 v1, 0x4000

    new-array v1, v1, [C

    iput-object v1, p1, LMd/b;->d:[C

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p1, LMd/b;->k:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iput-object v1, p1, LMd/b;->a:Ljava/io/StringReader;

    iput-object p1, p0, LG5/g4;->c:Ljava/lang/Object;

    iput-object v1, p0, LG5/g4;->d:Ljava/lang/Object;

    iput v0, p0, LG5/g4;->b:I

    return-void

    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lv2/y;

    invoke-direct {p1}, Lv2/y;-><init>()V

    iput-object p1, p0, LG5/g4;->c:Ljava/lang/Object;

    invoke-static {}, LYc/e;->a()LYc/d;

    move-result-object p1

    iput-object p1, p0, LG5/g4;->d:Ljava/lang/Object;

    const/4 p1, -0x1

    iput p1, p0, LG5/g4;->b:I

    return-void

    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lc0/d;

    const/16 v0, 0x10

    new-array v0, v0, [LW/d;

    invoke-direct {p1, v0}, Lc0/d;-><init>([Ljava/lang/Object;)V

    iput-object p1, p0, LG5/g4;->c:Ljava/lang/Object;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    iput p1, p0, LG5/g4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LS3/o;)V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, LG5/g4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LG5/J2;

    invoke-direct {v0, p0}, LG5/J2;-><init>(Ljava/lang/Object;)V

    const/16 v1, 0x96

    invoke-static {v1, v0}, Lm4/d;->a(ILm4/a;)LZ3/x;

    move-result-object v0

    iput-object v0, p0, LG5/g4;->d:Ljava/lang/Object;

    iput-object p1, p0, LG5/g4;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LZ4/i;Landroidx/emoji2/text/d;I)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, LG5/g4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG5/g4;->d:Ljava/lang/Object;

    iput-object p2, p0, LG5/g4;->c:Ljava/lang/Object;

    iput p3, p0, LG5/g4;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, LG5/g4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG5/g4;->c:Ljava/lang/Object;

    iput-object p2, p0, LG5/g4;->d:Ljava/lang/Object;

    iput p3, p0, LG5/g4;->b:I

    return-void
.end method

.method public constructor <init>(Lhd/K;ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0xd

    iput v0, p0, LG5/g4;->a:I

    const-string v0, "protocol"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG5/g4;->c:Ljava/lang/Object;

    iput p2, p0, LG5/g4;->b:I

    iput-object p3, p0, LG5/g4;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    const/16 v0, 0xb

    iput v0, p0, LG5/g4;->a:I

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string p2, ""

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_2

    aget-object v5, p2, v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-le v6, v2, :cond_1

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string p2, "] "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LG5/g4;->d:Ljava/lang/Object;

    iput-object p1, p0, LG5/g4;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0x17

    if-gt p2, v0, :cond_3

    move v1, v2

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    if-eqz v1, :cond_5

    const/4 p1, 0x2

    :goto_2
    const/4 p2, 0x7

    if-gt p1, p2, :cond_4

    iget-object p2, p0, LG5/g4;->c:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_4

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    iput p1, p0, LG5/g4;->b:I

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "tag \"%s\" is longer than the %d character maximum"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lo3/f;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, LG5/g4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG5/g4;->d:Ljava/lang/Object;

    sget-object p1, Lcom/google/common/base/e;->d:Lcom/google/common/base/e;

    iput-object p1, p0, LG5/g4;->c:Ljava/lang/Object;

    const p1, 0x7fffffff

    iput p1, p0, LG5/g4;->b:I

    return-void
.end method

.method public constructor <init>(Lo3/i;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LG5/g4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LG5/I3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LG5/g4;->d:Ljava/lang/Object;

    iput-object p1, p0, LG5/g4;->c:Ljava/lang/Object;

    invoke-static {}, LG5/i4;->b()V

    iput p2, p0, LG5/g4;->b:I

    return-void
.end method

.method public static b(ILandroid/content/res/Resources$Theme;Landroid/content/res/Resources;)LG5/g4;
    .locals 29

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "gradient"

    move/from16 v3, p0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    :goto_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v5, v6, :cond_0

    if-eq v5, v7, :cond_0

    goto :goto_0

    :cond_0
    if-ne v5, v6, :cond_21

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x0

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v2, "selector"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1, v3, v4, v0}, LW0/c;->b(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    new-instance v1, LG5/g4;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-direct {v1, v8, v0, v2}, LG5/g4;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    return-object v1

    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": unsupported complex color tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    sget-object v2, LS0/a;->d:[I

    invoke-static {v1, v0, v4, v2}, LW0/b;->i(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const-string v5, "startX"

    invoke-static {v3, v5}, LW0/b;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    const/4 v9, 0x0

    if-nez v5, :cond_3

    move v11, v9

    goto :goto_1

    :cond_3
    const/16 v5, 0x8

    invoke-virtual {v2, v5, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    move v11, v5

    :goto_1
    const-string v5, "startY"

    invoke-static {v3, v5}, LW0/b;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    move v12, v9

    goto :goto_2

    :cond_4
    const/16 v5, 0x9

    invoke-virtual {v2, v5, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    move v12, v5

    :goto_2
    const-string v5, "endX"

    invoke-static {v3, v5}, LW0/b;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    move v13, v9

    goto :goto_3

    :cond_5
    const/16 v5, 0xa

    invoke-virtual {v2, v5, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    move v13, v5

    :goto_3
    const-string v5, "endY"

    invoke-static {v3, v5}, LW0/b;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    move v14, v9

    goto :goto_4

    :cond_6
    const/16 v5, 0xb

    invoke-virtual {v2, v5, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    move v14, v5

    :goto_4
    const-string v5, "centerX"

    invoke-static {v3, v5}, LW0/b;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    const/4 v10, 0x3

    if-nez v5, :cond_7

    move v5, v9

    goto :goto_5

    :cond_7
    invoke-virtual {v2, v10, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    :goto_5
    const-string v15, "centerY"

    invoke-static {v3, v15}, LW0/b;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_8

    move v15, v9

    goto :goto_6

    :cond_8
    const/4 v15, 0x4

    invoke-virtual {v2, v15, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    :goto_6
    const-string v8, "type"

    invoke-static {v3, v8}, LW0/b;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    const/4 v10, 0x0

    if-nez v8, :cond_9

    move v8, v10

    goto :goto_7

    :cond_9
    invoke-virtual {v2, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    :goto_7
    const-string v6, "startColor"

    invoke-static {v3, v6}, LW0/b;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    move v6, v10

    goto :goto_8

    :cond_a
    invoke-virtual {v2, v10, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    :goto_8
    const-string v9, "centerColor"

    invoke-static {v3, v9}, LW0/b;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v19

    invoke-static {v3, v9}, LW0/b;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    move v9, v10

    goto :goto_9

    :cond_b
    const/4 v9, 0x7

    invoke-virtual {v2, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    :goto_9
    const-string v7, "endColor"

    invoke-static {v3, v7}, LW0/b;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c

    move v7, v10

    goto :goto_a

    :cond_c
    const/4 v7, 0x1

    invoke-virtual {v2, v7, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v21

    move/from16 v7, v21

    :goto_a
    const-string v10, "tileMode"

    invoke-static {v3, v10}, LW0/b;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_d

    move/from16 v22, v5

    const/4 v5, 0x0

    goto :goto_b

    :cond_d
    const/4 v10, 0x6

    move/from16 v22, v5

    const/4 v5, 0x0

    invoke-virtual {v2, v10, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    move v5, v10

    :goto_b
    const-string v10, "gradientRadius"

    invoke-static {v3, v10}, LW0/b;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_e

    move/from16 v23, v15

    const/4 v10, 0x0

    goto :goto_c

    :cond_e
    const/4 v10, 0x5

    move/from16 v23, v15

    const/4 v15, 0x0

    invoke-virtual {v2, v10, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    :goto_c
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    const/4 v15, 0x1

    add-int/2addr v2, v15

    new-instance v15, Ljava/util/ArrayList;

    move/from16 v24, v10

    const/16 v10, 0x14

    invoke-direct {v15, v10}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v25, v14

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v10}, Ljava/util/ArrayList;-><init>(I)V

    :goto_d
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    move/from16 v26, v13

    const/4 v13, 0x1

    if-eq v10, v13, :cond_14

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    move/from16 v27, v12

    if-ge v13, v2, :cond_f

    const/4 v12, 0x3

    if-eq v10, v12, :cond_15

    :cond_f
    const/4 v12, 0x2

    if-eq v10, v12, :cond_11

    :cond_10
    :goto_e
    move/from16 v13, v26

    move/from16 v12, v27

    goto :goto_d

    :cond_11
    if-gt v13, v2, :cond_10

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v12, "item"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    goto :goto_e

    :cond_12
    sget-object v10, LS0/a;->e:[I

    invoke-static {v1, v0, v4, v10}, LW0/b;->i(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v13

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v20

    if-eqz v13, :cond_13

    if-eqz v20, :cond_13

    const/4 v13, 0x0

    invoke-virtual {v10, v13, v13}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v21

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v28

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_13
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": <item> tag requires a \'color\' attribute and a \'offset\' attribute!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    move/from16 v27, v12

    :cond_15
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_16

    new-instance v0, LL8/a;

    invoke-direct {v0, v14, v15}, LL8/a;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_f

    :cond_16
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_17

    :goto_10
    const/4 v1, 0x1

    goto :goto_11

    :cond_17
    if-eqz v19, :cond_18

    new-instance v0, LL8/a;

    invoke-direct {v0, v6, v9, v7}, LL8/a;-><init>(III)V

    goto :goto_10

    :cond_18
    new-instance v0, LL8/a;

    invoke-direct {v0, v6, v7}, LL8/a;-><init>(II)V

    goto :goto_10

    :goto_11
    if-eq v8, v1, :cond_1c

    const/4 v2, 0x2

    if-eq v8, v2, :cond_1b

    new-instance v3, Landroid/graphics/LinearGradient;

    if-eq v5, v1, :cond_1a

    if-eq v5, v2, :cond_19

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    :goto_12
    move-object/from16 v17, v1

    goto :goto_13

    :cond_19
    sget-object v1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_12

    :cond_1a
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_12

    :goto_13
    iget-object v1, v0, LL8/a;->b:Ljava/lang/Object;

    move-object v15, v1

    check-cast v15, [I

    iget-object v0, v0, LL8/a;->c:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, [F

    const/4 v1, 0x0

    move-object v10, v3

    move/from16 v12, v27

    move/from16 v13, v26

    move/from16 v14, v25

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_16

    :cond_1b
    const/4 v1, 0x0

    new-instance v3, Landroid/graphics/SweepGradient;

    iget-object v2, v0, LL8/a;->b:Ljava/lang/Object;

    check-cast v2, [I

    iget-object v0, v0, LL8/a;->c:Ljava/lang/Object;

    check-cast v0, [F

    move/from16 v9, v22

    move/from16 v15, v23

    invoke-direct {v3, v9, v15, v2, v0}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    goto :goto_16

    :cond_1c
    move/from16 v9, v22

    move/from16 v15, v23

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpg-float v2, v24, v2

    if-lez v2, :cond_1f

    new-instance v3, Landroid/graphics/RadialGradient;

    const/4 v2, 0x1

    if-eq v5, v2, :cond_1e

    const/4 v2, 0x2

    if-eq v5, v2, :cond_1d

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    :goto_14
    move-object/from16 v21, v2

    goto :goto_15

    :cond_1d
    sget-object v2, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_14

    :cond_1e
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_14

    :goto_15
    iget-object v2, v0, LL8/a;->b:Ljava/lang/Object;

    move-object/from16 v19, v2

    check-cast v19, [I

    iget-object v0, v0, LL8/a;->c:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [F

    move v0, v15

    move-object v15, v3

    move/from16 v16, v9

    move/from16 v17, v0

    move/from16 v18, v24

    invoke-direct/range {v15 .. v21}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    :goto_16
    new-instance v0, LG5/g4;

    const/4 v2, 0x0

    invoke-direct {v0, v3, v2, v1}, LG5/g4;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    return-object v0

    :cond_1f
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "<gradient> tag requires \'gradientRadius\' attribute with radial type"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": invalid gradient color tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "No start tag found"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(I)V
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, LG5/g4;->b:I

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index "

    const-string v2, ", size "

    invoke-static {p1, v1, v2}, Lt/b;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, LG5/g4;->b:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    array-length v0, p2

    if-lez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object p0, p0, LG5/g4;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public d(I)LW/d;
    .locals 3

    invoke-virtual {p0, p1}, LG5/g4;->a(I)V

    iget-object v0, p0, LG5/g4;->d:Ljava/lang/Object;

    check-cast v0, LW/d;

    if-eqz v0, :cond_0

    iget v1, v0, LW/d;->b:I

    iget v2, v0, LW/d;->a:I

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_0

    if-gt v2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LG5/g4;->c:Ljava/lang/Object;

    check-cast v0, Lc0/d;

    invoke-static {v0, p1}, LG5/Y2;->c(Lc0/d;I)I

    move-result p1

    iget-object v0, v0, Lc0/d;->a:[Ljava/lang/Object;

    aget-object p1, v0, p1

    move-object v0, p1

    check-cast v0, LW/d;

    iput-object v0, p0, LG5/g4;->d:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, LG5/g4;->b:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, p0, LG5/g4;->c:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    aget-object v3, v3, v2

    instance-of v4, v3, Lbd/d;

    if-eqz v4, :cond_1

    check-cast v3, Lbd/d;

    invoke-interface {v3}, Lbd/d;->d()LG5/u;

    move-result-object v4

    sget-object v5, Lbd/g;->c:Lbd/g;

    invoke-static {v4, v5}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, p0, LG5/g4;->d:Ljava/lang/Object;

    check-cast v3, [I

    aget v3, v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, LG5/g4;->d:Ljava/lang/Object;

    check-cast v3, [I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget-object v4, p0, LG5/g4;->d:Ljava/lang/Object;

    check-cast v4, [I

    aget v4, v4, v2

    if-ltz v4, :cond_2

    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v4}, Lbd/d;->e(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    sget-object v4, Lfd/f;->a:Lfd/f;

    if-eq v3, v4, :cond_2

    const-string v4, "[\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\']"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public f(Lkb/c;)Ljava/io/Serializable;
    .locals 7

    instance-of v0, p1, Lv2/v;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lv2/v;

    iget v1, v0, Lv2/v;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lv2/v;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lv2/v;

    invoke-direct {v0, p0, p1}, Lv2/v;-><init>(LG5/g4;Lkb/c;)V

    :goto_0
    iget-object p1, v0, Lv2/v;->c:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lv2/v;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lv2/v;->b:LYc/d;

    iget-object v0, v0, Lv2/v;->a:LG5/g4;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iput-object p0, v0, Lv2/v;->a:LG5/g4;

    iget-object p1, p0, LG5/g4;->d:Ljava/lang/Object;

    check-cast p1, LYc/d;

    iput-object p1, v0, Lv2/v;->b:LYc/d;

    iput v3, v0, Lv2/v;->e:I

    invoke-virtual {p1, v0}, LYc/d;->a(Lkb/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, LG5/g4;->c:Ljava/lang/Object;

    check-cast v1, Lv2/y;

    invoke-virtual {v1}, Lv2/y;->b()Ljava/util/List;

    move-result-object v1

    iget p0, p0, LG5/g4;->b:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr p0, v2

    add-int/2addr p0, v3

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-ltz v3, :cond_4

    check-cast v4, Lv2/a0;

    new-instance v6, Lfb/z;

    add-int/2addr v3, p0

    invoke-direct {v6, v3, v4}, Lfb/z;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v5

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_4
    invoke-static {}, Lfb/o;->l()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    invoke-interface {p1, v0}, LYc/a;->b(Ljava/lang/Object;)V

    return-object v2

    :goto_3
    invoke-interface {p1, v0}, LYc/a;->b(Ljava/lang/Object;)V

    throw p0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, LG5/g4;->c:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Shader;

    if-nez v0, :cond_0

    iget-object p0, p0, LG5/g4;->d:Ljava/lang/Object;

    check-cast p0, Landroid/content/res/ColorStateList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public h(Ljava/io/StringReader;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, LG5/g4;->c:Ljava/lang/Object;

    check-cast v1, LMd/b;

    move-object/from16 v2, p1

    iput-object v2, v1, LMd/b;->a:Ljava/io/StringReader;

    const/4 v2, 0x0

    iput-boolean v2, v1, LMd/b;->j:Z

    iput v2, v1, LMd/b;->g:I

    iput v2, v1, LMd/b;->h:I

    iput v2, v1, LMd/b;->e:I

    iput v2, v1, LMd/b;->f:I

    iput v2, v1, LMd/b;->i:I

    iput v2, v1, LMd/b;->c:I

    const/4 v3, 0x0

    iput-object v3, v0, LG5/g4;->d:Ljava/lang/Object;

    iput v2, v0, LG5/g4;->b:I

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    iget-object v6, v0, LG5/g4;->c:Ljava/lang/Object;

    check-cast v6, LMd/b;

    iget v7, v6, LMd/b;->h:I

    iget-object v8, v6, LMd/b;->d:[C

    :goto_1
    iget v9, v6, LMd/b;->e:I

    iget v10, v6, LMd/b;->i:I

    iget v11, v6, LMd/b;->g:I

    sub-int v11, v9, v11

    add-int/2addr v11, v10

    iput v11, v6, LMd/b;->i:I

    iput v9, v6, LMd/b;->g:I

    iput v9, v6, LMd/b;->f:I

    sget-object v10, LMd/b;->l:[I

    iget v11, v6, LMd/b;->c:I

    aget v10, v10, v11

    iput v10, v6, LMd/b;->b:I

    const/4 v10, -0x1

    move v11, v9

    move v12, v10

    :goto_2
    const/16 v13, 0x8

    const/4 v14, 0x1

    if-ge v9, v7, :cond_0

    add-int/lit8 v15, v9, 0x1

    aget-char v9, v8, v9

    goto/16 :goto_5

    :cond_0
    iget-boolean v15, v6, LMd/b;->j:Z

    if-eqz v15, :cond_1

    move v9, v10

    goto/16 :goto_6

    :cond_1
    iput v9, v6, LMd/b;->f:I

    iput v11, v6, LMd/b;->e:I

    iget v7, v6, LMd/b;->g:I

    if-lez v7, :cond_2

    iget-object v8, v6, LMd/b;->d:[C

    iget v9, v6, LMd/b;->h:I

    sub-int/2addr v9, v7

    invoke-static {v8, v7, v8, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v7, v6, LMd/b;->h:I

    iget v8, v6, LMd/b;->g:I

    sub-int/2addr v7, v8

    iput v7, v6, LMd/b;->h:I

    iget v7, v6, LMd/b;->f:I

    sub-int/2addr v7, v8

    iput v7, v6, LMd/b;->f:I

    iget v7, v6, LMd/b;->e:I

    sub-int/2addr v7, v8

    iput v7, v6, LMd/b;->e:I

    iput v2, v6, LMd/b;->g:I

    :cond_2
    iget v7, v6, LMd/b;->f:I

    iget-object v8, v6, LMd/b;->d:[C

    array-length v9, v8

    if-lt v7, v9, :cond_3

    mul-int/lit8 v7, v7, 0x2

    new-array v7, v7, [C

    array-length v9, v8

    invoke-static {v8, v2, v7, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v7, v6, LMd/b;->d:[C

    :cond_3
    iget-object v7, v6, LMd/b;->a:Ljava/io/StringReader;

    iget-object v8, v6, LMd/b;->d:[C

    iget v9, v6, LMd/b;->h:I

    array-length v11, v8

    sub-int/2addr v11, v9

    invoke-virtual {v7, v8, v9, v11}, Ljava/io/Reader;->read([CII)I

    move-result v7

    if-lez v7, :cond_4

    iget v8, v6, LMd/b;->h:I

    add-int/2addr v8, v7

    iput v8, v6, LMd/b;->h:I

    :goto_3
    move v7, v2

    goto :goto_4

    :cond_4
    if-nez v7, :cond_5

    iget-object v7, v6, LMd/b;->a:Ljava/io/StringReader;

    invoke-virtual {v7}, Ljava/io/Reader;->read()I

    move-result v7

    if-ne v7, v10, :cond_6

    :cond_5
    move v7, v14

    goto :goto_4

    :cond_6
    iget-object v8, v6, LMd/b;->d:[C

    iget v9, v6, LMd/b;->h:I

    add-int/lit8 v11, v9, 0x1

    iput v11, v6, LMd/b;->h:I

    int-to-char v7, v7

    aput-char v7, v8, v9

    goto :goto_3

    :goto_4
    iget v8, v6, LMd/b;->f:I

    iget v11, v6, LMd/b;->e:I

    iget-object v9, v6, LMd/b;->d:[C

    iget v15, v6, LMd/b;->h:I

    if-eqz v7, :cond_7

    move-object v8, v9

    move v9, v10

    move v7, v15

    goto :goto_6

    :cond_7
    add-int/lit8 v7, v8, 0x1

    aget-char v8, v9, v8

    move/from16 v17, v15

    move v15, v7

    move/from16 v7, v17

    move-object/from16 v18, v9

    move v9, v8

    move-object/from16 v8, v18

    :goto_5
    iget v3, v6, LMd/b;->b:I

    sget-object v16, LMd/b;->o:[I

    aget v3, v16, v3

    sget-object v16, LMd/b;->m:[C

    aget-char v16, v16, v9

    add-int v3, v3, v16

    sget-object v16, LMd/b;->p:[I

    aget v3, v16, v3

    if-ne v3, v10, :cond_8

    goto :goto_6

    :cond_8
    iput v3, v6, LMd/b;->b:I

    sget-object v16, LMd/b;->r:[I

    aget v16, v16, v3

    and-int/lit8 v2, v16, 0x1

    if-ne v2, v14, :cond_26

    and-int/lit8 v2, v16, 0x8

    if-ne v2, v13, :cond_25

    move v12, v3

    move v11, v15

    :goto_6
    iput v11, v6, LMd/b;->e:I

    if-gez v12, :cond_9

    goto :goto_7

    :cond_9
    sget-object v2, LMd/b;->n:[I

    aget v12, v2, v12

    :goto_7
    iget-object v2, v6, LMd/b;->k:Ljava/lang/StringBuffer;

    const/4 v15, 0x5

    const/4 v3, 0x6

    const/4 v11, 0x2

    packed-switch v12, :pswitch_data_0

    if-ne v9, v10, :cond_a

    iget v2, v6, LMd/b;->g:I

    iget v7, v6, LMd/b;->f:I

    if-ne v2, v7, :cond_a

    iput-boolean v14, v6, LMd/b;->j:Z

    const/4 v6, 0x0

    goto/16 :goto_d

    :cond_a
    sget-object v0, LMd/b;->q:[Ljava/lang/String;

    :try_start_0
    aget-object v0, v0, v14
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_8
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_9
    :pswitch_0
    const/4 v9, 0x0

    goto/16 :goto_c

    :pswitch_1
    :try_start_1
    invoke-virtual {v6}, LMd/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v9, 0x10

    invoke-static {v3, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    :catch_1
    move-exception v0

    new-instance v1, LMd/a;

    iget v2, v6, LMd/b;->i:I

    invoke-direct {v1, v2, v11, v0}, LMd/a;-><init>(IILjava/lang/Object;)V

    throw v1

    :pswitch_2
    invoke-virtual {v6}, LMd/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    new-instance v6, LMd/c;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v2}, LMd/c;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_3
    const/4 v7, 0x0

    new-instance v2, LMd/c;

    const/4 v6, 0x0

    invoke-direct {v2, v7, v6}, LMd/c;-><init>(ILjava/lang/Object;)V

    :goto_a
    move-object v6, v2

    goto/16 :goto_d

    :pswitch_4
    const/4 v7, 0x0

    invoke-virtual {v6}, LMd/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    new-instance v6, LMd/c;

    invoke-direct {v6, v7, v2}, LMd/c;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_5
    const/16 v3, 0x9

    :goto_b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_9

    :pswitch_6
    const/16 v3, 0xd

    goto :goto_b

    :pswitch_7
    const/16 v3, 0xa

    goto :goto_b

    :pswitch_8
    const/16 v3, 0xc

    goto :goto_b

    :pswitch_9
    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_9

    :pswitch_a
    const/16 v3, 0x2f

    goto :goto_b

    :pswitch_b
    const/16 v3, 0x22

    goto :goto_b

    :pswitch_c
    const/4 v9, 0x0

    iput v9, v6, LMd/b;->c:I

    new-instance v6, LMd/c;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v9, v2}, LMd/c;-><init>(ILjava/lang/Object;)V

    goto :goto_d

    :pswitch_d
    const/16 v3, 0x5c

    goto :goto_b

    :pswitch_e
    invoke-virtual {v6}, LMd/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_9

    :pswitch_f
    new-instance v2, LMd/c;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v6}, LMd/c;-><init>(ILjava/lang/Object;)V

    goto :goto_a

    :pswitch_10
    const/4 v6, 0x0

    new-instance v2, LMd/c;

    invoke-direct {v2, v15, v6}, LMd/c;-><init>(ILjava/lang/Object;)V

    goto :goto_a

    :pswitch_11
    const/4 v6, 0x0

    new-instance v2, LMd/c;

    const/4 v7, 0x4

    invoke-direct {v2, v7, v6}, LMd/c;-><init>(ILjava/lang/Object;)V

    goto :goto_a

    :pswitch_12
    const/4 v6, 0x0

    new-instance v2, LMd/c;

    const/4 v7, 0x3

    invoke-direct {v2, v7, v6}, LMd/c;-><init>(ILjava/lang/Object;)V

    goto :goto_a

    :pswitch_13
    const/4 v6, 0x0

    new-instance v2, LMd/c;

    invoke-direct {v2, v11, v6}, LMd/c;-><init>(ILjava/lang/Object;)V

    goto :goto_a

    :pswitch_14
    const/4 v6, 0x0

    new-instance v2, LMd/c;

    invoke-direct {v2, v14, v6}, LMd/c;-><init>(ILjava/lang/Object;)V

    goto :goto_a

    :pswitch_15
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    const/4 v9, 0x0

    invoke-virtual {v2, v9, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    iput v11, v6, LMd/b;->c:I

    :goto_c
    move v2, v9

    const/4 v3, 0x0

    goto/16 :goto_1

    :pswitch_16
    const/4 v9, 0x0

    invoke-virtual {v6}, LMd/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    new-instance v6, LMd/c;

    invoke-direct {v6, v9, v2}, LMd/c;-><init>(ILjava/lang/Object;)V

    :goto_d
    iput-object v6, v0, LG5/g4;->d:Ljava/lang/Object;

    if-nez v6, :cond_b

    new-instance v2, LMd/c;

    const/4 v9, 0x0

    invoke-direct {v2, v10, v9}, LMd/c;-><init>(ILjava/lang/Object;)V

    iput-object v2, v0, LG5/g4;->d:Ljava/lang/Object;

    goto :goto_e

    :cond_b
    const/4 v9, 0x0

    :goto_e
    iget v2, v0, LG5/g4;->b:I

    if-eq v2, v10, :cond_24

    if-eqz v2, :cond_1d

    if-eq v2, v14, :cond_1b

    if-eq v2, v11, :cond_18

    const/4 v6, 0x3

    if-eq v2, v6, :cond_12

    const/4 v7, 0x4

    if-eq v2, v7, :cond_c

    goto/16 :goto_15

    :cond_c
    iget-object v2, v0, LG5/g4;->d:Ljava/lang/Object;

    check-cast v2, LMd/c;

    iget v2, v2, LMd/c;->b:I

    if-eqz v2, :cond_10

    if-eq v2, v14, :cond_f

    if-eq v2, v6, :cond_e

    if-eq v2, v3, :cond_21

    :cond_d
    :goto_f
    iput v10, v0, LG5/g4;->b:I

    goto/16 :goto_15

    :cond_e
    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    new-instance v6, LLd/a;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    iput v2, v0, LG5/g4;->b:I

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :goto_10
    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_15

    :cond_f
    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    new-instance v6, LLd/c;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v3, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput v11, v0, LG5/g4;->b:I

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_10

    :cond_10
    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    iget-object v6, v0, LG5/g4;->d:Ljava/lang/Object;

    check-cast v6, LMd/c;

    iget-object v6, v6, LMd/c;->c:Ljava/lang/Object;

    invoke-interface {v3, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_11

    :goto_11
    move v2, v10

    goto :goto_12

    :cond_11
    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_12
    iput v2, v0, LG5/g4;->b:I

    goto/16 :goto_15

    :cond_12
    iget-object v2, v0, LG5/g4;->d:Ljava/lang/Object;

    check-cast v2, LMd/c;

    iget v2, v2, LMd/c;->b:I

    if-eqz v2, :cond_17

    if-eq v2, v14, :cond_16

    const/4 v3, 0x3

    if-eq v2, v3, :cond_15

    const/4 v3, 0x4

    if-eq v2, v3, :cond_13

    if-eq v2, v15, :cond_21

    goto/16 :goto_f

    :cond_13
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-le v2, v14, :cond_14

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_11

    goto :goto_11

    :cond_14
    iput v14, v0, LG5/g4;->b:I

    goto/16 :goto_15

    :cond_15
    invoke-virtual {v5}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v3, LLd/a;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x3

    iput v2, v0, LG5/g4;->b:I

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :goto_13
    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_15

    :cond_16
    invoke-virtual {v5}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v3, LLd/c;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v11, v0, LG5/g4;->b:I

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_13

    :cond_17
    invoke-virtual {v5}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v3, v0, LG5/g4;->d:Ljava/lang/Object;

    check-cast v3, LMd/c;

    iget-object v3, v3, LMd/c;->c:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    :cond_18
    iget-object v2, v0, LG5/g4;->d:Ljava/lang/Object;

    check-cast v2, LMd/c;

    iget v3, v2, LMd/c;->b:I

    if-eqz v3, :cond_1a

    if-eq v3, v11, :cond_19

    if-eq v3, v15, :cond_21

    goto/16 :goto_f

    :cond_19
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-le v2, v14, :cond_14

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_11

    goto/16 :goto_11

    :cond_1a
    iget-object v2, v2, LMd/c;->c:Ljava/lang/Object;

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_d

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    const/4 v2, 0x4

    iput v2, v0, LG5/g4;->b:I

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_15

    :cond_1b
    iget-object v2, v0, LG5/g4;->d:Ljava/lang/Object;

    check-cast v2, LMd/c;

    iget v2, v2, LMd/c;->b:I

    if-ne v2, v10, :cond_1c

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1c
    new-instance v2, LMd/a;

    iget v1, v1, LMd/b;->i:I

    iget-object v0, v0, LG5/g4;->d:Ljava/lang/Object;

    check-cast v0, LMd/c;

    invoke-direct {v2, v1, v14, v0}, LMd/a;-><init>(IILjava/lang/Object;)V

    throw v2

    :cond_1d
    iget-object v2, v0, LG5/g4;->d:Ljava/lang/Object;

    check-cast v2, LMd/c;

    iget v2, v2, LMd/c;->b:I

    if-eqz v2, :cond_20

    if-eq v2, v14, :cond_1f

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1e

    goto/16 :goto_f

    :cond_1e
    iput v3, v0, LG5/g4;->b:I

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    new-instance v2, LLd/a;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_14
    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_15

    :cond_1f
    iput v11, v0, LG5/g4;->b:I

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    new-instance v2, LLd/c;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto :goto_14

    :cond_20
    iput v14, v0, LG5/g4;->b:I

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    iget-object v2, v0, LG5/g4;->d:Ljava/lang/Object;

    check-cast v2, LMd/c;

    iget-object v2, v2, LMd/c;->c:Ljava/lang/Object;

    goto :goto_14

    :cond_21
    :goto_15
    iget v2, v0, LG5/g4;->b:I

    if-eq v2, v10, :cond_23

    iget-object v2, v0, LG5/g4;->d:Ljava/lang/Object;

    check-cast v2, LMd/c;

    iget v2, v2, LMd/c;->b:I

    if-eq v2, v10, :cond_22

    move-object v3, v9

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_22
    new-instance v2, LMd/a;

    iget v1, v1, LMd/b;->i:I

    iget-object v0, v0, LG5/g4;->d:Ljava/lang/Object;

    check-cast v0, LMd/c;

    invoke-direct {v2, v1, v14, v0}, LMd/a;-><init>(IILjava/lang/Object;)V

    throw v2

    :cond_23
    new-instance v2, LMd/a;

    iget v1, v1, LMd/b;->i:I

    iget-object v0, v0, LG5/g4;->d:Ljava/lang/Object;

    check-cast v0, LMd/c;

    invoke-direct {v2, v1, v14, v0}, LMd/a;-><init>(IILjava/lang/Object;)V

    throw v2

    :cond_24
    new-instance v2, LMd/a;

    iget v1, v1, LMd/b;->i:I

    iget-object v0, v0, LG5/g4;->d:Ljava/lang/Object;

    check-cast v0, LMd/c;

    invoke-direct {v2, v1, v14, v0}, LMd/a;-><init>(IILjava/lang/Object;)V

    throw v2

    :pswitch_17
    new-instance v0, LMd/a;

    iget v1, v6, LMd/b;->i:I

    new-instance v2, Ljava/lang/Character;

    iget-object v3, v6, LMd/b;->d:[C

    iget v4, v6, LMd/b;->g:I

    aget-char v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    const/4 v13, 0x0

    invoke-direct {v0, v1, v13, v2}, LMd/a;-><init>(IILjava/lang/Object;)V

    throw v0

    :cond_25
    const/4 v9, 0x0

    const/4 v13, 0x0

    move v12, v3

    move v11, v15

    goto :goto_16

    :cond_26
    const/4 v9, 0x0

    const/4 v13, 0x0

    :goto_16
    move-object v3, v9

    move v2, v13

    move v9, v15

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public i(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, v0}, LG5/g4;->h(Ljava/io/StringReader;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, LMd/a;

    const/4 v0, -0x1

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1, p0}, LMd/a;-><init>(IILjava/lang/Object;)V

    throw p1
.end method

.method public j(LS5/a;)V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p1, LS5/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    iget-object v4, p0, LG5/g4;->d:Ljava/lang/Object;

    check-cast v4, Landroid/util/SparseArray;

    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v5, LS5/f;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput v0, v5, LS5/f;->b:I

    iget-object v6, p0, LG5/g4;->c:Ljava/lang/Object;

    check-cast v6, Lcom/google/cardboard/sdk/qrcode/QrCodeTrackerFactory;

    invoke-interface {v6, v2}, LS5/e;->create(Ljava/lang/Object;)LS5/g;

    move-result-object v6

    iput-object v6, v5, LS5/f;->a:LS5/g;

    invoke-virtual {v6, v3, v2}, LS5/g;->onNewItem(ILjava/lang/Object;)V

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move v3, v0

    :goto_1
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LS5/f;

    iget v7, v6, LS5/f;->b:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, LS5/f;->b:I

    iget v8, p0, LG5/g4;->b:I

    if-lt v7, v8, :cond_2

    iget-object v6, v6, LS5/f;->a:LS5/g;

    invoke-virtual {v6}, LS5/g;->onDone()V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v5, v6, LS5/f;->a:LS5/g;

    invoke-virtual {v5, p1}, LS5/g;->onMissing(LS5/a;)V

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_3

    :cond_5
    move p0, v0

    :goto_4
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge p0, v1, :cond_6

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LS5/f;

    iput v0, v1, LS5/f;->b:I

    iget-object v1, v1, LS5/f;->a:LS5/g;

    invoke-virtual {v1, p1, v3}, LS5/g;->onUpdate(LS5/a;Ljava/lang/Object;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    :cond_6
    return-void
.end method

.method public k(Lfb/z;Lkb/c;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lv2/w;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lv2/w;

    iget v1, v0, Lv2/w;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lv2/w;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lv2/w;

    invoke-direct {v0, p0, p2}, Lv2/w;-><init>(LG5/g4;Lkb/c;)V

    :goto_0
    iget-object p2, v0, Lv2/w;->d:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lv2/w;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lv2/w;->c:LYc/d;

    iget-object p1, v0, Lv2/w;->b:Lfb/z;

    iget-object v0, v0, Lv2/w;->a:LG5/g4;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object p2, p0

    move-object p0, v0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iput-object p0, v0, Lv2/w;->a:LG5/g4;

    iput-object p1, v0, Lv2/w;->b:Lfb/z;

    iget-object p2, p0, LG5/g4;->d:Ljava/lang/Object;

    check-cast p2, LYc/d;

    iput-object p2, v0, Lv2/w;->c:LYc/d;

    iput v3, v0, Lv2/w;->f:I

    invoke-virtual {p2, v0}, LYc/d;->a(Lkb/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const/4 v0, 0x0

    :try_start_0
    iget v1, p1, Lfb/z;->a:I

    iput v1, p0, LG5/g4;->b:I

    iget-object p0, p0, LG5/g4;->c:Ljava/lang/Object;

    check-cast p0, Lv2/y;

    iget-object p1, p1, Lfb/z;->b:Ljava/lang/Object;

    check-cast p1, Lv2/a0;

    invoke-virtual {p0, p1}, Lv2/y;->a(Lv2/a0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p2, v0}, LYc/a;->b(Ljava/lang/Object;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {p2, v0}, LYc/a;->b(Ljava/lang/Object;)V

    throw p0
.end method

.method public varargs l(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LG5/g4;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, LG5/g4;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public m()[B
    .locals 5

    iget-object v0, p0, LG5/g4;->d:Ljava/lang/Object;

    check-cast v0, LG5/I3;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, LG5/I3;->i:Ljava/lang/Boolean;

    iget-object v0, p0, LG5/g4;->d:Ljava/lang/Object;

    check-cast v0, LG5/I3;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, v0, LG5/I3;->g:Ljava/lang/Boolean;

    new-instance v1, LG5/J3;

    invoke-direct {v1, v0}, LG5/J3;-><init>(LG5/I3;)V

    iget-object p0, p0, LG5/g4;->c:Ljava/lang/Object;

    check-cast p0, Lo3/i;

    iput-object v1, p0, Lo3/i;->a:Ljava/lang/Object;

    :try_start_0
    invoke-static {}, LG5/i4;->b()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, LG5/i4;->c:LG5/i4;

    :try_start_1
    new-instance v1, LG5/P2;

    invoke-direct {v1, p0}, LG5/P2;-><init>(Lo3/i;)V

    new-instance p0, LG5/k;

    invoke-direct {p0}, LG5/k;-><init>()V

    invoke-virtual {v0, p0}, LG5/i4;->a(Lv7/a;)V

    new-instance v0, LG5/k;

    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, LG5/k;->a:Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v3, Ljava/util/HashMap;

    iget-object v4, p0, LG5/k;->b:Ljava/util/HashMap;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object p0, p0, LG5/k;->c:LG5/i;

    invoke-direct {v0, v2, v3, p0}, LG5/k;-><init>(Ljava/util/HashMap;Ljava/util/HashMap;LG5/i;)V

    invoke-virtual {v0, v1}, LG5/k;->b(LG5/P2;)[B

    move-result-object p0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Failed to covert logging to UTF-8 byte array"

    invoke-direct {v0, v1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, LG5/g4;->a:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LG5/g4;->c:Ljava/lang/Object;

    check-cast v1, Lhd/K;

    sget-object v2, Lhd/K;->HTTP_1_0:Lhd/K;

    if-ne v1, v2, :cond_0

    const-string v1, "HTTP/1.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "HTTP/1.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, LG5/g4;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, LG5/g4;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :sswitch_1
    invoke-virtual {p0}, LG5/g4;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method
