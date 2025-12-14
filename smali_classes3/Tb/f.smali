.class public final LTb/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# static fields
.field public static final a:LTb/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LTb/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LTb/f;->a:LTb/f;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    sget-object p0, LTb/g;->g:[LAb/u;

    sget-object p0, LTb/c;->a:Lhc/f;

    new-instance v0, Lmc/x;

    const-string v1, "Deprecated in Java"

    invoke-direct {v0, v1}, Lmc/g;-><init>(Ljava/lang/Object;)V

    new-instance v1, Ldb/j;

    invoke-direct {v1, p0, v0}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Lfb/C;->h(Ldb/j;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
