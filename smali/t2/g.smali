.class public abstract Lt2/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:Ljava/util/regex/Pattern;

.field public static final c:Ljava/util/Map;

.field public static final d:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "^(\\S+)\\s+-->\\s+(\\S+)(.*)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lt2/g;->a:Ljava/util/regex/Pattern;

    const-string v0, "(\\S+?):(\\S+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lt2/g;->b:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0xff

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "white"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "lime"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "cyan"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "red"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "yellow"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "magenta"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "blue"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "black"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lt2/g;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_white"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_lime"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_cyan"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_red"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_yellow"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_magenta"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "bg_blue"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "bg_black"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lt2/g;->d:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/lang/String;Lt2/e;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/ArrayList;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    iget v5, v1, Lt2/e;->b:I

    invoke-virtual/range {p3 .. p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    iget-object v7, v1, Lt2/e;->a:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, -0x1

    const/4 v11, 0x1

    const/16 v12, 0x21

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    :goto_0
    move v7, v9

    goto/16 :goto_1

    :sswitch_0
    const-string v13, "ruby"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x7

    goto :goto_1

    :sswitch_1
    const-string v13, "lang"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x6

    goto :goto_1

    :sswitch_2
    const-string v13, "v"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    const/4 v7, 0x5

    goto :goto_1

    :sswitch_3
    const-string v13, "u"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_0

    :cond_3
    const/4 v7, 0x4

    goto :goto_1

    :sswitch_4
    const-string v13, "i"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_0

    :cond_4
    const/4 v7, 0x3

    goto :goto_1

    :sswitch_5
    const-string v13, "c"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_0

    :cond_5
    const/4 v7, 0x2

    goto :goto_1

    :sswitch_6
    const-string v13, "b"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_0

    :cond_6
    move v7, v11

    goto :goto_1

    :sswitch_7
    const-string v13, ""

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_0

    :cond_7
    const/4 v7, 0x0

    :goto_1
    packed-switch v7, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-static {v3, v0, v1}, Lt2/g;->c(Ljava/util/ArrayList;Ljava/lang/String;Lt2/e;)I

    move-result v7

    new-instance v13, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v14, p2

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v14, Lt2/d;->c:LB0/r;

    invoke-static {v13, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget v14, v1, Lt2/e;->b:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_2
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v15, v10, :cond_d

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lt2/d;

    iget-object v10, v10, Lt2/d;->a:Lt2/e;

    iget-object v10, v10, Lt2/e;->a:Ljava/lang/String;

    const-string v4, "rt"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt2/d;

    iget-object v10, v4, Lt2/d;->a:Lt2/e;

    invoke-static {v3, v0, v10}, Lt2/g;->c(Ljava/util/ArrayList;Ljava/lang/String;Lt2/e;)I

    move-result v10

    if-eq v10, v9, :cond_9

    goto :goto_3

    :cond_9
    if-eq v7, v9, :cond_a

    move v10, v7

    goto :goto_3

    :cond_a
    move v10, v11

    :goto_3
    iget-object v9, v4, Lt2/d;->a:Lt2/e;

    iget v9, v9, Lt2/e;->b:I

    sub-int v9, v9, v16

    iget v4, v4, Lt2/d;->b:I

    sub-int v4, v4, v16

    invoke-virtual {v2, v9, v4}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual {v2, v9, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    new-instance v4, Lq2/e;

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8, v10}, Lq2/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v4, v14, v9, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int v16, v4, v16

    move v14, v9

    :goto_4
    add-int/2addr v15, v11

    const/4 v9, -0x1

    goto :goto_2

    :pswitch_1
    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v2, v4, v5, v6, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_6

    :pswitch_2
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v7, 0x2

    invoke-direct {v4, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2, v4, v5, v6, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_6

    :pswitch_3
    iget-object v4, v1, Lt2/e;->d:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sget-object v8, Lt2/g;->c:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v8, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2, v8, v5, v6, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_5

    :cond_c
    sget-object v8, Lt2/g;->d:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-instance v8, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v8, v7}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v2, v8, v5, v6, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_5

    :pswitch_4
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v11}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2, v4, v5, v6, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_d
    :goto_6
    :pswitch_5
    invoke-static {v3, v0, v1}, Lt2/g;->b(Ljava/util/ArrayList;Ljava/lang/String;Lt2/e;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1f

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt2/f;

    iget-object v3, v3, Lt2/f;->b:Lt2/b;

    iget v4, v3, Lt2/b;->k:I

    const/4 v7, -0x1

    if-ne v4, v7, :cond_e

    iget v8, v3, Lt2/b;->l:I

    if-ne v8, v7, :cond_e

    const/4 v4, -0x1

    :goto_8
    const/4 v7, -0x1

    goto :goto_b

    :cond_e
    if-ne v4, v11, :cond_f

    move v4, v11

    goto :goto_9

    :cond_f
    const/4 v4, 0x0

    :goto_9
    iget v7, v3, Lt2/b;->l:I

    if-ne v7, v11, :cond_10

    const/4 v7, 0x2

    goto :goto_a

    :cond_10
    const/4 v7, 0x0

    :goto_a
    or-int/2addr v7, v4

    move v4, v7

    goto :goto_8

    :goto_b
    if-eq v4, v7, :cond_14

    new-instance v4, Landroid/text/style/StyleSpan;

    iget v8, v3, Lt2/b;->k:I

    if-ne v8, v7, :cond_11

    iget v9, v3, Lt2/b;->l:I

    if-ne v9, v7, :cond_11

    move v8, v7

    goto :goto_e

    :cond_11
    if-ne v8, v11, :cond_12

    move v8, v11

    goto :goto_c

    :cond_12
    const/4 v8, 0x0

    :goto_c
    iget v9, v3, Lt2/b;->l:I

    if-ne v9, v11, :cond_13

    const/4 v9, 0x2

    goto :goto_d

    :cond_13
    const/4 v9, 0x0

    :goto_d
    or-int/2addr v8, v9

    :goto_e
    invoke-direct {v4, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v2, v4, v5, v6}, LG5/u;->a(Landroid/text/SpannableStringBuilder;Landroid/text/style/CharacterStyle;II)V

    :cond_14
    iget v4, v3, Lt2/b;->j:I

    if-ne v4, v11, :cond_15

    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v2, v4, v5, v6, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_15
    iget-boolean v4, v3, Lt2/b;->g:Z

    if-eqz v4, :cond_17

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    iget-boolean v8, v3, Lt2/b;->g:Z

    if-eqz v8, :cond_16

    iget v8, v3, Lt2/b;->f:I

    invoke-direct {v4, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-static {v2, v4, v5, v6}, LG5/u;->a(Landroid/text/SpannableStringBuilder;Landroid/text/style/CharacterStyle;II)V

    goto :goto_f

    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Font color not defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    :goto_f
    iget-boolean v4, v3, Lt2/b;->i:Z

    if-eqz v4, :cond_19

    new-instance v4, Landroid/text/style/BackgroundColorSpan;

    iget-boolean v8, v3, Lt2/b;->i:Z

    if-eqz v8, :cond_18

    iget v8, v3, Lt2/b;->h:I

    invoke-direct {v4, v8}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-static {v2, v4, v5, v6}, LG5/u;->a(Landroid/text/SpannableStringBuilder;Landroid/text/style/CharacterStyle;II)V

    goto :goto_10

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Background color not defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    :goto_10
    iget-object v4, v3, Lt2/b;->e:Ljava/lang/String;

    if-eqz v4, :cond_1a

    new-instance v4, Landroid/text/style/TypefaceSpan;

    iget-object v8, v3, Lt2/b;->e:Ljava/lang/String;

    invoke-direct {v4, v8}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v4, v5, v6}, LG5/u;->a(Landroid/text/SpannableStringBuilder;Landroid/text/style/CharacterStyle;II)V

    :cond_1a
    iget v4, v3, Lt2/b;->m:I

    if-eq v4, v11, :cond_1d

    const/4 v8, 0x2

    if-eq v4, v8, :cond_1c

    const/4 v9, 0x3

    if-eq v4, v9, :cond_1b

    goto :goto_11

    :cond_1b
    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    iget v10, v3, Lt2/b;->n:F

    const/high16 v13, 0x42c80000    # 100.0f

    div-float/2addr v10, v13

    invoke-direct {v4, v10}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-static {v2, v4, v5, v6}, LG5/u;->a(Landroid/text/SpannableStringBuilder;Landroid/text/style/CharacterStyle;II)V

    goto :goto_11

    :cond_1c
    const/4 v9, 0x3

    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    iget v10, v3, Lt2/b;->n:F

    invoke-direct {v4, v10}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-static {v2, v4, v5, v6}, LG5/u;->a(Landroid/text/SpannableStringBuilder;Landroid/text/style/CharacterStyle;II)V

    goto :goto_11

    :cond_1d
    const/4 v8, 0x2

    const/4 v9, 0x3

    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    iget v10, v3, Lt2/b;->n:F

    float-to-int v10, v10

    invoke-direct {v4, v10, v11}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-static {v2, v4, v5, v6}, LG5/u;->a(Landroid/text/SpannableStringBuilder;Landroid/text/style/CharacterStyle;II)V

    :goto_11
    iget-boolean v3, v3, Lt2/b;->p:Z

    if-eqz v3, :cond_1e

    new-instance v3, Lq2/c;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v3, v5, v6, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1e
    add-int/2addr v1, v11

    goto/16 :goto_7

    :cond_1f
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x62 -> :sswitch_6
        0x63 -> :sswitch_5
        0x69 -> :sswitch_4
        0x75 -> :sswitch_3
        0x76 -> :sswitch_2
        0x3291ee -> :sswitch_1
        0x3595da -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Ljava/util/ArrayList;Ljava/lang/String;Lt2/e;)Ljava/util/ArrayList;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt2/b;

    iget-object v4, p2, Lt2/e;->a:Ljava/lang/String;

    iget-object v5, v3, Lt2/b;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v3, Lt2/b;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v3, Lt2/b;->c:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v3, Lt2/b;->d:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    goto :goto_2

    :cond_0
    iget-object v5, v3, Lt2/b;->a:Ljava/lang/String;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v1, v5, v6, p1}, Lt2/b;->a(ILjava/lang/String;ILjava/lang/String;)I

    move-result v5

    iget-object v6, v3, Lt2/b;->b:Ljava/lang/String;

    const/4 v7, 0x2

    invoke-static {v5, v6, v7, v4}, Lt2/b;->a(ILjava/lang/String;ILjava/lang/String;)I

    move-result v4

    iget-object v5, v3, Lt2/b;->d:Ljava/lang/String;

    iget-object v6, p2, Lt2/e;->c:Ljava/lang/String;

    const/4 v7, 0x4

    invoke-static {v4, v5, v7, v6}, Lt2/b;->a(ILjava/lang/String;ILjava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    iget-object v5, v3, Lt2/b;->c:Ljava/util/Set;

    iget-object v6, p2, Lt2/e;->d:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, v3, Lt2/b;->c:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    mul-int/2addr v5, v7

    add-int/2addr v4, v5

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v1

    :goto_2
    if-lez v4, :cond_3

    new-instance v5, Lt2/f;

    invoke-direct {v5, v4, v3}, Lt2/f;-><init>(ILt2/b;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public static c(Ljava/util/ArrayList;Ljava/lang/String;Lt2/e;)I
    .locals 1

    invoke-static {p0, p1, p2}, Lt2/g;->b(Ljava/util/ArrayList;Ljava/lang/String;Lt2/e;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, -0x1

    if-ge p1, p2, :cond_1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lt2/f;

    iget-object p2, p2, Lt2/f;->b:Lt2/b;

    iget p2, p2, Lt2/b;->o:I

    if-eq p2, v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/util/regex/Matcher;Lr2/d;Ljava/util/ArrayList;)Lt2/c;
    .locals 40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const-string v3, "start"

    const-string v4, "end"

    const-string v5, "middle"

    const-string v6, "center"

    const/4 v9, -0x1

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    const-string v14, "WebvttCueParser"

    :try_start_0
    invoke-virtual {v1, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v16 .. v16}, Lt2/h;->b(Ljava/lang/String;)J

    move-result-wide v19

    invoke-virtual {v1, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v16 .. v16}, Lt2/h;->b(Ljava/lang/String;)J

    move-result-wide v21
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {v1, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Lt2/g;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v15, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const v17, -0x800001

    move v11, v12

    move/from16 v29, v13

    move/from16 v18, v17

    move/from16 v24, v18

    const/high16 v23, -0x80000000

    const/16 v30, 0x0

    const/high16 v38, -0x80000000

    const/high16 v39, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v25

    if-eqz v25, :cond_1a

    invoke-virtual {v1, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    const-string v8, "line"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v12, "Invalid anchor value: "

    const/16 v10, 0x2c

    if-eqz v8, :cond_6

    :try_start_2
    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v9, :cond_4

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    :goto_1
    move v15, v9

    goto :goto_2

    :sswitch_0
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    goto :goto_1

    :cond_0
    const/4 v15, 0x3

    goto :goto_2

    :sswitch_1
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    goto :goto_1

    :cond_1
    const/4 v15, 0x2

    goto :goto_2

    :sswitch_2
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    goto :goto_1

    :cond_2
    move v15, v13

    goto :goto_2

    :sswitch_3
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    goto :goto_1

    :cond_3
    const/4 v15, 0x0

    :goto_2
    packed-switch v15, :pswitch_data_0

    :try_start_3
    invoke-virtual {v12, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v14, v10}, Lr2/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    const/high16 v30, -0x80000000

    goto :goto_3

    :pswitch_0
    const/4 v10, 0x0

    const/16 v30, 0x0

    goto :goto_3

    :pswitch_1
    const/4 v10, 0x0

    const/16 v30, 0x2

    goto :goto_3

    :pswitch_2
    move/from16 v30, v13

    const/4 v10, 0x0

    :goto_3
    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_4
    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v7}, Lt2/h;->a(Ljava/lang/String;)F

    move-result v7

    move/from16 v24, v7

    const/16 v29, 0x0

    goto/16 :goto_a

    :cond_5
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    move/from16 v24, v7

    move/from16 v29, v13

    goto/16 :goto_a

    :cond_6
    const-string v8, "align"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v8, :cond_d

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_1

    :goto_4
    move v8, v9

    goto :goto_5

    :sswitch_4
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_4

    :cond_7
    const/4 v8, 0x5

    goto :goto_5

    :sswitch_5
    const-string v8, "right"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_4

    :cond_8
    const/4 v8, 0x4

    goto :goto_5

    :sswitch_6
    const-string v8, "left"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_4

    :cond_9
    const/4 v8, 0x3

    goto :goto_5

    :sswitch_7
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    goto :goto_4

    :cond_a
    const/4 v8, 0x2

    goto :goto_5

    :sswitch_8
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    goto :goto_4

    :cond_b
    move v8, v13

    goto :goto_5

    :sswitch_9
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    goto :goto_4

    :cond_c
    const/4 v8, 0x0

    :goto_5
    packed-switch v8, :pswitch_data_1

    :try_start_4
    const-string v8, "Invalid alignment value: "

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Lr2/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :pswitch_3
    const/4 v7, 0x2

    goto :goto_6

    :pswitch_4
    move v7, v13

    goto :goto_6

    :pswitch_5
    const/4 v7, 0x5

    goto :goto_6

    :pswitch_6
    const/4 v7, 0x4

    goto :goto_6

    :pswitch_7
    const/4 v7, 0x3

    :goto_6
    move v11, v7

    goto/16 :goto_a

    :cond_d
    const-string v8, "position"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v9, :cond_14

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_2

    :goto_7
    move v15, v9

    goto :goto_8

    :sswitch_a
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_e

    goto :goto_7

    :cond_e
    const/4 v15, 0x5

    goto :goto_8

    :sswitch_b
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_f

    goto :goto_7

    :cond_f
    const/4 v15, 0x4

    goto :goto_8

    :sswitch_c
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_10

    goto :goto_7

    :cond_10
    const/4 v15, 0x3

    goto :goto_8

    :sswitch_d
    const-string v15, "line-right"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_11

    goto :goto_7

    :cond_11
    const/4 v15, 0x2

    goto :goto_8

    :sswitch_e
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_12

    goto :goto_7

    :cond_12
    move v15, v13

    goto :goto_8

    :sswitch_f
    const-string v15, "line-left"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_13

    goto :goto_7

    :cond_13
    const/4 v15, 0x0

    :goto_8
    packed-switch v15, :pswitch_data_2

    :try_start_5
    invoke-virtual {v12, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v14, v10}, Lr2/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    const/high16 v23, -0x80000000

    goto :goto_9

    :pswitch_8
    const/4 v10, 0x0

    const/16 v23, 0x2

    goto :goto_9

    :pswitch_9
    move/from16 v23, v13

    const/4 v10, 0x0

    goto :goto_9

    :pswitch_a
    const/4 v10, 0x0

    const/16 v23, 0x0

    :goto_9
    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_14
    invoke-static {v7}, Lt2/h;->a(Ljava/lang/String;)F

    move-result v18

    goto :goto_a

    :cond_15
    const-string v8, "size"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-static {v7}, Lt2/h;->a(Ljava/lang/String;)F

    move-result v39

    goto :goto_a

    :cond_16
    const-string v8, "vertical"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0

    if-eqz v8, :cond_19

    const-string v8, "lr"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18

    const-string v8, "rl"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    :try_start_6
    const-string v8, "Invalid \'vertical\' value: "

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Lr2/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v38, -0x80000000

    goto :goto_a

    :cond_17
    move/from16 v38, v13

    goto :goto_a

    :cond_18
    const/16 v38, 0x2

    goto :goto_a

    :cond_19
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown cue setting "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Lr2/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_a

    :catch_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Skipping bad cue setting: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Lr2/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    const/4 v12, 0x2

    goto/16 :goto_0

    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lr2/d;->c()Ljava/lang/String;

    move-result-object v3

    :goto_b
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1b

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lr2/d;->c()Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    :cond_1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    :goto_c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, ""

    if-ge v10, v6, :cond_3d

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const-string v8, " "

    const/16 v12, 0x3e

    const/16 v15, 0x3c

    const/16 v9, 0x26

    if-eq v6, v9, :cond_34

    if-eq v6, v15, :cond_1d

    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    add-int/2addr v10, v13

    :goto_d
    const/4 v15, -0x1

    goto/16 :goto_21

    :cond_1d
    add-int/lit8 v6, v10, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v6, v9, :cond_1e

    move v10, v6

    goto :goto_d

    :cond_1e
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v15, 0x2f

    if-ne v9, v15, :cond_1f

    move v9, v13

    goto :goto_e

    :cond_1f
    const/4 v9, 0x0

    :goto_e
    invoke-virtual {v1, v12, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    const/4 v12, -0x1

    if-ne v6, v12, :cond_20

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    :goto_f
    const/4 v12, 0x2

    goto :goto_10

    :cond_20
    add-int/2addr v6, v13

    goto :goto_f

    :goto_10
    add-int/lit8 v13, v6, -0x2

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v15, :cond_21

    const/4 v12, 0x1

    goto :goto_11

    :cond_21
    const/4 v12, 0x0

    :goto_11
    if-eqz v9, :cond_22

    const/4 v15, 0x2

    goto :goto_12

    :cond_22
    const/4 v15, 0x1

    :goto_12
    add-int/2addr v10, v15

    if-eqz v12, :cond_23

    move v15, v13

    const/4 v13, 0x1

    goto :goto_13

    :cond_23
    const/4 v13, 0x1

    add-int/lit8 v15, v6, -0x1

    :goto_13
    invoke-virtual {v1, v10, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_24

    move/from16 p2, v6

    goto/16 :goto_16

    :cond_24
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v33

    xor-int/lit8 v34, v33, 0x1

    invoke-static/range {v34 .. v34}, Lr2/c;->a(Z)V

    sget v13, Lr2/e;->a:I

    const-string v13, "[ \\.]"

    move/from16 p2, v6

    const/4 v6, 0x2

    invoke-virtual {v15, v13, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    const/4 v6, 0x0

    aget-object v13, v13, v6

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_3

    :goto_14
    const/4 v6, -0x1

    goto/16 :goto_15

    :sswitch_10
    const-string v6, "ruby"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_25

    goto :goto_14

    :cond_25
    const/4 v6, 0x7

    goto :goto_15

    :sswitch_11
    const-string v6, "lang"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_26

    goto :goto_14

    :cond_26
    const/4 v6, 0x6

    goto :goto_15

    :sswitch_12
    const-string v6, "rt"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_27

    goto :goto_14

    :cond_27
    const/4 v6, 0x5

    goto :goto_15

    :sswitch_13
    const-string v6, "v"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_28

    goto :goto_14

    :cond_28
    const/4 v6, 0x4

    goto :goto_15

    :sswitch_14
    const-string v6, "u"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_29

    goto :goto_14

    :cond_29
    const/4 v6, 0x3

    goto :goto_15

    :sswitch_15
    const-string v6, "i"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2a

    goto :goto_14

    :cond_2a
    const/4 v6, 0x2

    goto :goto_15

    :sswitch_16
    const-string v6, "c"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2b

    goto :goto_14

    :cond_2b
    const/4 v6, 0x1

    goto :goto_15

    :sswitch_17
    const-string v6, "b"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2c

    goto :goto_14

    :cond_2c
    const/4 v6, 0x0

    :goto_15
    packed-switch v6, :pswitch_data_3

    :goto_16
    move/from16 v10, p2

    const/4 v9, -0x1

    :goto_17
    const/4 v13, 0x1

    goto/16 :goto_c

    :pswitch_b
    if-eqz v9, :cond_31

    :cond_2d
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2e

    goto :goto_19

    :cond_2e
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lt2/e;

    invoke-static {v0, v6, v5, v3, v2}, Lt2/g;->a(Ljava/lang/String;Lt2/e;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/ArrayList;)V

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2f

    new-instance v7, Lt2/d;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-direct {v7, v6, v8}, Lt2/d;-><init>(Lt2/e;I)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_2f
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :goto_18
    iget-object v6, v6, Lt2/e;->a:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    :cond_30
    :goto_19
    const/4 v13, 0x1

    goto :goto_1c

    :cond_31
    if-nez v12, :cond_30

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    const/4 v12, 0x1

    xor-int/2addr v10, v12

    invoke-static {v10}, Lr2/c;->a(Z)V

    invoke-virtual {v9, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v10, -0x1

    if-ne v8, v10, :cond_32

    const/4 v12, 0x0

    goto :goto_1a

    :cond_32
    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x0

    invoke-virtual {v9, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    :goto_1a
    const-string v8, "\\."

    invoke-virtual {v9, v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    aget-object v9, v8, v12

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    const/4 v12, 0x1

    :goto_1b
    array-length v13, v8

    if-ge v12, v13, :cond_33

    aget-object v13, v8, v12

    invoke-virtual {v10, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    add-int/2addr v12, v13

    goto :goto_1b

    :cond_33
    const/4 v13, 0x1

    new-instance v8, Lt2/e;

    invoke-direct {v8, v9, v6, v7, v10}, Lt2/e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :goto_1c
    move/from16 v10, p2

    goto/16 :goto_d

    :cond_34
    add-int/2addr v10, v13

    const/16 v7, 0x3b

    invoke-virtual {v1, v7, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    const/16 v13, 0x20

    invoke-virtual {v1, v13, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    const/4 v15, -0x1

    if-ne v7, v15, :cond_35

    move v7, v12

    goto :goto_1d

    :cond_35
    if-ne v12, v15, :cond_36

    goto :goto_1d

    :cond_36
    invoke-static {v7, v12}, Ljava/lang/Math;->min(II)I

    move-result v7

    :goto_1d
    if-eq v7, v15, :cond_3c

    invoke-virtual {v1, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_4

    :goto_1e
    move v10, v15

    goto :goto_1f

    :sswitch_18
    const-string v10, "nbsp"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_37

    goto :goto_1e

    :cond_37
    const/4 v10, 0x3

    goto :goto_1f

    :sswitch_19
    const-string v10, "amp"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_38

    goto :goto_1e

    :cond_38
    const/4 v10, 0x2

    goto :goto_1f

    :sswitch_1a
    const-string v10, "lt"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_39

    goto :goto_1e

    :cond_39
    const/4 v10, 0x1

    goto :goto_1f

    :sswitch_1b
    const-string v10, "gt"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3a

    goto :goto_1e

    :cond_3a
    const/4 v10, 0x0

    :goto_1f
    packed-switch v10, :pswitch_data_4

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ignoring unsupported entity: \'&"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";\'"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Lr2/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    :pswitch_c
    invoke-virtual {v3, v13}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_20

    :pswitch_d
    invoke-virtual {v3, v9}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_20

    :pswitch_e
    const/16 v6, 0x3c

    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_20

    :pswitch_f
    const/16 v6, 0x3e

    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :goto_20
    if-ne v7, v12, :cond_3b

    invoke-virtual {v3, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_3b
    const/4 v6, 0x1

    add-int/2addr v7, v6

    move v10, v7

    goto :goto_21

    :cond_3c
    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :goto_21
    move v9, v15

    goto/16 :goto_17

    :cond_3d
    :goto_22
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3e

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt2/e;

    invoke-static {v0, v1, v5, v3, v2}, Lt2/g;->a(Ljava/lang/String;Lt2/e;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/ArrayList;)V

    goto :goto_22

    :cond_3e
    new-instance v1, Lt2/e;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v7, v5, v7, v4}, Lt2/e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {v0, v1, v4, v3, v2}, Lt2/g;->a(Ljava/lang/String;Lt2/e;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/ArrayList;)V

    invoke-static {v3}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    move-result-object v0

    new-instance v1, Lt2/c;

    cmpl-float v2, v18, v17

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz v2, :cond_3f

    move/from16 v31, v18

    move/from16 v15, v23

    const/4 v2, 0x4

    const/4 v6, 0x5

    :goto_23
    const/high16 v7, -0x80000000

    goto :goto_25

    :cond_3f
    const/4 v2, 0x4

    if-eq v11, v2, :cond_41

    const/4 v6, 0x5

    if-eq v11, v6, :cond_40

    move v7, v4

    goto :goto_24

    :cond_40
    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_24

    :cond_41
    const/4 v6, 0x5

    move v7, v3

    :goto_24
    move/from16 v31, v7

    move/from16 v15, v23

    goto :goto_23

    :goto_25
    if-eq v15, v7, :cond_42

    :goto_26
    const/4 v2, 0x1

    goto :goto_28

    :cond_42
    const/4 v7, 0x1

    if-eq v11, v7, :cond_44

    const/4 v7, 0x3

    if-eq v11, v7, :cond_43

    if-eq v11, v2, :cond_44

    if-eq v11, v6, :cond_43

    const/4 v10, 0x1

    goto :goto_27

    :cond_43
    const/4 v10, 0x2

    goto :goto_27

    :cond_44
    move v10, v5

    :goto_27
    move v15, v10

    goto :goto_26

    :goto_28
    if-eq v11, v2, :cond_47

    const/4 v2, 0x2

    if-eq v11, v2, :cond_46

    const/4 v2, 0x3

    if-eq v11, v2, :cond_45

    const/4 v2, 0x4

    if-eq v11, v2, :cond_47

    const/4 v2, 0x5

    if-eq v11, v2, :cond_45

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Unknown textAlignment: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lr2/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v27, 0x0

    goto :goto_2a

    :cond_45
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_29
    move-object/from16 v27, v2

    goto :goto_2a

    :cond_46
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_29

    :cond_47
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_29

    :goto_2a
    cmpl-float v2, v24, v17

    if-eqz v2, :cond_49

    if-nez v29, :cond_49

    cmpg-float v3, v24, v3

    if-ltz v3, :cond_48

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v5, v24, v3

    if-lez v5, :cond_49

    :cond_48
    :goto_2b
    const/high16 v17, 0x3f800000    # 1.0f

    goto :goto_2c

    :cond_49
    if-eqz v2, :cond_4a

    move/from16 v17, v24

    goto :goto_2c

    :cond_4a
    if-nez v29, :cond_4b

    goto :goto_2b

    :cond_4b
    :goto_2c
    if-eqz v15, :cond_4f

    const/4 v2, 0x1

    if-eq v15, v2, :cond_4d

    const/4 v2, 0x2

    if-ne v15, v2, :cond_4c

    move/from16 v3, v31

    :goto_2d
    move/from16 v2, v39

    goto :goto_2e

    :cond_4c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    cmpg-float v2, v31, v4

    const/high16 v3, 0x40000000    # 2.0f

    if-gtz v2, :cond_4e

    mul-float v3, v3, v31

    goto :goto_2d

    :cond_4e
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v2, v31

    mul-float/2addr v3, v2

    goto :goto_2d

    :cond_4f
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v2, v31

    goto :goto_2d

    :goto_2e
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v35

    if-eqz v0, :cond_50

    move-object/from16 v26, v0

    goto :goto_2f

    :cond_50
    const/16 v26, 0x0

    :goto_2f
    new-instance v18, Lq2/b;

    const/high16 v33, -0x80000000

    const v36, -0x800001

    const/high16 v37, -0x1000000

    move-object/from16 v25, v18

    move/from16 v28, v17

    move/from16 v32, v15

    move/from16 v34, v36

    invoke-direct/range {v25 .. v38}, Lq2/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIIFFFII)V

    move-object/from16 v17, v1

    invoke-direct/range {v17 .. v22}, Lt2/c;-><init>(Lq2/b;JJ)V

    return-object v1

    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Skipping cue with bad header: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lr2/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_3
        -0x4009266b -> :sswitch_2
        0x188db -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x514d33ab -> :sswitch_9
        -0x4009266b -> :sswitch_8
        0x188db -> :sswitch_7
        0x32a007 -> :sswitch_6
        0x677c21c -> :sswitch_5
        0x68ac462 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x6dd215c0 -> :sswitch_f
        -0x514d33ab -> :sswitch_e
        -0x4c1a40fd -> :sswitch_d
        -0x4009266b -> :sswitch_c
        0x188db -> :sswitch_b
        0x68ac462 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_a
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        0x62 -> :sswitch_17
        0x63 -> :sswitch_16
        0x69 -> :sswitch_15
        0x75 -> :sswitch_14
        0x76 -> :sswitch_13
        0xe42 -> :sswitch_12
        0x3291ee -> :sswitch_11
        0x3595da -> :sswitch_10
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        0xced -> :sswitch_1b
        0xd88 -> :sswitch_1a
        0x179c4 -> :sswitch_19
        0x337f11 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method
