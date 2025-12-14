.class public abstract LA4/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ldb/o;

.field public static final b:Ldb/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, LA4/d;->d:LA4/d;

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    sput-object v0, LA4/f;->a:Ldb/o;

    sget-object v0, LA4/d;->e:LA4/d;

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    sput-object v0, LA4/f;->b:Ldb/o;

    return-void
.end method

.method public static a()Lib/h;
    .locals 1

    sget-object v0, LA4/f;->a:Ldb/o;

    invoke-virtual {v0}, Ldb/o;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lib/h;

    return-object v0
.end method

.method public static b()Lib/h;
    .locals 1

    sget-object v0, LA4/f;->b:Ldb/o;

    invoke-virtual {v0}, Ldb/o;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lib/h;

    return-object v0
.end method
