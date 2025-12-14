.class public final LR1/y;
.super LR1/x;
.source "SourceFile"


# instance fields
.field public final n:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lf2/a;Le2/k;)V
    .locals 15

    const-string v0, "text"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontFamily"

    sget-object v6, Le2/c;->b:Le2/c;

    invoke-static {v6, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textShadowStyle"

    move-object/from16 v10, p3

    invoke-static {v10, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v10, p3

    invoke-direct/range {v1 .. v14}, LR1/x;-><init>(Ljava/lang/String;Lf2/a;IILe2/c;IZZLe2/k;Ljava/lang/String;ZII)V

    const/4 v0, 0x3

    iput v0, v1, LR1/y;->n:I

    return-void
.end method
