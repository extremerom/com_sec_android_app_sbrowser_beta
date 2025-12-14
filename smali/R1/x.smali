.class public LR1/x;
.super LEc/g;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lf2/a;

.field public final d:I

.field public final e:I

.field public final f:Le2/c;

.field public final g:I

.field public final h:Z

.field public final i:Z

.field public final j:Le2/k;

.field public final k:Ljava/lang/String;

.field public final l:I

.field public final m:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lf2/a;IILe2/c;IZZLe2/k;Ljava/lang/String;ZII)V
    .locals 0

    invoke-direct {p0, p11}, LEc/g;-><init>(Z)V

    iput-object p1, p0, LR1/x;->b:Ljava/lang/String;

    iput-object p2, p0, LR1/x;->c:Lf2/a;

    iput p3, p0, LR1/x;->d:I

    iput p4, p0, LR1/x;->e:I

    iput-object p5, p0, LR1/x;->f:Le2/c;

    iput p6, p0, LR1/x;->g:I

    iput-boolean p7, p0, LR1/x;->h:Z

    iput-boolean p8, p0, LR1/x;->i:Z

    iput-object p9, p0, LR1/x;->j:Le2/k;

    iput-object p10, p0, LR1/x;->k:Ljava/lang/String;

    iput p12, p0, LR1/x;->l:I

    iput p13, p0, LR1/x;->m:I

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Lf2/a;ILe2/c;ILe2/k;I)V
    .locals 16

    move/from16 v0, p7

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object/from16 v4, p2

    :goto_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    move v5, v1

    goto :goto_1

    :cond_1
    move/from16 v5, p3

    :goto_1
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    sget-object v1, Le2/c;->b:Le2/c;

    move-object v7, v1

    goto :goto_2

    :cond_2
    move-object/from16 v7, p4

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    move v8, v1

    goto :goto_3

    :cond_3
    move/from16 v8, p5

    :goto_3
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_4

    new-instance v0, Le2/k;

    invoke-direct {v0}, Le2/k;-><init>()V

    move-object v11, v0

    goto :goto_4

    :cond_4
    move-object/from16 v11, p6

    :goto_4
    const-string v0, "text"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontFamily"

    invoke-static {v7, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textShadowStyle"

    invoke-static {v11, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v15}, LR1/x;-><init>(Ljava/lang/String;Lf2/a;IILe2/c;IZZLe2/k;Ljava/lang/String;ZII)V

    return-void
.end method
