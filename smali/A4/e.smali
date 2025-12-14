.class public final LA4/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:LE5/v;

.field public static volatile f:LA4/e;


# instance fields
.field public final a:Ldb/o;

.field public final b:Ldb/o;

.field public final c:Ldb/o;

.field public final d:Ldb/o;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LE5/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LE5/v;-><init>(I)V

    sput-object v0, LA4/e;->e:LE5/v;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LA4/d;->b:LA4/d;

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    iput-object v0, p0, LA4/e;->a:Ldb/o;

    sget-object v0, LA4/d;->c:LA4/d;

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    iput-object v0, p0, LA4/e;->b:Ldb/o;

    new-instance v0, LA4/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LA4/c;-><init>(LA4/e;I)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    iput-object v0, p0, LA4/e;->c:Ldb/o;

    new-instance v0, LA4/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LA4/c;-><init>(LA4/e;I)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    iput-object v0, p0, LA4/e;->d:Ldb/o;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/appfunctions/internal/AggregateAppFunctionInventory;
    .locals 0

    iget-object p0, p0, LA4/e;->c:Ldb/o;

    invoke-virtual {p0}, Ldb/o;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/appfunctions/internal/AggregateAppFunctionInventory;

    return-object p0
.end method

.method public final b()Lcom/google/android/appfunctions/internal/AggregateAppFunctionInvoker;
    .locals 0

    iget-object p0, p0, LA4/e;->d:Ldb/o;

    invoke-virtual {p0}, Ldb/o;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/appfunctions/internal/AggregateAppFunctionInvoker;

    return-object p0
.end method
