.class public final LHc/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/o;


# static fields
.field public static final a:LHc/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LHc/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LHc/d;->a:LHc/d;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
