.class public abstract LSb/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lhc/c;

.field public static final b:[Lhc/c;

.field public static final c:Lt9/c;

.field public static final d:LSb/r;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    new-instance v0, Lhc/c;

    const-string v1, "org.jspecify.nullness"

    invoke-direct {v0, v1}, Lhc/c;-><init>(Ljava/lang/String;)V

    new-instance v1, Lhc/c;

    const-string v2, "org.jspecify.annotations"

    invoke-direct {v1, v2}, Lhc/c;-><init>(Ljava/lang/String;)V

    sput-object v1, LSb/q;->a:Lhc/c;

    new-instance v2, Lhc/c;

    const-string v3, "io.reactivex.rxjava3.annotations"

    invoke-direct {v2, v3}, Lhc/c;-><init>(Ljava/lang/String;)V

    new-instance v3, Lhc/c;

    const-string v4, "org.checkerframework.checker.nullness.compatqual"

    invoke-direct {v3, v4}, Lhc/c;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lhc/c;->a:Lhc/d;

    iget-object v4, v4, Lhc/d;->a:Ljava/lang/String;

    new-instance v5, Lhc/c;

    const-string v6, ".Nullable"

    invoke-static {v4, v6}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lhc/c;-><init>(Ljava/lang/String;)V

    new-instance v6, Lhc/c;

    const-string v7, ".NonNull"

    invoke-static {v4, v7}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Lhc/c;-><init>(Ljava/lang/String;)V

    filled-new-array {v5, v6}, [Lhc/c;

    move-result-object v4

    sput-object v4, LSb/q;->b:[Lhc/c;

    new-instance v4, Lt9/c;

    new-instance v5, Lhc/c;

    const-string v6, "org.jetbrains.annotations"

    invoke-direct {v5, v6}, Lhc/c;-><init>(Ljava/lang/String;)V

    sget-object v6, LSb/r;->d:LSb/r;

    new-instance v7, Ldb/j;

    invoke-direct {v7, v5, v6}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lhc/c;

    const-string v8, "androidx.annotation"

    invoke-direct {v5, v8}, Lhc/c;-><init>(Ljava/lang/String;)V

    new-instance v8, Ldb/j;

    invoke-direct {v8, v5, v6}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lhc/c;

    const-string v9, "android.support.annotation"

    invoke-direct {v5, v9}, Lhc/c;-><init>(Ljava/lang/String;)V

    new-instance v9, Ldb/j;

    invoke-direct {v9, v5, v6}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lhc/c;

    const-string v10, "android.annotation"

    invoke-direct {v5, v10}, Lhc/c;-><init>(Ljava/lang/String;)V

    new-instance v10, Ldb/j;

    invoke-direct {v10, v5, v6}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lhc/c;

    const-string v11, "com.android.annotations"

    invoke-direct {v5, v11}, Lhc/c;-><init>(Ljava/lang/String;)V

    new-instance v11, Ldb/j;

    invoke-direct {v11, v5, v6}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lhc/c;

    const-string v12, "org.eclipse.jdt.annotation"

    invoke-direct {v5, v12}, Lhc/c;-><init>(Ljava/lang/String;)V

    new-instance v12, Ldb/j;

    invoke-direct {v12, v5, v6}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lhc/c;

    const-string v13, "org.checkerframework.checker.nullness.qual"

    invoke-direct {v5, v13}, Lhc/c;-><init>(Ljava/lang/String;)V

    new-instance v13, Ldb/j;

    invoke-direct {v13, v5, v6}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v14, Ldb/j;

    invoke-direct {v14, v3, v6}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lhc/c;

    const-string v5, "javax.annotation"

    invoke-direct {v3, v5}, Lhc/c;-><init>(Ljava/lang/String;)V

    new-instance v15, Ldb/j;

    invoke-direct {v15, v3, v6}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lhc/c;

    const-string v5, "edu.umd.cs.findbugs.annotations"

    invoke-direct {v3, v5}, Lhc/c;-><init>(Ljava/lang/String;)V

    new-instance v5, Ldb/j;

    invoke-direct {v5, v3, v6}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lhc/c;

    move-object/from16 v24, v4

    const-string v4, "io.reactivex.annotations"

    invoke-direct {v3, v4}, Lhc/c;-><init>(Ljava/lang/String;)V

    new-instance v4, Ldb/j;

    invoke-direct {v4, v3, v6}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lhc/c;

    move-object/from16 v17, v4

    const-string v4, "androidx.annotation.RecentlyNullable"

    invoke-direct {v3, v4}, Lhc/c;-><init>(Ljava/lang/String;)V

    new-instance v4, LSb/r;

    move-object/from16 v16, v5

    sget-object v5, LSb/C;->WARN:LSb/C;

    move-object/from16 v18, v15

    const/4 v15, 0x4

    invoke-direct {v4, v5, v15}, LSb/r;-><init>(LSb/C;I)V

    new-instance v15, Ldb/j;

    invoke-direct {v15, v3, v4}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lhc/c;

    const-string v4, "androidx.annotation.RecentlyNonNull"

    invoke-direct {v3, v4}, Lhc/c;-><init>(Ljava/lang/String;)V

    new-instance v4, LSb/r;

    move-object/from16 v20, v15

    const/4 v15, 0x4

    invoke-direct {v4, v5, v15}, LSb/r;-><init>(LSb/C;I)V

    new-instance v15, Ldb/j;

    invoke-direct {v15, v3, v4}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lhc/c;

    const-string v4, "lombok"

    invoke-direct {v3, v4}, Lhc/c;-><init>(Ljava/lang/String;)V

    new-instance v4, Ldb/j;

    invoke-direct {v4, v3, v6}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, LSb/r;

    new-instance v6, Ldb/e;

    move-object/from16 v21, v15

    const/4 v15, 0x2

    move-object/from16 v22, v4

    const/4 v4, 0x1

    move-object/from16 v23, v14

    const/4 v14, 0x0

    invoke-direct {v6, v15, v4, v14}, Ldb/e;-><init>(III)V

    sget-object v4, LSb/C;->STRICT:LSb/C;

    invoke-direct {v3, v5, v6, v4}, LSb/r;-><init>(LSb/C;Ldb/e;LSb/C;)V

    new-instance v6, Ldb/j;

    invoke-direct {v6, v0, v3}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, LSb/r;

    new-instance v3, Ldb/e;

    move-object/from16 v25, v6

    const/4 v6, 0x1

    invoke-direct {v3, v15, v6, v14}, Ldb/e;-><init>(III)V

    invoke-direct {v0, v5, v3, v4}, LSb/r;-><init>(LSb/C;Ldb/e;LSb/C;)V

    new-instance v3, Ldb/j;

    invoke-direct {v3, v1, v0}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, LSb/r;

    new-instance v1, Ldb/e;

    const/16 v15, 0x8

    invoke-direct {v1, v6, v15, v14}, Ldb/e;-><init>(III)V

    invoke-direct {v0, v5, v1, v4}, LSb/r;-><init>(LSb/C;Ldb/e;LSb/C;)V

    new-instance v1, Ldb/j;

    invoke-direct {v1, v2, v0}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v14, v23

    move-object/from16 v2, v20

    move-object/from16 v4, v21

    const/4 v0, 0x4

    move-object/from16 v15, v18

    move-object/from16 v18, v2

    move-object/from16 v19, v4

    move-object/from16 v20, v22

    move-object/from16 v21, v25

    move-object/from16 v22, v3

    move-object/from16 v23, v1

    filled-new-array/range {v7 .. v23}, [Ldb/j;

    move-result-object v1

    invoke-static {v1}, Lfb/B;->k([Ldb/j;)Ljava/util/Map;

    move-result-object v1

    move-object/from16 v2, v24

    invoke-direct {v2, v1}, Lt9/c;-><init>(Ljava/util/Map;)V

    sput-object v2, LSb/q;->c:Lt9/c;

    new-instance v1, LSb/r;

    invoke-direct {v1, v5, v0}, LSb/r;-><init>(LSb/C;I)V

    sput-object v1, LSb/q;->d:LSb/r;

    return-void
.end method
