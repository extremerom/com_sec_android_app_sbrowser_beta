.class public final LVb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lxc/l;

.field public final b:LB3/c;

.field public final c:Lo3/f;

.field public final d:Lac/f;

.field public final e:LTb/h;

.field public final f:LOb/d;

.field public final g:LTb/h;

.field public final h:LTb/h;

.field public final i:LR7/a;

.field public final j:LOb/d;

.field public final k:Lo3/f;

.field public final l:Lac/g;

.field public final m:LJb/T;

.field public final n:LRb/b;

.field public final o:LMb/B;

.field public final p:LGb/o;

.field public final q:LSb/c;

.field public final r:LZb/c;

.field public final s:LSb/l;

.field public final t:LVb/b;

.field public final u:Lzc/l;

.field public final v:LSb/t;

.field public final w:Lac/g;

.field public final x:Lpc/e;


# direct methods
.method public constructor <init>(Lxc/l;LB3/c;Lo3/f;Lac/f;LTb/h;LOb/d;LTb/h;LR7/a;LOb/d;Lo3/f;Lac/g;LJb/T;LRb/b;LMb/B;LGb/o;LSb/c;LZb/c;LSb/l;LVb/b;Lzc/l;LSb/t;Lac/g;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v0, p16

    sget-object v0, LTb/h;->b:LTb/h;

    sget-object v16, Lpc/e;->a:Lpc/d;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v16, v0

    const-string v0, "storageManager"

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "finder"

    invoke-static {v2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinClassFinder"

    invoke-static {v3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializedDescriptorResolver"

    invoke-static {v4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signaturePropagator"

    invoke-static {v5, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorReporter"

    invoke-static {v6, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaPropertyInitializerEvaluator"

    invoke-static {v7, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "samConversionResolver"

    invoke-static {v8, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceElementFactory"

    invoke-static {v9, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moduleClassResolver"

    invoke-static {v10, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packagePartProvider"

    invoke-static {v11, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "supertypeLoopChecker"

    invoke-static {v12, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lookupTracker"

    invoke-static {v13, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {v14, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reflectionTypes"

    invoke-static {v15, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotationTypeQualifierResolver"

    move-object/from16 v15, p16

    move-object/from16 v14, v16

    invoke-static {v15, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signatureEnhancement"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaClassesTracker"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypeChecker"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaTypeEnhancementState"

    move-object/from16 v15, p21

    invoke-static {v15, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaModuleResolver"

    move-object/from16 v15, p22

    invoke-static {v15, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "syntheticPartsProvider"

    sget-object v15, Lpc/d;->b:Lpc/a;

    invoke-static {v15, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v16, v15

    move-object/from16 v15, p16

    iput-object v1, v0, LVb/a;->a:Lxc/l;

    iput-object v2, v0, LVb/a;->b:LB3/c;

    iput-object v3, v0, LVb/a;->c:Lo3/f;

    iput-object v4, v0, LVb/a;->d:Lac/f;

    iput-object v5, v0, LVb/a;->e:LTb/h;

    iput-object v6, v0, LVb/a;->f:LOb/d;

    iput-object v14, v0, LVb/a;->g:LTb/h;

    iput-object v7, v0, LVb/a;->h:LTb/h;

    iput-object v8, v0, LVb/a;->i:LR7/a;

    iput-object v9, v0, LVb/a;->j:LOb/d;

    iput-object v10, v0, LVb/a;->k:Lo3/f;

    iput-object v11, v0, LVb/a;->l:Lac/g;

    iput-object v12, v0, LVb/a;->m:LJb/T;

    iput-object v13, v0, LVb/a;->n:LRb/b;

    move-object/from16 v1, p14

    iput-object v1, v0, LVb/a;->o:LMb/B;

    move-object/from16 v1, p15

    iput-object v1, v0, LVb/a;->p:LGb/o;

    iput-object v15, v0, LVb/a;->q:LSb/c;

    move-object/from16 v1, p17

    move-object/from16 v2, p18

    iput-object v1, v0, LVb/a;->r:LZb/c;

    iput-object v2, v0, LVb/a;->s:LSb/l;

    move-object/from16 v1, p19

    move-object/from16 v2, p20

    iput-object v1, v0, LVb/a;->t:LVb/b;

    iput-object v2, v0, LVb/a;->u:Lzc/l;

    move-object/from16 v1, p21

    move-object/from16 v2, p22

    iput-object v1, v0, LVb/a;->v:LSb/t;

    iput-object v2, v0, LVb/a;->w:Lac/g;

    move-object/from16 v1, v16

    iput-object v1, v0, LVb/a;->x:Lpc/e;

    return-void
.end method
