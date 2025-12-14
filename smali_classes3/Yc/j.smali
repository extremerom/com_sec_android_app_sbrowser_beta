.class public abstract LYc/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:LQ6/i;

.field public static final c:LQ6/i;

.field public static final d:LQ6/i;

.field public static final e:LQ6/i;

.field public static final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "kotlinx.coroutines.semaphore.maxSpinCycles"

    const/16 v1, 0x64

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-static {v1, v0, v2, v2, v3}, LUc/a;->l(ILjava/lang/String;III)I

    move-result v0

    sput v0, LYc/j;->a:I

    new-instance v0, LQ6/i;

    const-string v1, "PERMIT"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LYc/j;->b:LQ6/i;

    new-instance v0, LQ6/i;

    const-string v1, "TAKEN"

    invoke-direct {v0, v1, v4}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LYc/j;->c:LQ6/i;

    new-instance v0, LQ6/i;

    const-string v1, "BROKEN"

    invoke-direct {v0, v1, v4}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LYc/j;->d:LQ6/i;

    new-instance v0, LQ6/i;

    const-string v1, "CANCELLED"

    invoke-direct {v0, v1, v4}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LYc/j;->e:LQ6/i;

    const-string v0, "kotlinx.coroutines.semaphore.segmentSize"

    const/16 v1, 0x10

    invoke-static {v1, v0, v2, v2, v3}, LUc/a;->l(ILjava/lang/String;III)I

    move-result v0

    sput v0, LYc/j;->f:I

    return-void
.end method
